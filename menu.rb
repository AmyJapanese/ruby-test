require 'find'

def list_ruby_files(directory)
  ruby_files = []
  Find.find(directory) do |path|
    ruby_files << path if path =~ /.*\.rb$/
  end
  ruby_files
end

def display_menu(files)
  puts "Select a Ruby program to open or type 'Quit' to exit:"
  files.each_with_index do |file, index|
    puts "#{index + 1}. #{file}"
  end
end

def open_selected_file(files)
  loop do
    print "Enter the number of the file to open or 'Quit' to exit: "
    choice = gets.chomp
    return false if choice.downcase == 'quit'
    
    choice = choice.to_i
    if choice.between?(1, files.length)
      system("ruby #{files[choice - 1]}")
      print "終了しますか？（y/n）: "
      exit_choice = gets.chomp.downcase
      return false if exit_choice == 'y'
    else
      puts "Invalid choice. Please try again."
    end
  end
  true
end

directory = File.dirname(__FILE__)

loop do
  ruby_files = list_ruby_files(directory)
  if ruby_files.empty?
    puts "No Ruby files found in the directory."
    break
  else
    display_menu(ruby_files)
    break unless open_selected_file(ruby_files)
  end
end
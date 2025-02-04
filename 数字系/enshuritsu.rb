# 円の半径を入力
print "円の半径を入力してください: "
radius = gets.chomp.to_f

#直径の計算
diameter = radius * 2

# 円周率πを使った計算
area_pi = "π#{radius**2}"
circumference_pi = "π#{diameter}"

# 円周率を3.14としたおおよその計算
area_314 = 3.14 * radius**2
circumference_314 = 2 * 3.14 * radius

# 結果を表示
puts "円の直径: #{diameter}"
puts "円の面積 (π使用): #{area_pi}"
puts "円の面積 (π≈3.14): #{area_314}"
puts "円周の長さ (π使用): #{circumference_pi}"
puts "円周の長さ (π≈3.14): #{circumference_314}"
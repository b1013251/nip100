# 18. 各行を3コラム目の数値の降順にソート
# 各行を3コラム目の数値の逆順で整列せよ
# （注意: 各行の内容は変更せずに並び替えよ）．
# 確認にはsortコマンドを用いよ
# （この問題はコマンドで実行した時の結果と合わなくてもよい）．

# sort hightemp.txt -k 3

input = $stdin.readlines

input.each do |line| 
  line = line.split("\t")
end

# a[2]は気温だ
input.sort{|a,b| -(a[2]<=>a[2])}.each do |line|
  puts line
end

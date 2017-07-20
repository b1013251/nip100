# 19. 各行の1コラム目の文字列の出現頻度を求め，出現頻度の高い順に並べる
# 各行の1列目の文字列の出現頻度を求め，その高い順に並べて表示せよ．
# 確認にはcut, uniq, sortコマンドを用いよ．

# cut -f 1 hightemp.txt | sort | uniq -c | sort -r

input = $stdin.readlines
dict  = {}

input.each do |line| 
  line = line.split("\t")[0]
  if !dict.include?(line)
    dict[line] = 1
  else
    dict[line] += 1
  end
end

# valueでソート
dict.sort{|(k1,v1),(k2,v2)| -(v1<=>v2)}.each do |k,v|
  puts v.to_s + "\t"  + k
end

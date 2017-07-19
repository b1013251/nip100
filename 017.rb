# 17. １列目の文字列の異なり
# 1列目の文字列の種類（異なる文字列の集合）を求めよ．
# 確認にはsort, uniqコマンドを用いよ．
# sort hightemp.txt | uniq

require 'set'

input = $stdin.readlines
set = Set.new []

input.each do |line|
  set.add line.split("\t")[0]
end

set.sort.each do |line|
  puts line
end


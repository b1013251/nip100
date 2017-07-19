# 14. 先頭からN行を出力
# 自然数Nをコマンドライン引数などの手段で受け取り，
# 入力のうち先頭のN行だけを表示せよ．確認にはheadコマンドを用いよ．

ARGV[0] = 10 if !ARGV[0]

input = $stdin.readlines

input.each.with_index do |line,i|
  break if i >= ARGV[0].to_i
  puts line
end

# 15. 末尾のN行を出力
# 自然数Nをコマンドライン引数などの手段で受け取り，
# 入力のうち末尾のN行だけを表示せよ．確認にはtailコマンドを用いよ．


ARGV[0] = 10 if !ARGV[0]

input = $stdin.readlines

length = input.count
input.each.with_index do |line,i|
  next if length-i > ARGV[0].to_i
  puts line
end


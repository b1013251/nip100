# 15. 末尾のN行を出力
# 自然数Nをコマンドライン引数などの手段で受け取り，
# 入力のうち末尾のN行だけを表示せよ．確認にはtailコマンドを用いよ．


ARGV[0] = 10 if !ARGV[0]

File.open('col1-2.txt', 'r') do |f|
  length = f.count
  f.rewind
  f.each_line.with_index do |line,i|
    next if length-i > ARGV[0].to_i
    puts line
  end
end

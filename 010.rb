# 10. 行数のカウント
# 行数をカウントせよ．確認にはwcコマンドを用いよ．

File.open('hightemp.txt', 'r') do |f|
  puts f.count
end

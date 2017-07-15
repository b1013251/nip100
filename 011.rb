# 11. タブをスペースに置換
# タブ1文字につきスペース1文字に置換せよ．
# 確認にはsedコマンド，trコマンド，もしくはexpandコマンドを用いよ．


File.open('hightemp.txt', 'r') do |f|
  f.each_line do |line|
    puts line.gsub(/\t/, " ")
  end
end

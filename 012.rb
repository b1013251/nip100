# 12. 1列目をcol1.txtに，2列目をcol2.txtに保存
# 各行の1列目だけを抜き出したものをcol1.txtに，
# 2列目だけを抜き出したものをcol2.txtとしてファイルに保存せよ．
# 確認にはcutコマンドを用いよ．
# 
# cut hightemp.txt -f 1
File.open('col1.txt', 'w') do |c1|
  File.open('hightemp.txt', 'r') do |f|
    f.each_line do |line|
      c1.puts line.split("\t")[0]
    end
  end
end

# cut hightemp.txt -f 1
File.open('col2.txt', 'w') do |c2|
  File.open('hightemp.txt', 'r') do |f|
    f.each_line do |line|
      c2.puts line.split("\t")[1]
    end
  end
end



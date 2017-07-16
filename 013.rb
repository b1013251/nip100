# 13. col1.txtとcol2.txtをマージ
# 12で作ったcol1.txtとcol2.txtを結合し，
# 元のファイルの1列目と2列目をタブ区切りで並べたテキストファイルを作成せよ．
# 確認にはpasteコマンドを用いよ．

# paste col1.txt col2.txt
File.open('col1-2.txt', 'w') do |f|
  c1 = File.open('col1.txt', 'r')
  c2 = File.open('col2.txt', 'r') 

  while !c1.eof and !c2.eof do
    f.puts c1.readline.chomp + "\t" + c2.readline.chomp
  end

  c1.close
  c2.close
end

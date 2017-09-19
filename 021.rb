# 21. カテゴリ名を含む行を抽出
# 記事中でカテゴリ名を宣言している行を抽出せよ．

File.open("igirisu.txt", "r") do |file|
  file.each_line do |line|
    if line.match?("Category")
      puts line
    end
  end
end
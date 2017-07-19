# 16. ファイルをN分割する
# 自然数Nをコマンドライン引数などの手段で受け取り，
# 入力のファイルを行単位でN分割せよ．
# 同様の処理をsplitコマンドで実現せよ．

# コメント：
# あまりが出た場合は、最後に全部のせた。
# split -n N では 24を5で割ると[4,5,5,5]になった。

ARGV[0] = "2" if !ARGV[0]
split = ARGV[0].to_i

input = $stdin.readlines

length     = input.count
length_per = length/split
last       = length%split

split.times do |i|
  File.open("out016_"+(i+1).to_s+".txt", "w") do |f|
    length_per.times do |j|
      f.puts input[length_per*i+j]
    end
    
    # 最後にあまりをのせる
    if i==split-1 and last!=0
      last.times do |j|
        f.puts input[split*length_per+j]
      end
    end

  end
end


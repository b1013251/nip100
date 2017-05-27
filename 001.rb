# 01. 「パタトクカシーー」
# 「パタトクカシーー」という
# 文字列の1,3,5,7文字目を取り出して連結した文字列を得よ．

s = "パタトクカシーー"
builder = ""
s.each_char.with_index do |s, i|
    builder = builder +  s if i % 2 == 0
end
puts builder
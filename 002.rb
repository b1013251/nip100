# 02. 「パトカー」＋「タクシー」＝「パタトクカシーー」
# 「パトカー」＋「タクシー」の文字を先頭から交互に
# 連結して文字列「パタトクカシーー」を得よ．

p = "パトカー"
t = "タクシー"

def join_str(s1, s2)
    # len(s1) == len(s2)
    builder = ""
    s1.chars.zip(s2.chars).each do |s1, s2|
        builder += s1 + s2
    end
    builder
end

puts join_str(p, t)
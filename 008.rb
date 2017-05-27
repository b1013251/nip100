# 08. 暗号文
# 与えられた文字列の各文字を，以下の仕様で変換する関数cipherを実装せよ．

# 英小文字ならば(219 - 文字コード)の文字に置換
# その他の文字はそのまま出力
# この関数を用い，英語のメッセージを暗号化・復号化せよ．

def cipher(str)
    return str.chars.map do |s|
        if s.match(/[a-z]/)
            s = (219 - s.ord).chr
        else
            s = s
        end
    end.join("")
end

str = "abcdefABCDEF"
a =  cipher(str)
b = cipher(a)

puts a
puts b
# coding: utf-8

title = "見出し"
body = "本文"
0.upto(9) do |idx|
  Article.create(title: "#{title} #{idx}",
    body: "#{body}" * idx
  )
end

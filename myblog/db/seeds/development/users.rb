# coding: utf-8

names = %w(Taro Jiro hana John Mike Sophy Bill Alex Mary Tom)
0.upto(19) do |idx|
  User.create(user_name: "#{names[idx]} #{idx}",
    email: "#{names[idx]}@example.com",
    birthday: "1981-12-01",
    gender: [0, 0, 1][idx % 3],
    administrator: (idx == 0)
  )
end

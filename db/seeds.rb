User.create!(
  name: 'Qoosim',
  email: 'ayinde.abdulghaniyy@gmail.com',
  password: 'password',
  password_confirmation: 'password'
)

User.create!(
  name: 'Rory',
  email: 'rory.hellier@googlemail.com',
  password: 'password',
  password_confirmation: 'password'
)


28.times do |n|
  name = Faker::Name.name
  email = "example-#{n+1}@test.com"
  password = 'password'
  User.create!(
    name: name,
    email: email,
    password: password,
    password_confirmation: password
  )
end

30.times do |n|
  title = Faker::Lorem.sentence(word_count: 4)
  body = Faker::Lorem.paragraph(sentence_count: 5)
  user_id = rand(0..30)
  Post.create(
    title: title,
    body: body,
    user_id: user_id
  )
end
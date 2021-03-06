# create users
5.times do
  User.create!(
    email: Faker::Internet.email,
    password: Faker::Internet.password(8)
 )
end

users = User.all

#create topics
7.times do
  Topic.create!(
    user: users.sample,
    title: Faker::Lorem.word
 )
end

topics=Topic.all

#create bookmarks
20.times do
  Bookmark.create!(
    topic: topics.sample,
    user: users.sample,
    url: Faker::Internet.url
 )
end

bookmarks=Bookmark.all

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Topic.count} topics created"
puts "#{Bookmark.count} bookmarks created"

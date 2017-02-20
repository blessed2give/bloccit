require 'random_data'

# Create Posts
50.times do
# #1
  Post.create!(
# #2
    title:  RandomData.random_sentence,
    body:   RandomData.random_paragraph
  )
end
posts = Post.all

# Create Comments
# #3
100.times do
  Comment.create!(
# #4
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end
p = posts.find_or_create_by!(title: "This is my title!", body: "This is my body. It has a couple of sentences!")
p.comments.find_or_create_by!(body: "This is my comment body. It has a couple of sentences too!")
puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"

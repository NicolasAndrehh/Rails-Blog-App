# Create users
first_user = User.create(name: 'Tom', photo: 'user_image.webp', bio: 'Teacher from Mexico.', email: 'tom@gmail.com', password: '123456', password_confirmation: '123456')
second_user = User.create(name: 'Lilly', photo: 'user_image2.webp', bio: 'Student from Mexico.', email: 'lilly@gmail.com', password: '123456', password_confirmation: '123456')
third_user = User.create(name: 'John', photo: 'user_image.webp', bio: 'Student from Mexico.', email: 'john@gmail.com', password: '123456', password_confirmation: '123456')
fourth_user = User.create(name: 'Anna', photo: 'user_image3.webp', bio: 'Student from Mexico.', email: 'anna@gmail.com', password: '123456', password_confirmation: '123456')

# Create posts
first_post = Post.create(author_id: first_user.id, title: 'Hello', text: 'This is my first post')
second_post = Post.create(author_id: first_user.id, title: 'Hello', text: 'This is my second post')
third_post = Post.create(author_id: first_user.id, title: 'Hello', text: 'This is my third post')
fourth_post = Post.create(author_id: first_user.id, title: 'Hello', text: 'This is my fourth post')

# Create comments
Comment.create(post_id: first_post.id, author_id: second_user.id, text: 'Hi Tom!' )
Comment.create(post_id: first_post.id, author_id: first_user.id, text: 'Hi Lilly!' )
Comment.create(post_id: first_post.id, author_id: second_user.id, text: 'Hi Tom!' )
Comment.create(post_id: first_post.id, author_id: first_user.id, text: 'Hi Lilly!' )
Comment.create(post_id: first_post.id, author_id: second_user.id, text: 'Hi Tom!' )
Comment.create(post_id: first_post.id, author_id: first_user.id, text: 'Hi Lilly!' )

# Create likes
Like.create(post_id: first_post.id, author_id: first_user.id)
Like.create(post_id: first_post.id, author_id: second_user.id)
Like.create(post_id: first_post.id, author_id: third_user.id)
Like.create(post_id: first_post.id, author_id: fourth_user.id)

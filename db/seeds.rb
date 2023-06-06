# Create users
first_user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')
second_user = User.create(name: 'Lilly', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Poland.')

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
Like.create(post_id: first_post.id, user_id: first_user.id)
Like.create(post_id: first_post.id, user_id: second_user.id)

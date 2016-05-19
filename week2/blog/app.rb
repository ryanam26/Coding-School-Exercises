require_relative('lib/blog')
require_relative('lib/post')
require_relative('lib/sponsored_post')

post = Post.new("This is my first post".upcase, Time.now, "Some cool content")
post1 = SponsoredPost.new("This is my second post".upcase, Time.now, "More cool content")
post2 = Post.new("This is my third post".upcase, Time.now, "Great cool content")
post3 = Post.new("This is my forth post".upcase, Time.now, "Excellent cool content")
post4 = Post.new("This is my fifth post".upcase, Time.now, "Beautiful cool content")
post5 = Post.new("This is my sixth post".upcase, Time.now, "Nice cool content")

# Print one post

blog = Blog.new(3)

blog.add_post(post)
blog.add_post(post1)
blog.add_post(post2)
blog.add_post(post3)
blog.add_post(post4)
blog.add_post(post5)

blog.publish_blog
sleep(5)
blog.go_to_next

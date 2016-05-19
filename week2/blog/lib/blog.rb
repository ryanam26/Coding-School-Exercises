# Attributes
	# Hold a collection of different posts (List of posts)

# Actions (Methods)
	# Publish(aka print) all of the posts

require 'colorize'


class Blog
	
	def initialize (post_per_page)
		@posts = []
		@current_page = 1
		@post_per_page = post_per_page
		
	end

	def add_post(post)
		@posts.push(post)
	end

	def publish_blog

		first = (@current_page - 1) * @post_per_page
		last = first + (@post_per_page - 1)
		
		@posts[first..last].each do | post |
			post.display_post
		end

		last_page = (@posts.length / @post_per_page).ceil
		(1..last_page).each do |num|
		if num == @current_page
			print "#{num} ".colorize(:blue)
		else
			print "#{num} "
		end

		end
		puts ""
	end

	

	def go_to_next 
		@current_page += 1
		publish_blog
	end

end
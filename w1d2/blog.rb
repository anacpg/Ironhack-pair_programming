require 'Date'

class Post

	attr_reader :title, :date, :text

	def initialize (title, date, text)
		@title = title
		@date = date
		@text = text
	end 

end


class Blog

	def initialize
		@posts = []
	end

	def add_post(post)
		@posts << post
	end

	def sorting
		@posts.sort_by{ |post| post.date }
	end

	def publish_front_page
		puts @posts
	end

end


first_blog = Blog.new

post1 = Post.new("Post1", Date.new(2016,8,9)  , "TextTextTextTextTextTextTextTextTextTextTextTextText")
post2 = Post.new("Post2", Date.new(2016,8,1)  , "Text2Text2Text2Text2Text2Text2TextTextTextTextTextTextText")

first_blog.add_post(post1)
first_blog.add_post(post2)

first_blog.publish_front_page





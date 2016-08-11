require 'colorize'


class Post

	attr_reader :title, :date, :text, :sponsored

	def initialize (title, date, text, sponsored = false)
		@title = title
		@date = date
		@text = text
		@sponsored = sponsored

	end

end


class Blog

	def initialize
		@posts = []
		@page = 1
	end

	def add_post(post)
		@posts << post
	end

	def sorting
		@posts = @posts.sort_by { |post| post.date }
	end

	def publish_front_page

		init_index = 
		end_index = 
		posts_to_show = posts[init_index, 3]

		print_post()

		//

		set_new_page
		publish_front_page


	end

	def get_num_pages
		pages = @posts.length/3
		if @posts.length%3 != 0
			pages += 1
		end
	end

	def set_new_page
		puts "\nprev or next:"
		new_page = gets.chomp()

		case new_page
		when "prev"	
			if @page != 1
				@page -= 1
			else
				puts "No previous page"
				set_new_page
			end
			
		when "next"
			if @page != get_num_pages
				@page += 1
			else
				puts "No next page"
				set_new_page
			end
			
		else
			puts "Incorrect text"
			set_new_page
		end

	end

	def print_post

		num_pages = get_num_pages
		since = (@page-1) * 3
		to = since + 3
		if (to >= @posts.length)
			to = @posts.length
		end

		for i in since...to
				
			if @posts[i].sponsored
				puts "******Post #{@posts[i].title}*******"
			else
				puts "Post #{@posts[i].title}"
			end
			puts "**********************"
			puts "Post #{@posts[i].text}"
			puts "----------------------"
		end
	end

end


first_blog = Blog.new

post1 = Post.new("Enero", 20160109, "eeeeeeeeeeeeeeeeeeeeeeeeeeee")
post2 = Post.new("Febrero", 20160209, "ffffffffffffffffffffffffffff")
post3 = Post.new("Marzo", 20160309, "mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm")
post4 = Post.new("Abril", 20160409, "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
post5 = Post.new("Mayo", 20160509, "mamamamamamamamamamamamamamamama", true)


first_blog.add_post(post4)
first_blog.add_post(post1)
first_blog.add_post(post3)
first_blog.add_post(post2)
first_blog.add_post(post5)

# first_blog.publish_front_page

first_blog.sorting
first_blog.publish_front_page

atom_feed do |feed|
	feed.title "Super hero posts"
	feed.updated @posts.maximum(:updated_at) 

  @posts.each do |post|
		feed.entry post do |entry|
			entry.title post.title
			entry.content post.body
		end  	
	end
end	

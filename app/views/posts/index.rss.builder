xml.instruct! :xml, version: "1.0"
xml.rss version: "2.0" do
	xml.channel do
		xml.title "super hero posts"
		xml.description "from bad man to super man"
		xml.link posts_url

		@posts.each do |post|
			xml.item do
				xml.title post.title
				xml.description post.body
				xml.pubDate post.created_at
				xml.link post_url(post)
				xml.guid post_url(post)
			end	
		end
	end	
end

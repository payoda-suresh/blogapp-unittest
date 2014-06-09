namespace :name do
	desc "splits User.name into first name and last name"
		
	task split: :environment do
		users = User.all
		users.each do |user|
			Rails.logger.info "Updating name for #{user.id} : #{user.email}, #{user.name}"
			user.first_name = user.name.split(" ").first
			user.last_name = user.name.split(" ",2).last
			if user.save
				Rails.logger.info "Updated successfully"
			end	
		end
	end
end

class UserMailer < ActionMailer::Base
  default from: "notifications@example.com"

	def welcome_email(user)
		@user = user
		@url = "http://localhost:3000/"
		attachments.inline['cherry-fruit.jpg'] = File.read(Rails.root.join('app', 'assets', 'images', 'cherry-fruit.jpg'))
		mail(to: @user.email,subject: "welcome to my awesome site")
	end
end

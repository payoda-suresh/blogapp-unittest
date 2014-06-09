Given(/^there's a post titled "(.*?)" with "(.*?)" body$/) do |title, body|
  @post = FactoryGirl.create(:post, title: title, body: body)
end

When(/^I am on the homepage$/) do
  visit root_path
end

Then(/^I should see the "(.*?)" post$/) do |title|
  @post = Post.find_by_title(title)

  expect(page).to have_content(@post.title)
  expect(page).to have_content(@post.body)
end

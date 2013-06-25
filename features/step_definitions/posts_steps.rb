When(/^I create a post called "(.*?)" with the body$/) do |title, body|
  visit new_post_path
  fill_in "Title", with: title
  fill_in "Body", with: body
  click_button "Create post"
end

Then(/^I should see "(.*?)"$/) do |arg1|
  expect(page).to have_content arg1
end

Given(/^I have the following posts$/) do |table|
  table.hashes.each do |post|
    Post.create! post
  end
end

When(/^I browse through the posts$/) do
  visit posts_path
end

Then(/^I should see a header with "(.*?)"$/) do |arg1|
  expect(page).to have_selector("h2", text: arg1)
end

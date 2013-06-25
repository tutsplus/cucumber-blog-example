When(/^I create a post called "(.*?)" with the body$/) do |title, body|
  visit new_post_path
  fill_in "Title", with: title
  fill_in "Body", with: body
  click_button "Create post"
end

Then(/^I should see "(.*?)"$/) do |arg1|
  expect(page).to have_content arg1
end

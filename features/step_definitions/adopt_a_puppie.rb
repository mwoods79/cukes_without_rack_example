Given(/^I am on the adopt a puppie page$/) do
  visit("/")
end

When(/^I follow "(.*?)"$/) do |link|
  first('form').click_button(link)
end

When(/^I fill out the form$/) do
    fill_in "Name", with: "Cheezy"
    fill_in "Address", with: "123 Main St"
    fill_in "Email", with: "cheezy@foo.com"
    select "Check", from: "Pay type"
    click_button("Place Order")
end

Then(/^I should be a happy puppie owner$/) do
    page.has_content? "Thank you for adopting a puppy!"
end

# frozen_string_literal: true
Then('User must see the google forms page') do
  expect(page).to have_selector(:xpath, "//div[contains(text(), 'PRIME IT AUTOMATED TEST')]")
end

Then('User must set option to TRUE') do
  page.find(:xpath, "//span[text()='TRUE']").click
end

Then('User must fill in text input with {string}') do |argument|
  page.find(:xpath, "//input[@type='text']").set(argument)
  sleep 10
end
# frozen_string_literal: true

When('User visit the google form page') do
  @gf = GoogleFormPage.new if @gf.nil?
  @gf.load
end

Then('User must see the google forms page') do
  #expect(page).to have_selector(:xpath, "//div[contains(text(), 'PRIME IT AUTOMATED TEST')]")
  @gf.wait_until_cabecalho_visible(wait: EXPLICIT_WAIT_TIMEOUT)
  expect(@gf).to have_cabecalho
end

Then('User must set option to TRUE') do
  #page.find(:xpath, "//span[text()='TRUE']").click
  @gf.wait_until_radio_true_visible(wait: EXPLICIT_WAIT_TIMEOUT)
  @gf.radio_true.hover
  @gf.radio_true.click
end

Then('User must fill in text input with {string}') do |argument|
  #page.find(:xpath, "(//input[@type='text'])[1]").set(argument)
  @gf.input_question_2.send_keys(argument)
end

And('User must check value {string}') do |value|
  page.find(:xpath, "//div[@data-answer-value='#{value}']").click
end

And('User set date as {string}') do |date|
  dateArray = date.split("/")

  index = 2
  dateArray.each do |value|
    page.find(:xpath, "(//input[@type='text'])[#{index}]").set(value)
    index = index + 1
  end
end

And('User click to submit form') do
  #page.find(:xpath, "//span[text()='Enviar']").click
  @gf.button_submit.click
end

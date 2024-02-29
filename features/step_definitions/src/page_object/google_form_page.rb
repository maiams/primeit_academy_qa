# frozen_string_literal: true

class GoogleFormPage < SitePrism::Page
  set_url "https://forms.gle/n3tMSHrF2EGEg3Gd8"

  element :cabecalho, :xpath, "//div[contains(text(), 'PRIME IT AUTOMATED TEST')]"
  element :radio_true, :xpath, "//span[text()='TRUE']"
  element :radio_false, :xpath, "//span[text()='FALSE']"
  element :input_question_2, :xpath, "(//input[@type='text'])[1]"
  element :button_submit, :xpath, "//span[text()='Enviar']"


end

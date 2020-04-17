# frozen_string_literal: true

class Validacoes
  include Capybara::DSL
  include RSpec::Matchers

  def validar_texto
    titulo_card = "(//div[@class='progress-bar-thumb'])[1]//..//parent::div[@class='schedule-inner schedule-live']//div//h2"
    hora_card = "(//div[@class='progress-bar-thumb'])[1]//..//parent::div[@class='schedule-inner schedule-live']//div//p"

    @clone_titulo_card = find(:xpath, titulo_card).text.clone
    @clone_hora_card = find(:xpath, hora_card).text.clone

    puts('Título no card é: ' + @clone_titulo_card)
    puts('Horário no card é: ' + @clone_hora_card)
    page.execute_script('arguments[0].click();', find(:xpath, "(//div[@class='progress-bar-thumb'])[1]"))

    titulo = "//div[@class='sky-modal-program-title']//h2"
    expect(page).to have_xpath(titulo, wait: 5)
    @titulo_modal = find(:xpath, titulo).text
    puts('O título no modal é: ' + @titulo_modal)

    horario = "//div[@class='sky-modal-program-date-time']//span"
    @hora_modal = find(:xpath, horario).text
    puts('O horário no modal é: ' + @hora_modal)

    expect(@titulo_modal).to eq(@clone_titulo_card)
    expect(@hora_modal).to eq(@clone_hora_card)
  end

  def validar_presenca_texto
    assert_no_selector('.loading-spinner', wait: 50)
  end
end


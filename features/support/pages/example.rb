class Acessos
    include Capybara::DSL

def acessar_site
    visit "http://www.sky.com.br"
    Capybara.page.driver.browser.manage.window.maximize
  end
end
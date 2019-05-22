#Ulitizar as gems informadas
require 'cucumber'
require 'rspec'
require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'pry-byebug'


#Configurar o driver do seleniu,
Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

#Setar a configuração do driver como padrão
Capybara.default_driver = :selenium

#Timeout padrão da execução
Capybara.default_max_wait_time = 10

#Maximizar a tela do nacegador
Capybara.page.driver.browser.manage.window.maximize
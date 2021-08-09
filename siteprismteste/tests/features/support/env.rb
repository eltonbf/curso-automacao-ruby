require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require_relative 'page_helper.rb'

BROWSER = ENV['BROWSER']

AMBIENTE = ENV['AMBIENTE'] # =homolog

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{AMBIENTE}.yml") # =homolog.yml

World(PageObjects)

Capybara.register_driver :selenium do |app|

    if BROWSER.eql?('chrome')
        Capybara::Selenium::Driver.new(app, :browser => :chrome)
    elsif BROWSER.eql?('firefox')
        Capybara::Selenium::Driver.new(app, :browser => :firefox, :marionette => true)
    elsif BROWSER.eql?('ie')
        Capybara::Selenium::Driver.new(app, :browser => :internet_explorer)
    elsif BROWSER.eql?('safari')
        Capybara::Selenium::Driver.new(app, :browser => :SAFARI)
    elsif BROWSER.eql?('poltergeist')
        options = { js_errors: false }
        CAPYBARA::POLTERGEIST::DRIVER.new(app, options)
    end
end


Capybara.configure do |config|
    config.default_driver = :selenium #selenium_chrome #selenium_chrome_headless
    config.app_host = CONFIG['url_padrao']
    CONFIG['user']
    config.default_max_wait_time = 5
end
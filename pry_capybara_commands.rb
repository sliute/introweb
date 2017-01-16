require 'capybara/dsl'
require 'selenium-webdriver'
include Capybara::DSL
Capybara.default_driver = :selenium
visit('http://capybaraworkout.herokuapp.com/')
click_link 'Start Workout!'
click_button 'Click me!'
click_button 'Click on me too!'
check('first')
check('second')
within('section .fourth') do
  click_button "We're the same...but in different sections"
end
click_button "left"
find('button.left').click
find('button#right').click
fill_in 'name', with: 'Bob'
fill_in 'age', with: '12'
fill_in 'gender', with: 'not well defined'
fill_in 'hometown', with: 'gerusalem'
fill_in 'favourite beverage', with: 'incacola'
click_button "Submit"

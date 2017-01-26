# encoding: UTF-8

require_relative 'actionwords'
World(Actionwords)

When /^I start the coffee machine using language "(.*)"$/ do |lang|
  i_start_the_coffee_machine_using_language_lang(lang)
end

When /^I shutdown the coffee machine$/ do
  i_shutdown_the_coffee_machine
end

Then /^message "(.*)" should be displayed$/ do |message|
  message_message_should_be_displayed(message)
end

Then /^coffee should be served$/ do
  coffee_should_be_served
end

Then /^coffee should not be served$/ do
  coffee_should_not_be_served
end

When /^I take a coffee$/ do
  i_take_a_coffee
end

When /^I empty the coffee grounds$/ do
  i_empty_the_coffee_grounds
end

When /^I fill the beans tank$/ do
  i_fill_the_beans_tank
end

When /^I fill the water tank$/ do
  i_fill_the_water_tank
end

Given /^I take "(.*)" coffees$/ do |coffee_number|
  i_take_coffee_number_coffees(coffee_number)
end

Given /^the coffee machine is started$/ do
  the_coffee_machine_is_started
end

Given /^I handle everything except the water tank$/ do
  i_handle_everything_except_the_water_tank
end

Given /^I handle water tank$/ do
  i_handle_water_tank
end

Given /^I handle beans$/ do
  i_handle_beans
end

Given /^I handle coffee grounds$/ do
  i_handle_coffee_grounds
end

Given /^I handle everything except the beans$/ do
  i_handle_everything_except_the_beans
end

Given /^I handle everything except the grounds$/ do
  i_handle_everything_except_the_grounds
end

Then /^displayed message is:$/ do |__free_text|
  displayed_message_is(__free_text)
end

When /^I switch to settings mode$/ do
  i_switch_to_settings_mode
end

Then /^settings should be:$/ do |__datatable|
  settings_should_be(__datatable)
end

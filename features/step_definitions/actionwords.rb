# encoding: UTF-8
require_relative '../../src/coffee_machine'
require 'test/unit/assertions'

World(Test::Unit::Assertions)

module Actionwords
  def sut
    @sut ||= CoffeeMachine.new
  end

  def handled_tanks
    @handled_tanks ||= []
  end

  def i_start_the_coffee_machine_using_language_lang(lang = 'en')
    sut.start(lang)
  end

  def i_shutdown_the_coffee_machine
    sut.stop
  end

  def message_message_should_be_displayed(message)
    assert_equal(message, sut.message)
  end

  def coffee_should_be_served
    assert(sut.coffee_served)
  end

  def coffee_should_not_be_served
    refute(sut.coffee_served)
  end

  def i_take_a_coffee
    sut.take_coffee
  end

  def i_empty_the_coffee_grounds
    sut.empty_grounds
  end

  def i_fill_the_beans_tank
    sut.fill_beans
  end

  def i_fill_the_water_tank
    sut.fill_tank
  end

  def i_take_coffee_number_coffees(coffee_number = 10)
    coffee_number = coffee_number.to_i
    while (coffee_number > 0)
      i_take_a_coffee
      coffee_number = coffee_number - 1

      i_fill_the_water_tank if handled_tanks.include?(:water)
      i_fill_the_beans_tank if handled_tanks.include?(:beans)
      i_empty_the_coffee_grounds if handled_tanks.include?(:grounds)
    end
  end

  def the_coffee_machine_is_started
    i_start_the_coffee_machine_using_language_lang
  end

  def i_handle_everything_except_the_water_tank
    i_handle_coffee_grounds
    i_handle_beans
  end

  def i_handle_water_tank
    handled_tanks << :water
  end

  def i_handle_beans
    handled_tanks << :beans
  end

  def i_handle_coffee_grounds
    handled_tanks << :grounds
  end

  def i_handle_everything_except_the_beans
    i_handle_water_tank
    i_handle_coffee_grounds
  end

  def i_handle_everything_except_the_grounds
    i_handle_water_tank
    i_handle_beans
  end

  def displayed_message_is(__free_text = "")
    message_message_should_be_displayed(__free_text)
  end

  def i_switch_to_settings_mode
    sut.show_settings
  end

  def settings_should_be(__datatable = "||")
    assert_equal(sut.get_settings.map {|k, v| [k.to_s, v.to_s]}, __datatable.raw)
  end
end
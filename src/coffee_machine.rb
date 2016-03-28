class CoffeeMachine
  attr_reader :coffee_served

  def initialize
    @started = false

    # Yes it's a magic machine :)
    fill_tank()
    fill_beans()
    empty_grounds()

    @time_to_descale = 500
    @coffee_served = false
  end

  def start(lang = 'en')
    @started = true
    @lang = lang.to_sym
  end

  def stop
    @started = false
  end

  def messages
    i18n = {
      en: {
        tank: 'Fill tank',
        beans: 'Fill beans',
        grounds: 'Empty grounds',
        ready: 'Ready'
      },
      fr: {
        tank: 'Remplir reservoir',
        beans: 'Ajouter grains',
        grounds: 'Vider marc',
        ready: 'Pret'
      }
    }
    return i18n[@lang]
  end

  def message
    return '' unless @started

    return messages[:tank] if @tank_content <= 10
    return messages[:beans] if @beans_content < 3
    return messages[:grounds] if @grounds_content >= 30
    return messages[:ready]
  end

  def take_coffee
    if (@tank_content == 0 || @beans_content == 0)
      @coffee_served = false
    else
      @coffee_served = true
      @tank_content -= 1
      @beans_content -= 1
      @grounds_content += 1
      @time_to_descale -= 1
    end
  end

  def fill_tank
    @tank_content = 60
  end

  def fill_beans
    @beans_content = 40
  end

  def empty_grounds
    @grounds_content = 0
  end

  def maintenance_light_blinks?
    return @time_to_descale <= 0
  end

  def set_water_hardness(hardness)
    values = {'A' => 500, 'B' => 250, 'C' => 100}
    hardness = 'A' unless values.keys.include?(hardness)
    @time_to_descale = values[hardness]
  end
end
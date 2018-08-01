require_relative "company_name.rb"
require_relative "exeption.rb"
require_relative "info.rb"

class Wagon
  include CompanyName
  include Exeption

  attr_reader :number, :total_volume, :taken_volume
  def initialize(number, type, volume)
    @number = number
    @type = type
    @total_volume = volume
    @taken_volume = 0
    validate!
  end

  def take_volume(volume)
    @taken_volume += infact_load(volume)
  end

  def free_volume
    @total_volume - @taken_volume
  end

  def infact_load(volume)
    return 0 if volume < 0
    volume > free_volume ? free_volume : volume
  end

  protected
  NUMBER_FORMAT = /^([\w]{3}-*[\w]{2})$/
  def validate!
    raise "Номер Вагона не может быть пустым" if number.nil?
    raise "Номер Вагона не сответствует формату" if number !~ NUMBER_FORMAT
  end
end

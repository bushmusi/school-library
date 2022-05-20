require './nameable'
require 'securerandom'

class Person < Nameable
  attr_accessor :name, :age

  attr_reader :id

  def initialize(age, name = 'unknown', parent_permission: true)
    super()
    @id = Random.rand(0..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
    @id = SecureRandom.uuid
  end

  def of_age
    @age >= 18
  end

  def can_use_services
    if of_age || parent_permission
      true
    else
      false
    end
  end

  def correct_name
    @name
  end
end

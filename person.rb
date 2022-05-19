class Person
  attr_accessor  :name, :age
  attr_reader :id
  def initialize(name="unknown", age, parent_permission=true)
    @id = Random.rand(0..1000)
    @name =name
    @age = age
    @parent_permission=parent_permission
  end

  def is_of_age
    if @age >= 18
      true
    else 
      false 
    end
  end

  def can_use_services
    if is_of_age || parent_permission
      true
    else
      false
    end
  end
end
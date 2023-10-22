class Teacher < Person
  def initialize(specialization, *arguments)
    @specialization = specialization
    super(*arguments)
  end

  def can_use_services?
    true
  end
end

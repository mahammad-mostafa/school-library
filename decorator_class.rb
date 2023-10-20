class Decorator < Nameable
  def initialize(nameable)
    @nameable = nameable
    super()
  end
end

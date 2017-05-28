class Guests

  def initialize(first_name, last_name, money)
    @first_name = first_name
    @last_name = last_name
    @money = money
  end

  def get_first_name()
    return @first_name
  end

  def get_last_name()
    return @last_name
  end

  def get_full_name()
    return "#{@first_name} #{@last_name}"
  end

  def get_money()
    return @money
  end

end
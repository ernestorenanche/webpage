require 'date'

class Date
  def past?
    self < DateTime.now
  end
end

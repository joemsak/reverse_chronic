require "reverse_chronic/version"

# Proposes to accomplish the reverse tasks of the existing rubygem `chronic`
# http://rubygems.org/gems/chronic
# But we're not there yet
module ReverseChronic
  class << self
    # Converts a Date or Time object into a human-friendly string
    #
    # == Paramaters:
    # time::
    #   A Date or Time object
    #
    # == Returns:
    #   A string representing a human way of saying the date, such as `today`, `yesterday`, and `Sunday, Feb 5, 2012`
    #
    # == TODO:
    #   More human friendly calculations
    def humanize(time)
      if time.to_date == Date.today
        'today'
      elsif Time.now.to_date - 1 == time.to_date
        'yesterday'
      else
        time.strftime('%A, %b%e, %Y')
      end
    end
  end
end

require "reverse_chronic/version"

module ReverseChronic
  class << self
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

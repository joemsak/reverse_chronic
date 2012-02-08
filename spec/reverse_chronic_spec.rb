require 'active_support/all'
require './lib/reverse_chronic'

describe ReverseChronic do
  it "says now is 'today'" do
    ReverseChronic.humanize(Time.now).should == 'today'
  end

  it "says today is 'today'" do
    ReverseChronic.humanize(Date.today).should == 'today'
  end

  it "says yesterday 'yesterday'" do
    ReverseChronic.humanize(Time.now.yesterday).should == 'yesterday'
  end

  it "calls 2 or more days ago by name" do
    time = Time.parse('2012-02-05')
    ReverseChronic.humanize(time).should == 'Sunday, Feb 5, 2012'
  end
end

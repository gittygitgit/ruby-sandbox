#!/bin/ruby

class Months
  @@timesNumberOfCalled=0

  JANUARY=1
  FEBRUARY=2
  MARCH=3

  def Months.numberOf
    @@timesNumberOfCalled+=1
    12
  end

  def Months.timesNumberOfCalled
    @@timesNumberOfCalled
  end
end

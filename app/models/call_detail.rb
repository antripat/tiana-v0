class CallDetail < ApplicationRecord
def self.search(temp)
  if (temp[:start_time]) && (temp[:end_time])
    where(["start_time>= :start_time AND end_time<= :end_time",
    {start_time: temp[:start_time], end_time: temp[:end_time]}])    
  else
    all()
  end
end
end

module ApplicationHelper
  def min_conversion(minutes)
    if (minutes % 60).zero?
      hours = minutes / 60
      return "#{hours}h"
    elsif minutes > 60
      hours = minutes / 60
      rest = minutes % 60
      return "#{hours}h#{rest}"
    else
      "#{minutes} min"
    end
  end
end

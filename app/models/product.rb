class Product < ApplicationRecord
  def is_discounted
    if price < 10
      puts "true"
    else
      puts "false"
    end
  end
end

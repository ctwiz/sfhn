class User < ActiveRecord::Base
  attr_accessible :email, :signup_date, :last_name, :first_name, :quantity
end

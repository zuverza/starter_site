class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :password, :password_confirmation

    acts_as_authentic do |c|
    	c.login_field = :email
	end

end

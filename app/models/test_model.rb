class TestModel < ActiveRecord::Base
  attr_accessible :age, :birthday, :city, :country, :name
end

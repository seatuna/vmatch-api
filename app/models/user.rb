#
class User < ActiveRecord::Base
  include Authentication
  has_many :players
end

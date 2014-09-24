# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  fname      :string(255)
#  lname      :string(255)
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base
def name
  "#{ self.fname } #{ self.lname}"
end
def as_json(options)
 super(except: [:password_digest, :fname, :lname]).merge({ name:self.name})
end
has_secure_password
end

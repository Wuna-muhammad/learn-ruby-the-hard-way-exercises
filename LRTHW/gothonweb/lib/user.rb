class User < ActiveRecord::Base
  # Chcecks if password and password confiramtion are equal.
  has_secure_password
  # CREATE Migration
end

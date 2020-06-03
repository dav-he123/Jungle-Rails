class User < ActiveRecord::Base
  has_secure_password
def create
  if user = User..authenticate_with_credentials(email, password)
    if user.authenticate(password)
      user
    else
      nil
    end
  else
    nil
end
end
end

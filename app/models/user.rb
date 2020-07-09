class User < ApplicationRecord
  def create_session
    return SecureRandom.hex;
  end
end

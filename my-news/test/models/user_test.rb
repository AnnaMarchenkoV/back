require "test_helper"

class UserTest < ActiveSupport::TestCase
  fixtures :users

  def test_user

    first_user = User.new :login => users(:user1).login, 
       :email => users(:user1).email
   
    assert first_user.save, "User not saved"

    first_user_copy = User.find(first_user.id)

    assert_equal first_user.login, first_user_copy.login, "User copy has not been created"

    first_user.login = "New String"

    assert_not_equal first_user.login, first_user_copy.login, "User has not been changed"

    assert first_user.save, "User not saved"

    assert first_user.destroy, "User already exist"

 end

end
require "test_helper"

class UserTest < ActiveSupport::TestCase
  fixtures :users

  def test_user_save

    user_one = User.new :login => users(:user1).login, 
       :email => users(:user1).email
   
    assert user_one.save, "User not saved"

 end

  def test_user_email_requared

    user = User.new :login => users(:user1).login
   
    assert_not user.save, "Saved the user without a email"

 end

  def test_user_email_length

    user_new = User.new :login => users(:user2).login, 
       :email => users(:user2).email
 
    assert_not user_new.save, "Length user email less than 3"

end

end
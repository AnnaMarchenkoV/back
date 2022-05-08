require "test_helper"

class PostTest < ActiveSupport::TestCase
 
  def test_post_save

   user = users(:user1)
    post  = user.posts.new
    post.title = "title"

    assert_not post.save, "saved product wothout body"

    post.body = "body"
    
    assert post.save, "Post not saved"

 end

end

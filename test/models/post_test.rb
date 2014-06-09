require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
    post = Post.count
    assert_same(2,post)
    post_new = Post.find_by_title('rr')
    assert_nil post_new
    post_title = Post.find_by_title('MyString')
    assert_not_nil post_title
  end

  test "should not save post without title" do 
  	post = Post.new
  	assert_not post.save
  end	
end

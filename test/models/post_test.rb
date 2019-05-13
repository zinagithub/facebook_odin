require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
  	@post = Post.new(body: "content1", user_id: 1)
  end

  test 'Valid content' do
  	assert @post.valid?
  end	
  test 'Invalid post without body' do
  	@post.body = nil
  	refute @post.valid?
  	assert_not_nil @post.errors[:body], 'no validation error for body present'
  end	
  test 'Invalid post without user'	 do
  	@post.user_id = nil
  	refute @post.valid?
  	assert_not_nil @post.errors[:user_id], 'no validation error for user present'
  end	
end

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  fixtures :posts

  def test_simple_fixture
    post = posts(:simple)
    assert_equal "Title01", post.title
    assert_equal "Hello world!", post.body
  end



end

require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
  fixtures :posts

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:posts)
  end

  test "should not save post without title" do
    post = Post.new
    post.body = "Sample"
    assert_not post.save
  end


  test "should save post" do
    post = Post.new
    post.title = "Title"
    post.body = "Sample"
    assert post.save
  end

  test "should create posts" do
    assert_difference('Post.count') do
      post :create, post: {title: 'Title', body: 'content'}
    end
    assert_redirected_to post_path(assigns(:post))
  end


  test "should get 1 page" do
    get(:show, {'id' => 2})
    assert_response :success
    assert_select "h1", "HEAD1"
  end


end

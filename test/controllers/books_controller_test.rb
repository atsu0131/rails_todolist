require 'test_helper'

class BooksControllerTest < ActionDispatch::IntegrationTest
  def index
    @books = Book.all
  end

  test "should get index" do
    get books_index_url
    assert_response :success
  end

end

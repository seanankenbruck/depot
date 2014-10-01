require 'test_helper'

class StoreControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select '#columns #side a', minimum: 4 #looks for element named contained in element with id=side contained in element with id=columns and verifies there are a minimum of 4 such elements
    assert_select '#main .entry', 3 #verifies that there are 3 elements with a class name of entry inside main
    assert_select 'h3', 'Programming Ruby 1.9' #verifies there is an h3 element with the title of the Ruby book we had entered
    assert_select '.price', /\$[,\d]+\.\d\d/ #verifies price is formatted correctly
  end

end

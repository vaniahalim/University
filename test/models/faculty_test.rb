require "test_helper"

class FacultyTest < ActiveSupport::TestCase
  # Matchers
  should belong_to(:department)
  should have_many(:assignments)
  should have_many(:courses).through(:assignments)



  # Context
  context "Given context" do
    setup do 
      # build the testing context here...
      create_departments
      create_faculties
    end

    teardown do
      destroy_departments
      destroy_faculties
    end

    # with that testing context, write your tests...
    should "order alphabetically"


    end 
    

  end
end

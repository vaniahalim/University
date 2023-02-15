require "test_helper"

class DepartmentTest < ActiveSupport::TestCase
  # Matchers
  should have_many(:faculties)
  should have_many(:courses).through(:faculties)

  should validate_presence_of(:name)
  should validate_presence_of(:unit_prefix)
  should validate_uniqueness_of(:unit_prefix)

  # validation format
  should allow_value(12).for(:unit_prefix)
  should allow_value(92).for(:unit_prefix)
  should_not allow_value(0).for(:unit_prefix)
  should_not allow_value(922).for(:unit_prefix)


  # Context
  context "Given context" do
    setup do 
      create_departments
    end

    should "show that all factories are properly created" do
      assert_equal "Information Systems", @is.name
      assert_equal "Computer Science", @cs.name
      assert_equal "76", @english.unit_prefix
      assert @business.active
      deny @soc.active
    end

  end
end
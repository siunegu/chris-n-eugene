# == Schema Information
#
# Table name: activities
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  cost        :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

require 'test_helper'

class ActivityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

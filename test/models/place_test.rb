# == Schema Information
#
# Table name: places
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  country     :string(255)
#  description :text
#  languages   :string(255)
#  timezone    :string(255)
#  region_id   :integer
#  created_at  :datetime
#  updated_at  :datetime
#

require 'test_helper'

class PlaceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

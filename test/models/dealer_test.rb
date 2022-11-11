# == Schema Information
#
# Table name: dealers
#
#  id          :bigint           not null, primary key
#  name        :string
#  description :text
#  address     :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'test_helper'

class DealerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

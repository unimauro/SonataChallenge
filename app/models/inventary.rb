# == Schema Information
#
# Table name: inventaries
#
#  id         :bigint           not null, primary key
#  name       :string
#  car_id     :bigint           not null
#  dealer_id  :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Inventary < ApplicationRecord
  belongs_to :car
  belongs_to :dealer
end

# == Schema Information
#
# Table name: associations
#
#  id                 :integer          not null, primary key
#  association_name   :string
#  delegate_name      :string
#  prefecture_type_id :string
#  tel1               :string
#  tel2               :string
#  tel3               :string
#  email              :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'test_helper'

class AssociationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

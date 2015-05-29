# == Schema Information
#
# Table name: event_sites
#
#  id                   :integer          not null, primary key
#  event_site_name      :string
#  prefecture_type_id   :string
#  near_station         :string
#  access_route         :string
#  host_comment         :string
#  carpark_type_id      :string
#  capacity             :string
#  degrees_of_latitude  :string
#  degrees_of_longitude :string
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

require 'test_helper'

class EventSiteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

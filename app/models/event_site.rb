class EventSite < ActiveRecord::Base
  extend ActiveHash::Associations::ActiveRecordExtensions
  include ActiveModel::Validations
  belongs_to_active_hash :carpark_type

  validates :event_site_name, presence: true, :length => {maximum: 100}
  validates :prefecture_type_id, presence: true, :length => {is: 2}
  validates :near_station, presence: true, :length => {maximum: 15}
  validates :host_comment, :length => {maximum: 300}
  validates :carpark_type_id, presence: true, :length => {is: 1}
  validates :capacity, presence: true, :length => {maximum: 5}
  validates :degrees_of_latitude, format: { with: /[0-9]{1,3}\.[0-9]+/ }
  validates :degrees_of_longitude, format: { with: /[0-9]{1,3}\.[0-9]+/ }
  def carpark_type_name
    CarparkType::NAME[self.carpark_type]
  end
end

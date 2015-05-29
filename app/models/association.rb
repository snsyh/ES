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

class Association < ActiveRecord::Base
  extend ActiveHash::Associations::ActiveRecordExtensions
  include ActiveModel::Validations
  belongs_to_active_hash :prefecture_type

  validates :association_name, presence: true, :length => {maximum: 50}
  validates :delegate_name, presence: true, :length => {maximum: 30}
  validates :prefecture_type_id, presence: true, format: {with: /[0-9]{1,2}/}
  validates_with TelValidator
  validates :email, presence: true
  validates_with EmailValidator

  def region_name(prefecture_type)
    RegionArea.where(code: prefecture_type[:region_code])[0]
  end

  def prefecture_type_name
    PrefectureType::NAME[self.prefecture_type_id]
  end

end

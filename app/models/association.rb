class Association < ActiveRecord::Base
  extend ActiveHash::Associations::ActiveRecordExtensions
  include ActiveModel::Validations
  belongs_to_active_hash :prefecture_type

  validates :association_name, presence: true, :length => {maximum: 50}
  validates :delegate_name, presence: true, :length => {maximum: 20}
  validates :prefecture_type_id, presence: true, :length => {is: 2}
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

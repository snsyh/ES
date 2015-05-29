class RegionArea < ActiveHash::Base
  include ActiveHash::Enum
  
  self.data = [
    {code: '01', name: '北海道'},
    {code: '02', name: '北東北'},
    {code: '03', name: '南東北'},
    {code: '04', name: '関東'},
    {code: '05', name: '信越'},
    {code: '06', name: '北陸'},
    {code: '07', name: '中部'},
    {code: '08', name: '関西'},
    {code: '09', name: '中国'},
    {code: '10', name: '四国'},
    {code: '11', name: '九州'},
    {code: '12', name: '沖縄'}
  ]

  enum_accessor :region_area
end
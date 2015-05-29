class CarparkType < ActiveHash::Base
  include ActiveHash::Enum
  
  self.data = [
    {code: '0', name: 'なし' },
    {code: '1', name: 'あり(無料)' },
    {code: '2', name: 'あり(有料)' },
  ]

  enum_accessor :carpark_type
end
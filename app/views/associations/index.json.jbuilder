json.array!(@associations) do |association|
  json.extract! association, :id, :association_name, :delegate_name, :prefecture_type_id, :tel1, :tel2, :tel3, :email
  json.url association_url(association, format: :json)
end

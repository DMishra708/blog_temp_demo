json.array!(@recepies) do |recepy|
  json.extract! recepy, :id
  json.url recepy_url(recepy, format: :json)
end

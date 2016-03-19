json.array!(@providers) do |provider|
  json.extract! provider, :id, :company, :agent, :cellphone, :fax, :email, :website, :isActive, :payType
  json.url provider_url(provider, format: :json)
end

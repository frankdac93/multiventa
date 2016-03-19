json.array!(@agents) do |agent|
  json.extract! agent, :id, :name, :firstName, :lastName, :cellphone, :email, :isActive
  json.url agent_url(agent, format: :json)
end

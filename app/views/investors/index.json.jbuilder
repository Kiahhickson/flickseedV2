json.array!(@investors) do |investor|
  json.extract! investor, :id, :name, :company_name, :email_address, :password_digest, :website, :title, :profile_picture, :investor_id
  json.url investor_url(investor, format: :json)
end

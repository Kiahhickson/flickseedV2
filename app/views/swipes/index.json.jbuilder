json.array!(@swipes) do |swipe|
  json.extract! swipe, :id, :founder_id, :investor_id, :favourite
  json.url swipe_url(swipe, format: :json)
end

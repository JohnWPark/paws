json.array!(@requests) do |request|
  json.extract! request, :id, :pet_name, :description, :care_instructions, :range
  json.url request_url(request, format: :json)
end

#something with paperclip?

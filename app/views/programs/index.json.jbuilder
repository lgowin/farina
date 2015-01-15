json.array!(@programs) do |program|
  json.extract! program, :id, :program_name, :program_notes
  json.url program_url(program, format: :json)
end

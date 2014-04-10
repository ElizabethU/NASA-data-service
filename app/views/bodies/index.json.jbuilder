json.bodies @bodies do |body|
  json.extract! body, :name, :years
end
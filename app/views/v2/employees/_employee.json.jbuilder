json.id employee.id
json.name employee.full_name
json.birthday employee.birthdate
json.email employee.email
json.say_yo "yo"
json.addresses employee.addresses do |address|
  json.street address.street
  json.city address.city
  json.state address.state
  json.zip address.zip
end

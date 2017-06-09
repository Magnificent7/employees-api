json.id employee.id
json.first_name employee.first_name
json.last_name employee.last_name
json.birthdate employee.birthdate
json.email employee.email
json.ssn employee.ssn
json.addresses employee.addresses do |address|
  json.street address.street
  json.city address.city
  json.state address.state
  json.zip address.zip
end

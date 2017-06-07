json.id employee.id
json.name employee.full_name
json.birthday employee.birthdate
json.email employee.email
json.ssn employee.ssn
json.addresses employee.addresses do |address|
  if address.zip.length > 5
    json.street address.street
    json.city address.city
    json.state address.state
    json.zip address.zip
  end
end

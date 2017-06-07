json.array! @employees.each do |purple_hippo|
  json.partial! 'employee.json.jbuilder', employee: purple_hippo
end
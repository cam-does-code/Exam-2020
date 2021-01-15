json.key_format! :camelize
json.array! @people do |person|
    json.extract! person, :person_i_d, :firstname, :lastname
end
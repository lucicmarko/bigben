json.data do
  json.partial! 'student', collection: @students, as: :student
end

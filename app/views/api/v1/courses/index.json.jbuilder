json.data do
  json.partial! 'course', collection: @courses, as: :course
end

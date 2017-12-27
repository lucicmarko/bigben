json.data do
  json.partial! 'student', student: @student

  json.links do
    json.self api_v1_student_url(@student)
  end
end

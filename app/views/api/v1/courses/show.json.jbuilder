json.data do
  json.partial! 'course', course: @course

  json.links do
    json.self api_v1_course_url(@course)
  end
end

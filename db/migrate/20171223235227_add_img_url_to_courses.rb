class AddImgUrlToCourses < ActiveRecord::Migration[5.1]
  def change
    add_column :courses, :img_url, :string
  end
end

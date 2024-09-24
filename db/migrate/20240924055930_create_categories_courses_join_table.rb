class CreateCategoriesCoursesJoinTable < ActiveRecord::Migration[7.2]
  def change
    create_join_table :courses, :categories
  end
end

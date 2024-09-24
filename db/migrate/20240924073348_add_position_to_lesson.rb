class AddPositionToLesson < ActiveRecord::Migration[7.2]
  def change
    add_column :lessons, :position, :integer
  end
end

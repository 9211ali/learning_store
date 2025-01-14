class AddMoreColsToCourses < ActiveRecord::Migration[7.2]
  def change
    add_column :courses, :paid, :boolean
    add_column :courses, :premium_description, :text
    add_column :courses, :stripe_price_id, :string
  end
end

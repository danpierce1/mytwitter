class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :Name
      t.string :Type
      t.string :Leader
      t.integer :Capacity

      t.timestamps
    end
  end
end

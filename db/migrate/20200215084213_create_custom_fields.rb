class CreateCustomFields < ActiveRecord::Migration[5.2]
  def change
    create_table :custom_fields do |t|
      t.string :column_type
      t.string :value
      t.string :name
      t.belongs_to :project
      
      t.timestamps
    end
  end
end

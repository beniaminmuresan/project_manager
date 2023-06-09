class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :body
      t.references :project, index: true

      t.timestamps
    end
  end
end

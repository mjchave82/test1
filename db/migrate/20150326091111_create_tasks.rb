class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.references :user_story, index: true
      t.string :task
      t.text :overview
      t.string :owner
      t.decimal :effort

      t.timestamps null: false
    end
    add_foreign_key :tasks, :user_stories
  end
end

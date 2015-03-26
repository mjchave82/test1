class CreateUserStories < ActiveRecord::Migration
  def change
    create_table :user_stories do |t|
      t.string :headline
      t.string :user
      t.string :capability
      t.string :reason
      t.text :comments
      t.text :acceptance_criteria
      t.decimal :size
      t.boolean :epic
      t.boolean :blocked
      t.string :priority
      t.string :status

      t.timestamps null: false
    end
  end
end

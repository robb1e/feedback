class CreateFeedbackGroups < ActiveRecord::Migration
  def change
    create_table :feedback_groups do |t|
      t.string :name, null: false
      t.string :slug, null: false
      t.timestamps
    end

    add_index :feedback_groups, :slug, unique: true
  end
end

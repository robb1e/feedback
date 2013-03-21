class CreateFeedbackCases < ActiveRecord::Migration
  def change
    create_table :feedback_cases do |t|
      t.string :name, null: false
      t.string :slug, null: false
      t.integer :feedback_group_id, null: false
      t.timestamps
    end
  end
end

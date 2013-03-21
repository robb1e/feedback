class CreateFeedbackScores < ActiveRecord::Migration
  def change
    create_table :feedback_scores do |t|
      t.integer :score, default: 0, null: false
      t.integer :feedback_case_id, null: false
      t.timestamps
    end
  end
end

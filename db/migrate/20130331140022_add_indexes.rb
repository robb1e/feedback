class AddIndexes < ActiveRecord::Migration
  def change
    add_index :feedback_cases, :feedback_group_id
    add_index :feedback_scores, :feedback_case_id
  end
end

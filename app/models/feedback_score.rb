class FeedbackScore < ActiveRecord::Base
  belongs_to :feedback_case, touch: true
  validates_presence_of :score
  attr_accessible :score, :feedback_case_id

  def css_class
    if score == 1
      "happy"
      elsif score == 0
        "meh"
      else
        "unhappy"
      end

  end

end

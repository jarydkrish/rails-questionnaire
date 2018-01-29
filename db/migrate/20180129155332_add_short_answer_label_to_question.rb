class AddShortAnswerLabelToQuestion < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :short_answer_label, :string
  end
end

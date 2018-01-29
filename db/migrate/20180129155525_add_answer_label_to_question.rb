class AddAnswerLabelToQuestion < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :answer_label, :string
  end
end

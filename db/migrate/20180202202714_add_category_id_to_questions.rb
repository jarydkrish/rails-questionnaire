class AddCategoryIdToQuestions < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :references, :categories
  end
end

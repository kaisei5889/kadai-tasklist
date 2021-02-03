class AddTitleTotasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :status, :string
    
    t.references :user, foreign_key: true
  end
end

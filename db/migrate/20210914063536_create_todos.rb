class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.string :list,limit:191,null:false 
      t.timestamps
    end
  end
end

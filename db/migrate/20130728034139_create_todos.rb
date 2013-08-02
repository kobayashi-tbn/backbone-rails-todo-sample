class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :content
      t.date :limit_on
      t.boolean :done

      t.timestamps
    end
  end
end

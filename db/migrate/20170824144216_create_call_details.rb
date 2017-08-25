class CreateCallDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :call_details do |t|
      t.integer :call_id
      t.string :word
      t.float :start_time
      t.float :end_time

      t.timestamps
    end
  end
end

class CreateAgents < ActiveRecord::Migration[5.1]
  def change
    create_table :agents do |t|
      t.integer :agent_id
      t.string :name
      t.references :CallDetail, foreign_key: true

      t.timestamps
    end
  end
end

class CreateNationals < ActiveRecord::Migration[7.2]
  def change
    create_table :nationals do |t|
      t.string :name
      t.string :spot
      t.string :food

      t.timestamps
    end
  end
end

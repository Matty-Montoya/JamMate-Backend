class CreateInstruments < ActiveRecord::Migration[5.1]
  def change
    create_table :instruments do |t|
      t.string :instrument
      t.string :genre

      t.timestamps
    end
  end
end

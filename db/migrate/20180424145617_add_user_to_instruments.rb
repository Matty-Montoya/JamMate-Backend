class AddUserToInstruments < ActiveRecord::Migration[5.1]
  def change
    add_reference :instruments, :user, foreign_key: true
  end
end

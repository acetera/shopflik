class CreateUserSignals < ActiveRecord::Migration
  def change
    create_table :user_signals do |t|
      t.integer :UID
      t.integer :PID
      t.string :action

      t.timestamps
    end
  end
end

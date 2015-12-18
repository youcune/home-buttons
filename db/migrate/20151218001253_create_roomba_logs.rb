class CreateRoombaLogs < ActiveRecord::Migration
  def change
    create_table :roomba_logs do |t|
      t.timestamp :cleaned_at, null: false
    end
  end
end

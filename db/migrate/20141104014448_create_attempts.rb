class CreateAttempts < ActiveRecord::Migration
  def change
    create_table :attempts do |t|
      t.string :number
      t.string :ip

      t.timestamps
    end
  end
end

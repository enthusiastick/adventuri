class CreateOutgoing < ActiveRecord::Migration
  def change
    create_table :outgoings do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :subject, null: false
      t.string :body, null: false

      t.timestamps
    end
  end
end

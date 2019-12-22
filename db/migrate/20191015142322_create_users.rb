class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email, limit: 100, null: false, index: {unique: true}
      t.timestamps
    end
  end
end

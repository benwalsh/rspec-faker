class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|

      t.timestamps
      t.string :email
    end
  end
end

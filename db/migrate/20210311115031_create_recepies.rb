class CreateRecepies < ActiveRecord::Migration
  def change
    create_table :recepies do |t|

      t.timestamps null: false
    end
  end
end

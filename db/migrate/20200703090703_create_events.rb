class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :body
      t.references :user, null: false, foreign_key: true
      t.datetime :date
      t.timestamps
    end
  end
end

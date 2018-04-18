class CreateStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :statuses do |t|
      t.text :body
      t.references :site, foreign_key: true

      t.timestamps
    end
  end
end

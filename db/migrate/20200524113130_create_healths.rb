class CreateHealths < ActiveRecord::Migration[5.0]
  def change
    create_table :healths do |t|
      t.text :title
      t.text :content
      t.timestamps
    end
  end
end

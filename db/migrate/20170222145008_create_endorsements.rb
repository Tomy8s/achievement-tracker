class CreateEndorsements < ActiveRecord::Migration[5.0]
  def change
    create_table :endorsements do |t|
      t.string :name
      t.text :comment
      t.references :achievement, foreign_key: true

      t.timestamps
    end
  end
end

class CreateAchievements < ActiveRecord::Migration[5.0]
  def change
    create_table :achievements do |t|
      t.string :name
      t.string :team
      t.string :headline
      t.text :description
      t.text :categories, array: true, default: []
      t.date :date

      t.timestamps
    end
  end
end

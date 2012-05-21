class CreateClicks < ActiveRecord::Migration
  def change
    create_table :clicks do |t|
      t.string :click_type
      t.date :date

      t.timestamps
    end
  end
end

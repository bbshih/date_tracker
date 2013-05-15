class CreateImportantDates < ActiveRecord::Migration
  def change
    create_table :important_dates do |t|
      t.date :date
      t.string :name

      t.timestamps
    end
  end
end

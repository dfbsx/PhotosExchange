class CreateDownloads < ActiveRecord::Migration[7.0]
  def change
    create_table :downloads do |t|
      t.datetime :date
      t.string :by_who

      t.timestamps
    end
  end
end

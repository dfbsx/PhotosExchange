class Desc < ActiveRecord::Migration[7.0]
  def change
    change_table :photos do |t|
      t.string :desc
    end
  end
end

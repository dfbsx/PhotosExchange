class Dependencies < ActiveRecord::Migration[7.0]
  def change
    change_table :photos do |t|
      t.belongs_to :user
    end
  end
end

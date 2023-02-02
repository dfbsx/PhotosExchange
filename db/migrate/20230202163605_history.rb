class History < ActiveRecord::Migration[7.0]
  def change
    change_table :downloads do |t|
      t.belongs_to :photo
    end
  end 
end

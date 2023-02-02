class Pic < ActiveRecord::Migration[7.0]
  def change
    def self.up
      change_table :photos do |t|
        t.has_attached_file :pic
      end
    end
  
    def self.down
      drop_attached_file :photos, :pic
    end
  end
end

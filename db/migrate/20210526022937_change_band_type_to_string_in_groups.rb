class ChangeBandTypeToStringInGroups < ActiveRecord::Migration[5.1]
  def change
    
      reversible do |dir|
        change_table :groups do |t|
          dir.up { t.change :band_type , :string }
          dir.down { t.change :band_type , :integer }
        end
      end 
  end 

end

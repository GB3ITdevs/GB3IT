class CreatePersonInfos < ActiveRecord::Migration
  def change
    create_table :person_infos do |t|

      t.timestamps
    end
  end
end

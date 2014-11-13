class CreateContactInfos < ActiveRecord::Migration
  def change
    create_table :contact_infos do |t|

      t.timestamps
    end
  end
end

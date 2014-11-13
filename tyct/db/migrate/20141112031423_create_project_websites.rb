class CreateProjectWebsites < ActiveRecord::Migration
  def change
    create_table :project_websites do |t|

      t.timestamps
    end
  end
end

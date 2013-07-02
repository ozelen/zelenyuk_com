class CreateSubsites < ActiveRecord::Migration
  def change
    create_table :subsites do |t|
      t.string :name
      t.string :subdomain
      t.text :description

      t.timestamps
    end
  end
end

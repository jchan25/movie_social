class CreateTemplates < ActiveRecord::Migration
  def change
    create_table :templates do |t|
      t.string :source

      t.timestamps

    end
  end
end

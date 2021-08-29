class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :sexe
      t.string :company
      t.string :poste
      t.text :bio

      t.timestamps
    end
  end
end

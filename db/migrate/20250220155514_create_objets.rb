class CreateObjets < ActiveRecord::Migration[8.0]
  def change
    create_table :objets do |t|
      t.string :titre
      t.text :description
      t.string :photo
      t.string :lieu
      t.date :date
      t.string :statut

      t.timestamps
    end
  end
end

class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :cpf
      t.string :birthdate
      t.integer :gender

      t.timestamps
    end
  end
end

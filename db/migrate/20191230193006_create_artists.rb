class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :user_name
      t.string :hometown
      t.string :password_digest
    end
  end
end

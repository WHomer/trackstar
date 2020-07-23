class CreateKudos < ActiveRecord::Migration[6.0]
  def change
    create_table :kudos do |t|
      t.string :reason
      t.string :message

      t.references :sent_by_user, index: true, foreign_key: {to_table: :users}
      t.references :sent_to_user, index: true, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end

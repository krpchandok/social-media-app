class CreateRelationships < ActiveRecord::Migration[8.1]
  def change
    create_table :relationships do |t|
      t.references :follower, null: false, foreign_key: true
      t.references :followed, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end

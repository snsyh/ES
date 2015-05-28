class CreateAssociations < ActiveRecord::Migration
  def change
    create_table :associations do |t|
      t.string :association_name
      t.string :delegate_name
      t.string :prefecture_type_id
      t.string :tel1
      t.string :tel2
      t.string :tel3
      t.string :email

      t.timestamps null: false
    end
  end
end

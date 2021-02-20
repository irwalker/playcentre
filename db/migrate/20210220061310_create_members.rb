class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.string :family_id, null: false
      t.string :attending_parent
      t.date :date_joined
      t.date :date_left
      t.text :comments
      t.string :parents
      t.string :parents_email
      t.string :alternate_contact
      t.string :mobile
      t.string :address
      t.date :first_aid_expiry
      t.string :duty_day
      t.boolean :staff
      t.boolean :life_member
    end
  end
end

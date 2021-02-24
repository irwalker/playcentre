class CreateChildren < ActiveRecord::Migration[6.0]
  def change
    create_table :children do |t|
      t.references :member
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.date :date_joined
      t.date :date_left
      t.date :birthday
      t.boolean :monday, default: false
      t.boolean :tuesday, default: false
      t.boolean :wednesday, default: false
      t.boolean :thursday, default: false
      t.boolean :friday, default: false
      t.string :gender
      t.string :ethnicity
      t.string :iwi
      t.string :language
      t.string :immunisations_received
      t.text :emergency_alternative_contact
      t.boolean :hepatitis_b, default: false
      t.boolean :polio, default: false
      t.boolean :diptheria, default: false
      t.boolean :tetanus, default: false
      t.boolean :pertussis, default: false
      t.boolean :hib, default: false
      t.boolean :measles, default: false
      t.boolean :rubella, default: false
      t.boolean :pneumococcal, default: false
      t.boolean :allows_photos, default: false
      t.boolean :excursions, default: false
      t.boolean :phone_list, default: false
      t.boolean :assoc_phone_list, default: false
      t.boolean :sunscreen, default: false
      t.boolean :insect_repellant, default: false
      t.boolean :arnica, default: false
    end
  end
end

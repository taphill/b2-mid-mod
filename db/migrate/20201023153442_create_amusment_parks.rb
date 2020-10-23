class CreateAmusmentParks < ActiveRecord::Migration[5.2]
  def change
    create_table :amusment_parks do |t|
      t.string :name
      t.float :admission_price
    end
  end
end

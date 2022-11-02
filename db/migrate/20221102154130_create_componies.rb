class CreateComponies < ActiveRecord::Migration[6.1]
  def change
     create_table :componies do |t| do
      t.string :company_name
      t.string :city
      t.string :state
  end
end

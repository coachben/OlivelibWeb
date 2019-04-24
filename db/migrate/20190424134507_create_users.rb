class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :stripe_id
      t.string :stripe_subscription_id
      t.string :card_last4
      t.integer :card_exp_month
      t.integer :card_exp_year
      t.string :card_type
      t.boolean :admin
      t.boolean :subscriber

      t.timestamps
    end
  end
end

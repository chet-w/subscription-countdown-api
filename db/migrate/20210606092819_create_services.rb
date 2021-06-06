# frozen_string_literal: true

class CreateServices < ActiveRecord::Migration[6.1]
  def change
    create_table :services do |t|
      t.string :name, null: false
      t.decimal :amount, null: false, default: 0, precision: 13, scale: 4
      t.string :occurrence, null: false, default: 'monthly'
      t.datetime :next_payment_due, null: false, default: DateTime.now
      # Service.create(name: "Apple Music", amount: 14.99, occurrence: "monthly", next_payment_due: 4.weeks.from_now)
      t.timestamps
    end
  end
end

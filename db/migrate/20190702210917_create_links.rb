# frozen_string_literal: true

class CreateLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :links do |t|
      t.string :short_link
      t.integer :visits, default: 0
      t.index :short_link, unique: true

      t.timestamps
    end
  end
end

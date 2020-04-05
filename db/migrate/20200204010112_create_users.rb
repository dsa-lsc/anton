# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users, id: :uuid do |t|
      t.string :name
      t.jsonb :secondary_emails, default: []
      t.string :discord_id
      t.string :pronouns
      t.boolean :over_18
      t.timestamp :active
      t.timestamp :accepts_coc
      t.jsonb :roles, default: []

      t.timestamps
    end
  end
end

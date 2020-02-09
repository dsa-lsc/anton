json.extract! user, :id, :name, :primary_email, :secondary_emails, :discord_id, :pronouns, :over_18, :active, :accepts_coc, :users_id, :roles, :created_at, :updated_at
json.url user_url(user, format: :json)

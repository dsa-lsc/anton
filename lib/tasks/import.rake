# frozen_string_literal: true

require "csv"

namespace :import do
  desc "TODO"
  task init: :environment do
    file = "lib/assets/untracked/dsa-libertarian-socialist-caucus.csv"
    attributes = [
      "Email address",
      "Nickname",
      "Group status",
      "Email status",
      "Email preference",
      "Posting permissions",
      "Join year",
      "Join month",
      "Join day",
      "Join hour",
      "Join minute",
      "Join second",
      "Time zone",
    ]
    ActiveRecord::Base.transaction do
      CSV.read(file, headers: true).drop(1).each do |row|
        User.find_or_initialize_by(
          name: row["Nickname"],
          email: row["Email address"],
        ).tap { |user| user.password = SecureRandom.urlsafe_base64; user.save! }
      end
    rescue => e
      debugger
    end
  end
end

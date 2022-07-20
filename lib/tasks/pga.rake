require 'faker'

namespace :db do
  namespace :players do
    desc 'Create Players'
    task create: :environment do
      2.times do
        Player.create!(
          first_name: Faker::Name.first_name,
          last_name: Faker::Name.last_name,
          allowance: Faker::Number.between(from: 0, to: 20)
        )
      end
    end
  end
end

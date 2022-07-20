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

  namespace :games do
    desc "Create Games"
    task create: :environment do
      game = Game.create!(
        tee_time: Faker::Time.between(from: DateTime.now, to: DateTime.now + 1.hour)
      )

      course = Course.first

      Player.first(2).each do |player|
        PlayersGame.create!(
          player: player,
          game: game,
          course: course
        )
      end
    end
  end

  namespace :holes do
    desc "Create Course Holes"
    task create: :environment do
      18.times do
        Hole.create!(
          title: Faker::Lorem.word,
          description: Faker::Lorem.sentence
        )
      end
    end
  end

  namespace :courses do
    desc "Create Courses for a players game"
    task create: :environment do
      course = Course.create!(
        title: Faker::Lorem.word,
        description: Faker::Lorem.sentence,
        active: true
      )

      order = 1
      Hole.all.each do |hole|
        CoursesHole.create!(
          course: course,
          hole: hole,
          order: order
        )
        order += 1
      end
    end
  end
end

require 'faker'

namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke

    10.times do |c|
      Category.create!(
        name: Faker::Lorem.words(1).join(" ").titleize)
    end

    10.times do |n|
      post = Post.create!(
        title: Faker::Lorem.sentence(rand(2..4)),
        content: Faker::Lorem.paragraphs(rand(2..8)).join(" "))
      post.categories << Category.find_by_id(rand(1..9))
    end
  end
end
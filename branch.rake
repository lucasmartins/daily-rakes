# Branch management
namespace :branch do
  desc "builds the client app"
  task :new do
    `git fetch origin`
    puts "Give it a name (leave it empty for autogen): "
    name = STDIN.gets.chomp
    name = fake_name if name.blank?
    name = branch_name(name)
    `git checkout -b #{name}`
    `git push -u origin #{name}`
  end
end

def fake_name
  [Forgery::Basic.color, Forgery::Address.street_name.split(" ").first, rand(100)].join("-").downcase
end

def branch_name(name)
  "#{branch_namespace}-#{name}"
end

def branch_namespace
  week_number = DateTime.now.cweek
  if week_number < 10
    week_number = "0#{week_number}"
  end
  "s#{week_number}"
end

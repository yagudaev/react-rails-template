namespace :assets do
  task precompile: :environment do
    `./build`
  end
end
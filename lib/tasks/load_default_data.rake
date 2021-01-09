desc 'Load rms default configuration data.'

namespace :rms do
  task :load_default_data => :environment do
  	Rake::Task["db:migrate"].invoke
    StoreConfiguration.create(id: 1, currency: "৳")
  end
end
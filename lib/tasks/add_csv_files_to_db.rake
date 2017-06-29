require 'rake'
require 'csv'
namespace :add_csv_files_to_db do
  desc "TODO"
	task :add_menu => :environment do
		CSV.foreach(File.join(Dir.pwd,'rabbit_menu.csv'), :headers => true) do |row|
		  Menu.create!(row.to_hash)
		end
	end
end
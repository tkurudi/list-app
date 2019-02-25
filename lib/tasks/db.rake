namespace :db do
    desc "Erase all tables"
    task :clear => :environment do
      conn = ActiveRecord::Base.connection
      tables = conn.tables
      tables.each do |table|
        puts "Deleting #{table}"
        puts "DROP TABLE #{table} CASCADE"
        conn.execute("DROP TABLE #{table} CASCADE")
      end
    end
  end
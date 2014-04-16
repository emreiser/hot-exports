# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130610104829) do

  create_table "downloads", :force => true do |t|
    t.column "name", :string
    t.column "size", :string
    t.column "run_id", :integer
    t.column "created_at", :datetime, :null => false
    t.column "updated_at", :datetime, :null => false
    t.column "url", :text
  end

  create_table "jobs", :force => true do |t|
    t.column "name", :string
    t.column "latmin", :float
    t.column "latmax", :float
    t.column "lonmin", :float
    t.column "lonmax", :float
    t.column "created_at", :datetime, :null => false
    t.column "updated_at", :datetime, :null => false
    t.column "description", :text
    t.column "region_id", :integer
    t.column "presetfile", :string
    t.column "visible", :boolean, :default => true
    t.column "user_id", :integer
  end

  create_table "jobs_uploads", :id => false, :force => true do |t|
    t.column "job_id", :integer
    t.column "upload_id", :integer
  end

# Could not dump table "raster_columns" because of following StandardError
#   Unknown type 'name' for column 'r_table_catalog' in table 'raster_columns' ["/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/postgis_adapter-0.8.1/lib/postgis_adapter/common_spatial_adapter.rb:52:in `block in table'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/postgis_adapter-0.8.1/lib/postgis_adapter/common_spatial_adapter.rb:50:in `each'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/postgis_adapter-0.8.1/lib/postgis_adapter/common_spatial_adapter.rb:50:in `table'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/activerecord-3.2.11/lib/active_record/schema_dumper.rb:79:in `block in tables'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/activerecord-3.2.11/lib/active_record/schema_dumper.rb:70:in `each'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/activerecord-3.2.11/lib/active_record/schema_dumper.rb:70:in `tables'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/activerecord-3.2.11/lib/active_record/schema_dumper.rb:27:in `dump'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/activerecord-3.2.11/lib/active_record/schema_dumper.rb:21:in `dump'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/activerecord-3.2.11/lib/active_record/railties/databases.rake:379:in `block (4 levels) in <top (required)>'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/activerecord-3.2.11/lib/active_record/railties/databases.rake:378:in `open'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/activerecord-3.2.11/lib/active_record/railties/databases.rake:378:in `block (3 levels) in <top (required)>'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/task.rb:240:in `call'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/task.rb:240:in `block in execute'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/task.rb:235:in `each'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/task.rb:235:in `execute'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/task.rb:179:in `block in invoke_with_call_chain'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/2.0.0/monitor.rb:211:in `mon_synchronize'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/task.rb:172:in `invoke_with_call_chain'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/task.rb:165:in `invoke'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/activerecord-3.2.11/lib/active_record/railties/databases.rake:187:in `block (2 levels) in <top (required)>'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/task.rb:240:in `call'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/task.rb:240:in `block in execute'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/task.rb:235:in `each'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/task.rb:235:in `execute'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/task.rb:179:in `block in invoke_with_call_chain'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/2.0.0/monitor.rb:211:in `mon_synchronize'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/task.rb:172:in `invoke_with_call_chain'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/task.rb:165:in `invoke'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/activerecord-3.2.11/lib/active_record/railties/databases.rake:182:in `block (2 levels) in <top (required)>'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/task.rb:240:in `call'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/task.rb:240:in `block in execute'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/task.rb:235:in `each'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/task.rb:235:in `execute'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/task.rb:179:in `block in invoke_with_call_chain'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/2.0.0/monitor.rb:211:in `mon_synchronize'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/task.rb:172:in `invoke_with_call_chain'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/task.rb:165:in `invoke'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/application.rb:150:in `invoke_task'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/application.rb:106:in `block (2 levels) in top_level'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/application.rb:106:in `each'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/application.rb:106:in `block in top_level'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/application.rb:115:in `run_with_threads'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/application.rb:100:in `top_level'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/application.rb:78:in `block in run'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/application.rb:176:in `standard_exception_handling'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/application.rb:75:in `run'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/bin/rake:33:in `<top (required)>'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/bin/rake:23:in `load'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/bin/rake:23:in `<main>'"]

# Could not dump table "raster_overviews" because of following StandardError
#   Unknown type 'name' for column 'o_table_catalog' in table 'raster_overviews' ["/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/postgis_adapter-0.8.1/lib/postgis_adapter/common_spatial_adapter.rb:52:in `block in table'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/postgis_adapter-0.8.1/lib/postgis_adapter/common_spatial_adapter.rb:50:in `each'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/postgis_adapter-0.8.1/lib/postgis_adapter/common_spatial_adapter.rb:50:in `table'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/activerecord-3.2.11/lib/active_record/schema_dumper.rb:79:in `block in tables'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/activerecord-3.2.11/lib/active_record/schema_dumper.rb:70:in `each'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/activerecord-3.2.11/lib/active_record/schema_dumper.rb:70:in `tables'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/activerecord-3.2.11/lib/active_record/schema_dumper.rb:27:in `dump'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/activerecord-3.2.11/lib/active_record/schema_dumper.rb:21:in `dump'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/activerecord-3.2.11/lib/active_record/railties/databases.rake:379:in `block (4 levels) in <top (required)>'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/activerecord-3.2.11/lib/active_record/railties/databases.rake:378:in `open'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/activerecord-3.2.11/lib/active_record/railties/databases.rake:378:in `block (3 levels) in <top (required)>'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/task.rb:240:in `call'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/task.rb:240:in `block in execute'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/task.rb:235:in `each'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/task.rb:235:in `execute'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/task.rb:179:in `block in invoke_with_call_chain'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/2.0.0/monitor.rb:211:in `mon_synchronize'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/task.rb:172:in `invoke_with_call_chain'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/task.rb:165:in `invoke'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/activerecord-3.2.11/lib/active_record/railties/databases.rake:187:in `block (2 levels) in <top (required)>'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/task.rb:240:in `call'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/task.rb:240:in `block in execute'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/task.rb:235:in `each'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/task.rb:235:in `execute'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/task.rb:179:in `block in invoke_with_call_chain'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/2.0.0/monitor.rb:211:in `mon_synchronize'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/task.rb:172:in `invoke_with_call_chain'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/task.rb:165:in `invoke'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/activerecord-3.2.11/lib/active_record/railties/databases.rake:182:in `block (2 levels) in <top (required)>'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/task.rb:240:in `call'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/task.rb:240:in `block in execute'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/task.rb:235:in `each'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/task.rb:235:in `execute'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/task.rb:179:in `block in invoke_with_call_chain'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/2.0.0/monitor.rb:211:in `mon_synchronize'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/task.rb:172:in `invoke_with_call_chain'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/task.rb:165:in `invoke'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/application.rb:150:in `invoke_task'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/application.rb:106:in `block (2 levels) in top_level'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/application.rb:106:in `each'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/application.rb:106:in `block in top_level'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/application.rb:115:in `run_with_threads'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/application.rb:100:in `top_level'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/application.rb:78:in `block in run'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/application.rb:176:in `standard_exception_handling'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/lib/rake/application.rb:75:in `run'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/lib/ruby/gems/2.0.0/gems/rake-10.2.2/bin/rake:33:in `<top (required)>'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/bin/rake:23:in `load'", "/Users/NDoiron/.rbenv/versions/2.0.0-p195/bin/rake:23:in `<main>'"]

  create_table "regions", :force => true do |t|
    t.column "internal_name", :string
    t.column "name", :string
    t.column "created_at", :datetime, :null => false
    t.column "updated_at", :datetime, :null => false
    t.column "polygon", :spatial, :limit => {:srid=>4326, :type=>"polygon"}
  end

  create_table "runs", :force => true do |t|
    t.column "state", :string
    t.column "comment", :string
    t.column "job_id", :integer
    t.column "created_at", :datetime, :null => false
    t.column "updated_at", :datetime, :null => false
    t.column "user_id", :integer
  end

  create_table "tags", :force => true do |t|
    t.column "key", :string
    t.column "geometrytype", :string
    t.column "default", :boolean
    t.column "job_id", :integer
    t.column "created_at", :datetime, :null => false
    t.column "updated_at", :datetime, :null => false
  end

  create_table "uploads", :force => true do |t|
    t.column "name", :string
    t.column "filename", :string
    t.column "uptype", :string
    t.column "visibility", :boolean
    t.column "created_at", :datetime, :null => false
    t.column "updated_at", :datetime, :null => false
    t.column "user_id", :integer
  end

  create_table "users", :force => true do |t|
    t.column "email", :string, :default => "", :null => false
    t.column "encrypted_password", :string, :default => "", :null => false
    t.column "confirmation_token", :string
    t.column "confirmed_at", :datetime
    t.column "confirmation_sent_at", :datetime
    t.column "unconfirmed_email", :string
    t.column "reset_password_token", :string
    t.column "reset_password_sent_at", :datetime
    t.column "failed_attempts", :integer, :default => 0
    t.column "unlock_token", :string
    t.column "locked_at", :datetime
    t.column "created_at", :datetime, :null => false
    t.column "updated_at", :datetime, :null => false
    t.column "admin", :boolean, :default => false
    t.column "suspended_at", :datetime
    t.column "suspension_reason", :string
  end

end

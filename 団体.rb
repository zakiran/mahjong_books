require 'active_record'
ActiveRecord::Base.establish_connection(
  "adapter"=>"sqlite3",
  "database"=>"db/development.sqlite3"
)
class Organization<ActiveRecord::Base
end

#Organization.create name: "日本プロ麻雀協会"
#Organization.create name: "最高位戦日本プロ麻雀協会"
#Organization.create name: "麻雀連合μ"
#Organization.create name: "RMU"
#Organization.create name: "日本プロ麻雀連盟"

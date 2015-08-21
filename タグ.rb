require 'active_record'
ActiveRecord::Base.establish_connection(
  "adapter"=>"sqlite3",
  "database"=>"db/development.sqlite3"
)
class Tag<ActiveRecord::Base
end

#Tag.create name: "おすすめ"
#Tag.create name: "初心者向け"
#Tag.create name: "点数計算"
#Tag.create name: "kindle"

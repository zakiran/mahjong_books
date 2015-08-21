require 'active_record'
ActiveRecord::Base.establish_connection(
  "adapter"=>"sqlite3",
  "database"=>"db/development.sqlite3"
)
class Author<ActiveRecord::Base
end

#Author.create name: "小倉 孝", kana: "おぐらたかし"
#Author.create name: "渋川 難波", kana: "しぶかわなんば"
#Author.create name: "福地 誠", kana: "ふくちまこと"
#Author.create name: "ネマタ",  kana: "ねまた"
#Author.create name: "多井 隆治", kana: "おおいたかはる"
#Author.create name: "河野 高志", kana: "こうのたかし"
#Author.create name: "新津 潔", kana: "にいずきよし"
#Author.create name: "村上 淳", kana: "むらかみじゅん"
=begin
Author.create name: "", kana: ""
Author.create name: "", kana: ""
Author.create name: "", kana: ""
Author.create name: "", kana: ""
Author.create name: "", kana: ""
Author.create name: "", kana: ""
Author.create name: "", kana: ""
Author.create name: "", kana: ""
Author.create name: "", kana: ""
Author.create name: "", kana: ""
=end

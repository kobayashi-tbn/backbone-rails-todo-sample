# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Todo.find_or_create_by(content: "Ruby勉強会", limit_on: Date.today, done: false)
Todo.find_or_create_by(content: "テーブル定義書更新", limit_on: Date.today, done: false)


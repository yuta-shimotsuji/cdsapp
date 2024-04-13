# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Tag.create([
    { name: '屋内' },
    { name: '屋外' },
    { name: '滞在時間1~2時間'},
    { name: '滞在時間2~4時間'},
    { name: '滞在時間4時間以上'},
    { name: '対象年齢:幼児'},
    { name: '対象年齢:小学生'},
    { name: '対象年齢:中学生以上'},
    { name: 'レストラン'},
    { name: 'レジャー'},
    { name: 'スポーツ'},
    { name: 'イベント'}
    ])

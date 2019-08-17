books = [
  { title: 'ヤマノススメ', author: 'しろ', publisher: 'アース・スター エンターテイメント', genre: 'アウトドア' },
  { title: 'ゆるキャン△', author: 'あｆろ', publisher: '芳文社', genre: 'アウトドア' },
  { title: 'ばくおん!!', author: 'おりもとみまな', publisher: '秋田書店', genre: 'バイク' },
  { title: '咲-Saki-', author: '小林立', publisher: 'スクウェア・エニックス', genre: '麻雀' },
  { title: 'ムダヅモ無き改革', author: '大和田秀樹', publisher: '竹書房', genre: '麻雀' },
  { title: '大魔法峠', author: '大和田秀樹', publisher: '角川書店', genre: '学園' },
  { title: '鋼の錬金術師', author: '荒川弘', publisher: 'スクウェア・エニックス', genre: 'ファンタジー' },
  { title: '銀の匙 Silver Spoon', author: '荒川弘', publisher: '小学館', genre: '農業' },
  { title: 'かぐや様は告らせたい', author: '赤坂アカ', publisher: '集英社', genre: '学園' },
  { title: 'テニスの王子様', author: '許斐剛', publisher: '集英社', genre: 'スポーツ' },
  { title: 'アイシールド21', author: '稲垣理一郎', publisher: '集英社', genre: 'スポーツ' },
  { title: '生徒会役員共', author: '氏家ト全', publisher: '講談社', genre: '学園' },
  { title: '寄宿学校のジュリエット', author: '金田陽介', publisher: '講談社', genre: '学園' },
  { title: '天牌', author: '来賀友志', publisher: '日本文芸社', genre: '麻雀' },
  { title: 'オーバーロード', author: '丸山くがね', publisher: 'エンターブレイン', genre: 'ファンタジー' },
  { title: '涼宮ハルヒシリーズ', author: '谷川流', publisher: '角川書店', genre: '学園' },
  { title: 'ようこそ実力至上主義の教室へ', author: '衣笠彰梧', publisher: '	KADOKAWA', genre: '学園' },
  { title: 'フルメタル・パニック!', author: '賀東招二', publisher: 'KADOKAWA・富士見書房', genre: '戦争' },
  { title: 'アクセル・ワールド', author: '川原礫', publisher: 'KADOKAWA', genre: '学園' },
  { title: 'とある魔術の禁書目録', author: '鎌池和馬', publisher: 'KADOKAWA', genre: 'ファンタジー' },
]

books.each do |book|
  Book.create(
    title: book[:title],
    author: book[:author],
    publisher: book[:publisher],
    genre: book[:genre]
  )
end

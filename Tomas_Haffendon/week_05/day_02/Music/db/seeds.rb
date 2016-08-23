Artist.destroy_all

Artist.create({
  :name => "Lapsley",
  :style => "chilled",
  :image =>
  "https://s3.amazonaws.com/bit-photos/large/6140085.jpeg"
})

Album.create({
  :title => "Understudy EP",
  :year => "2014",
  :image => "https://s3-eu-west-1.amazonaws.com/cdn.beggars.com/xlrecordings/site/images/products/32/packshot/LapsleyUnderstudy.jpg"
  })

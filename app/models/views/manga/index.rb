class Views::Manga::Index < Views::BaseViewModel
  def page_title
    ' | 能楽マンガ'
  end

  def optional_stylesheets
    css = super
    css << 'title_area'
    css << 'contacts'
    css << 'manga'

    css
  end

  def h1
    '能楽マンガ'
  end

  def mangas_with_title
    [
      { title: '平成20年度 能と狂言の会「舎利」',
        images: [
          '/image/manga/20_shari/0801.jpg',
          '/image/manga/20_shari/0802.jpg',
          '/image/manga/20_shari/0803.jpg',
          '/image/manga/20_shari/0804.jpg'
        ] },
      { title: '平成19年度 能と狂言の会「泰山府君」',
        images: [
          '/image/manga/19_taisan/0705.jpg',
          '/image/manga/19_taisan/0706.jpg',
          '/image/manga/19_taisan/0707.jpg',
          '/image/manga/19_taisan/0708.jpg'
        ] },
      { title: '平成19年度 創立45周年記念大会「胡蝶」',
        images: [
          '/image/manga/19_kocho/0701.jpg',
          '/image/manga/19_kocho/0702.jpg'
        ]},
      { title: '平成19年度　創立45周年記念大会「小鍛冶」',
        images: [
          '/image/manga/19_kokaji/0703.jpg',
          '/image/manga/19_kokaji/0704.jpg'
        ]},
      { title: '平成18年度 能と狂言の会「三山」',
        images: [
          '/image/manga/18_mitsuyama/0601.jpg',
          '/image/manga/18_mitsuyama/0602.jpg',
          '/image/manga/18_mitsuyama/0603.jpg',
          '/image/manga/18_mitsuyama/0604.jpg'
        ]},
      { title: '平成17年度 能と狂言の会「松山天狗」',
        images: [
          '/image/manga/17_matsuyama/0501.jpg',
          '/image/manga/17_matsuyama/0502.jpg',
          '/image/manga/17_matsuyama/0503.jpg',
          '/image/manga/17_matsuyama/0504.jpg'
        ]},
      { title: '平成16年度 能と狂言の会「舎利」',
        images: [
          '/image/manga/16_shari/0401.jpg',
          '/image/manga/16_shari/0402.jpg',
          '/image/manga/16_shari/0403.jpg',
          '/image/manga/16_shari/0404.jpg'
        ]}
    ]
  end
end

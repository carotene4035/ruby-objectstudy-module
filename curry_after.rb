class Curry

  def initialize(args={})
    @potato   = args[:potato_type] || 'メークイン'
    @ninjin   = args[:ninjin_type] || 'きんとき'
    @tamanegi = args[:tamanegi_type] || 'わから'

    post_initialize(args) # 親が子のmethodを呼び出す
  end

  def post_initialize(args={})
  end

  def taste
    'おいしい ' + add_taste # 親が子のmethodを呼び出す
  end

  def add_taste
    ''
  end

end


class SweetCurry < Curry

  def post_initialize(args={})
    @choco = args[:chocolate] || 'meiji'
  end

  def add_taste
    'あまい'
  end

end


class HotCurry < Curry
  def post_initialize(args={})
    @source = args[:death_source] || 'death source'
  end

  def add_taste
    'からい'
  end

end

class Curry

  def initialize(args={})
    @potato   = args[:potato_type] || 'メークイン'
    @ninjin   = args[:ninjin_type] || 'きんとき'
    @tamanegi = args[:tamanegi_type] || 'わから'

    post_initialise(args)
  end

  def post_initialise(args={})
  end

  def taste
    'おいしい ' + add_taste
  end

  def add_taste
    ''
  end

end


class SweetCurry < Curry

  def post_initialise(args={})
    @choco = args[:chocolate] || 'meiji'
  end

  def add_taste
    'あまい'
  end

end


class HotCurry < Curry
  def post_initialise(args={})
    @source = args[:death_source] || 'death source'
  end

  def add_taste
    'からい'
  end

end

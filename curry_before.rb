class Curry

  def initialize(args={})
    @potato   = args[:potato_type] || 'メークイン'
    @ninjin   = args[:ninjin_type] || 'きんとき'
    @tamanegi = args[:tamanegi_type] || 'わからん'
  end

  def taste
    'おいしい '
  end

end


class SweetCurry < Curry

  def initialize(args={})
    # 問題点その１ 親のinitializeがhashを受け取ることを知っている
    # 問題点その２ superの実装し忘れが発生する可能性
    super(args)
    @choco = args[:chocolate] || 'meiji'
  end

  def taste
    # 問題点その３ 親のtasteが文字列を返すことを知っている
    super + 'あまい'
  end

end


class HotCurry < Curry

  def initialize(args={})
    # 問題点その１
    # 問題点その２
    super(args)
    @source = args[:death_source] || 'death source'
  end

  def taste
    # その３
    super + 'からい'
  end

end

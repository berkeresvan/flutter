class Burc {
  final String _burcadi;
  final String _burctarihi;
  final String _burcdetayi;
  final String _burckucukresim;
  final String _burcbuyukresim;
  get burcadi => this._burcadi;
  get burctarihi => this._burctarihi;
  get burcdetayi => this._burcdetayi;
  get burckucukresim => this._burckucukresim;
  get burcbuyukresim => this._burcbuyukresim;
  Burc(this._burcadi, this._burctarihi, this._burcdetayi, this._burckucukresim,
      this._burcbuyukresim);

  @override
  String toString() {
    return '$_burcadi - $_burcbuyukresim';
  }
}

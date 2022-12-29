class DartObjectPage {
  String? info;
  String? description;
  String? timestamp;
  Rates? rates;

  DartObjectPage({this.info, this.description, this.timestamp, this.rates});

  DartObjectPage.fromJson(Map<String, dynamic> json) {
    info = json['info'];
    description = json['description'];
    timestamp = json['timestamp'];
    rates = json['rates'] != null ? new Rates.fromJson(json['rates']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['info'] = this.info;
    data['description'] = this.description;
    data['timestamp'] = this.timestamp;
    if (this.rates != null) {
      data['rates'] = this.rates!.toJson();
    }
    return data;
  }
}

class Rates {
  String? uSD;
  String? lKR;
  String? nZD;
  String? cZK;
  String? jPY;
  String? vND;
  String? pHP;
  String? kRW;
  String? hKD;
  String? bRL;
  String? rSD;
  String? mYR;
  String? cAD;
  String? gBP;
  String? iLS;
  String? sEK;
  String? nOK;
  String? dKK;
  String? aUD;
  String? rUB;
  String? kWD;
  String? bND;
  String? eUR;
  String? iNR;
  String? zAR;
  String? nPR;
  String? cNY;
  String? cHF;
  String? pKR;
  String? kES;
  String? tHB;
  String? eGP;
  String? bDT;
  String? sAR;
  String? lAK;
  String? kHR;
  String? sGD;
  String? iDR;

  Rates(
      {this.uSD,
      this.lKR,
      this.nZD,
      this.cZK,
      this.jPY,
      this.vND,
      this.pHP,
      this.kRW,
      this.hKD,
      this.bRL,
      this.rSD,
      this.mYR,
      this.cAD,
      this.gBP,
      this.iLS,
      this.sEK,
      this.nOK,
      this.dKK,
      this.aUD,
      this.rUB,
      this.kWD,
      this.bND,
      this.eUR,
      this.iNR,
      this.zAR,
      this.nPR,
      this.cNY,
      this.cHF,
      this.pKR,
      this.kES,
      this.tHB,
      this.eGP,
      this.bDT,
      this.sAR,
      this.lAK,
      this.kHR,
      this.sGD,
      this.iDR});

  Rates.fromJson(Map<String, dynamic> json) {
    uSD = json['USD'];
    lKR = json['LKR'];
    nZD = json['NZD'];
    cZK = json['CZK'];
    jPY = json['JPY'];
    vND = json['VND'];
    pHP = json['PHP'];
    kRW = json['KRW'];
    hKD = json['HKD'];
    bRL = json['BRL'];
    rSD = json['RSD'];
    mYR = json['MYR'];
    cAD = json['CAD'];
    gBP = json['GBP'];
    iLS = json['ILS'];
    sEK = json['SEK'];
    nOK = json['NOK'];
    dKK = json['DKK'];
    aUD = json['AUD'];
    rUB = json['RUB'];
    kWD = json['KWD'];
    bND = json['BND'];
    eUR = json['EUR'];
    iNR = json['INR'];
    zAR = json['ZAR'];
    nPR = json['NPR'];
    cNY = json['CNY'];
    cHF = json['CHF'];
    pKR = json['PKR'];
    kES = json['KES'];
    tHB = json['THB'];
    eGP = json['EGP'];
    bDT = json['BDT'];
    sAR = json['SAR'];
    lAK = json['LAK'];
    kHR = json['KHR'];
    sGD = json['SGD'];
    iDR = json['IDR'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['USD'] = this.uSD;
    data['LKR'] = this.lKR;
    data['NZD'] = this.nZD;
    data['CZK'] = this.cZK;
    data['JPY'] = this.jPY;
    data['VND'] = this.vND;
    data['PHP'] = this.pHP;
    data['KRW'] = this.kRW;
    data['HKD'] = this.hKD;
    data['BRL'] = this.bRL;
    data['RSD'] = this.rSD;
    data['MYR'] = this.mYR;
    data['CAD'] = this.cAD;
    data['GBP'] = this.gBP;
    data['ILS'] = this.iLS;
    data['SEK'] = this.sEK;
    data['NOK'] = this.nOK;
    data['DKK'] = this.dKK;
    data['AUD'] = this.aUD;
    data['RUB'] = this.rUB;
    data['KWD'] = this.kWD;
    data['BND'] = this.bND;
    data['EUR'] = this.eUR;
    data['INR'] = this.iNR;
    data['ZAR'] = this.zAR;
    data['NPR'] = this.nPR;
    data['CNY'] = this.cNY;
    data['CHF'] = this.cHF;
    data['PKR'] = this.pKR;
    data['KES'] = this.kES;
    data['THB'] = this.tHB;
    data['EGP'] = this.eGP;
    data['BDT'] = this.bDT;
    data['SAR'] = this.sAR;
    data['LAK'] = this.lAK;
    data['KHR'] = this.kHR;
    data['SGD'] = this.sGD;
    data['IDR'] = this.iDR;
    return data;
  }
}

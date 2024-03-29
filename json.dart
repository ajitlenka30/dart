import 'dart:io';

class Autogenerated {
  String? _id;
  String? _type;
  String? _name;
  double? _ppu;
  Batters? _batters;
  List<Topping>? _topping;

  Autogenerated(
      {String? id,
      String? type,
      String? name,
      double? ppu,
      Batters? batters,
      List<Topping>? topping}) {
    if (id != null) {
      this._id = id;
    }
    if (type != null) {
      this._type = type;
    }
    if (name != null) {
      this._name = name;
    }
    if (ppu != null) {
      this._ppu = ppu;
    }
    if (batters != null) {
      this._batters = batters;
    }
    if (topping != null) {
      this._topping = topping;
    }
  }

  String? get id => _id;
  set id(String? id) => _id = id;
  String? get type => _type;
  set type(String? type) => _type = type;
  String? get name => _name;
  set name(String? name) => _name = name;
  double? get ppu => _ppu;
  set ppu(double? ppu) => _ppu = ppu;
  Batters? get batters => _batters;
  set batters(Batters? batters) => _batters = batters;
  List<Topping>? get topping => _topping;
  set topping(List<Topping>? topping) => _topping = topping;

  Autogenerated.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _type = json['type'];
    _name = json['name'];
    _ppu = json['ppu'];
    _batters =
        json['batters'] != null ? new Batters.fromJson(json['batters']) : null;
    if (json['topping'] != null) {
      _topping = <Topping>[];
      json['topping'].forEach((v) {
        _topping!.add(new Topping.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['type'] = this._type;
    data['name'] = this._name;
    data['ppu'] = this._ppu;
    if (this._batters != null) {
      data['batters'] = this._batters!.toJson();
    }
    if (this._topping != null) {
      data['topping'] = this._topping!.map((v) => v.() {}()).toList();
    }
    return data;
  }
}

class Topping {
  Topping.fromJson(v);
}

class Batters {
  List<Batter>? _batter;

  Batters({List<Batter>? batter}) {
    if (batter != null) {
      this._batter = batter;
    }
  }

  List<Batter>? get batter => _batter;
  set batter(List<Batter>? batter) => _batter = batter;

  Batters.fromJson(Map<String, dynamic> json) {
    if (json['batter'] != null) {
      _batter = <Batter>[];
      json['batter'].forEach((v) {
        _batter!.add(new Batter.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._batter != null) {
      data['batter'] = this._batter!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Batter {
  String? _id;
  String? _type;

  Batter({String? id, String? type}) {
    if (id != null) {
      this._id = id;
    }
    if (type != null) {
      this._type = type;
    }
  }

  String? get id => _id;
  set id(String? id) => _id = id;
  String? get type => _type;
  set type(String? type) => _type = type;

  Batter.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['type'] = this._type;
    return data;
  }
}
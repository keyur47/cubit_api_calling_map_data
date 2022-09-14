import 'dart:convert';

List<ProfileData> cricketFromJson(String str) => List<ProfileData>.from(
    json.decode(str).map((x) => ProfileData.fromJson(x)));

String cricketToJson(List<ProfileData> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProfileData {
  int? id;
  bool? active;
  int? stages;
  int? boosters;
  int? costPerLaunch;
  int? successRatePct;
  String? firstFlight;
  String? country;
  String? company;
  Diameter? height;
  Diameter? diameter;
  Mass? mass;
  List<PayloadWeights>? payloadWeights;
  FirstStage? firstStage;
  SecondStage? secondStage;
  Engines? engines;
  LandingLegs? landingLegs;
  List<String>? flickrImages;
  String? wikipedia;
  String? description;
  String? rocketId;
  String? rocketName;
  String? rocketType;

  ProfileData(
      {this.id,
      this.active,
      this.stages,
      this.boosters,
      this.costPerLaunch,
      this.successRatePct,
      this.firstFlight,
      this.country,
      this.company,
      this.height,
      this.diameter,
      this.mass,
      this.payloadWeights,
      this.firstStage,
      this.secondStage,
      this.engines,
      this.landingLegs,
      this.flickrImages,
      this.wikipedia,
      this.description,
      this.rocketId,
      this.rocketName,
      this.rocketType});

  ProfileData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    active = json['active'];
    stages = json['stages'];
    boosters = json['boosters'];
    costPerLaunch = json['cost_per_launch'];
    successRatePct = json['success_rate_pct'];
    firstFlight = json['first_flight'];
    country = json['country'];
    company = json['company'];
    height =
        json['height'] != null ? new Diameter.fromJson(json['height']) : null;
    diameter = json['diameter'] != null
        ? new Diameter.fromJson(json['diameter'])
        : null;
    mass = json['mass'] != null ? new Mass.fromJson(json['mass']) : null;
    if (json['payload_weights'] != null) {
      payloadWeights = <PayloadWeights>[];
      json['payload_weights'].forEach((v) {
        payloadWeights!.add(new PayloadWeights.fromJson(v));
      });
    }
    firstStage = json['first_stage'] != null
        ? new FirstStage.fromJson(json['first_stage'])
        : null;
    secondStage = json['second_stage'] != null
        ? new SecondStage.fromJson(json['second_stage'])
        : null;
    engines =
        json['engines'] != null ? new Engines.fromJson(json['engines']) : null;
    landingLegs = json['landing_legs'] != null
        ? new LandingLegs.fromJson(json['landing_legs'])
        : null;
    flickrImages = json['flickr_images'].cast<String>();
    wikipedia = json['wikipedia'];
    description = json['description'];
    rocketId = json['rocket_id'];
    rocketName = json['rocket_name'];
    rocketType = json['rocket_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['active'] = this.active;
    data['stages'] = this.stages;
    data['boosters'] = this.boosters;
    data['cost_per_launch'] = this.costPerLaunch;
    data['success_rate_pct'] = this.successRatePct;
    data['first_flight'] = this.firstFlight;
    data['country'] = this.country;
    data['company'] = this.company;
    if (this.height != null) {
      data['height'] = this.height!.toJson();
    }
    if (this.diameter != null) {
      data['diameter'] = this.diameter!.toJson();
    }
    if (this.mass != null) {
      data['mass'] = this.mass!.toJson();
    }
    if (this.payloadWeights != null) {
      data['payload_weights'] =
          this.payloadWeights!.map((v) => v.toJson()).toList();
    }
    if (this.firstStage != null) {
      data['first_stage'] = this.firstStage!.toJson();
    }
    if (this.secondStage != null) {
      data['second_stage'] = this.secondStage!.toJson();
    }
    if (this.engines != null) {
      data['engines'] = this.engines!.toJson();
    }
    if (this.landingLegs != null) {
      data['landing_legs'] = this.landingLegs!.toJson();
    }
    data['flickr_images'] = this.flickrImages;
    data['wikipedia'] = this.wikipedia;
    data['description'] = this.description;
    data['rocket_id'] = this.rocketId;
    data['rocket_name'] = this.rocketName;
    data['rocket_type'] = this.rocketType;
    return data;
  }
}

class Height {
  double? meters;
  int? feet;

  Height({this.meters, this.feet});

  Height.fromJson(Map<String, dynamic> json) {
    meters = json['meters'];
    feet = json['feet'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['meters'] = this.meters;
    data['feet'] = this.feet;
    return data;
  }
}

class Diameter {
  double? meters;
  double? feet;

  Diameter({this.meters, this.feet});

  Diameter.fromJson(Map<String, dynamic> json) {
    meters = json['meters'] != null ? double.parse(json['meters'].toString()) : null;
    feet = json['feet'] != null ? double.parse(json['feet'].toString()) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['meters'] = this.meters;
    data['feet'] = this.feet;
    return data;
  }
}

class Mass {
  int? kg;
  int? lb;

  Mass({this.kg, this.lb});

  Mass.fromJson(Map<String, dynamic> json) {
    kg = json['kg'];
    lb = json['lb'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['kg'] = this.kg;
    data['lb'] = this.lb;
    return data;
  }
}

class PayloadWeights {
  String? id;
  String? name;
  int? kg;
  int? lb;

  PayloadWeights({this.id, this.name, this.kg, this.lb});

  PayloadWeights.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    kg = json['kg'];
    lb = json['lb'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['kg'] = this.kg;
    data['lb'] = this.lb;
    return data;
  }
}

class FirstStage {
  bool? reusable;
  int? engines;
  double? fuelAmountTons;
  int? burnTimeSec;
  ThrustSeaLevel? thrustSeaLevel;
  ThrustSeaLevel? thrustVacuum;

  FirstStage(
      {this.reusable,
      this.engines,
      this.fuelAmountTons,
      this.burnTimeSec,
      this.thrustSeaLevel,
      this.thrustVacuum});

  FirstStage.fromJson(Map<String, dynamic> json) {
    reusable = json['reusable'];
    engines = json['engines'];
    fuelAmountTons = json['fuel_amount_tons'].toDouble();
    burnTimeSec = json['burn_time_sec'];
    thrustSeaLevel = json['thrust_sea_level'] != null
        ? new ThrustSeaLevel.fromJson(json['thrust_sea_level'])
        : null;
    thrustVacuum = json['thrust_vacuum'] != null
        ? new ThrustSeaLevel.fromJson(json['thrust_vacuum'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['reusable'] = this.reusable;
    data['engines'] = this.engines;
    data['fuel_amount_tons'] = this.fuelAmountTons;
    data['burn_time_sec'] = this.burnTimeSec;
    if (this.thrustSeaLevel != null) {
      data['thrust_sea_level'] = this.thrustSeaLevel!.toJson();
    }
    if (this.thrustVacuum != null) {
      data['thrust_vacuum'] = this.thrustVacuum!.toJson();
    }
    return data;
  }
}

class ThrustSeaLevel {
  int? kN;
  int? lbf;

  ThrustSeaLevel({this.kN, this.lbf});

  ThrustSeaLevel.fromJson(Map<String, dynamic> json) {
    kN = json['kN'];
    lbf = json['lbf'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['kN'] = this.kN;
    data['lbf'] = this.lbf;
    return data;
  }
}

class SecondStage {
  bool? reusable;
  int? engines;
  double? fuelAmountTons;
  int? burnTimeSec;
  ThrustSeaLevel? thrust;
  Payloads? payloads;

  SecondStage(
      {this.reusable,
      this.engines,
      this.fuelAmountTons,
      this.burnTimeSec,
      this.thrust,
      this.payloads});

  SecondStage.fromJson(Map<String, dynamic> json) {
    reusable = json['reusable'];
    engines = json['engines'];
    fuelAmountTons = json['fuel_amount_tons'].toDouble();
    burnTimeSec = json['burn_time_sec'];
    thrust = json['thrust'] != null
        ? new ThrustSeaLevel.fromJson(json['thrust'])
        : null;
    payloads = json['payloads'] != null
        ? new Payloads.fromJson(json['payloads'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['reusable'] = this.reusable;
    data['engines'] = this.engines;
    data['fuel_amount_tons'] = this.fuelAmountTons;
    data['burn_time_sec'] = this.burnTimeSec;
    if (this.thrust != null) {
      data['thrust'] = this.thrust!.toJson();
    }
    if (this.payloads != null) {
      data['payloads'] = this.payloads!.toJson();
    }
    return data;
  }
}

class Payloads {
  String? option1;
  CompositeFairing? compositeFairing;

  Payloads({this.option1, this.compositeFairing});

  Payloads.fromJson(Map<String, dynamic> json) {
    option1 = json['option_1'];
    compositeFairing = json['composite_fairing'] != null
        ? new CompositeFairing.fromJson(json['composite_fairing'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['option_1'] = this.option1;
    if (this.compositeFairing != null) {
      data['composite_fairing'] = this.compositeFairing!.toJson();
    }
    return data;
  }
}

class CompositeFairing {
  Diameter? height;
  Diameter? diameter;

  CompositeFairing({this.height, this.diameter});

  CompositeFairing.fromJson(Map<String, dynamic> json) {
    height =
        json['height'] != null ? new Diameter.fromJson(json['height']) : null;
    diameter = json['diameter'] != null
        ? new Diameter.fromJson(json['diameter'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.height != null) {
      data['height'] = this.height!.toJson();
    }
    if (this.diameter != null) {
      data['diameter'] = this.diameter!.toJson();
    }
    return data;
  }
}

class Engines {
  int? number;
  String? type;
  String? version;
  String? layout;
  Isp? isp;
  int? engineLossMax;
  String? propellant1;
  String? propellant2;
  ThrustSeaLevel? thrustSeaLevel;
  ThrustSeaLevel? thrustVacuum;
  double? thrustToWeight;

  Engines(
      {this.number,
      this.type,
      this.version,
      this.layout,
      this.isp,
      this.engineLossMax,
      this.propellant1,
      this.propellant2,
      this.thrustSeaLevel,
      this.thrustVacuum,
      this.thrustToWeight});

  Engines.fromJson(Map<String, dynamic> json) {
    number = json['number'];
    type = json['type'];
    version = json['version'];
    layout = json['layout'];
    isp = json['isp'] != null ? new Isp.fromJson(json['isp']) : null;
    engineLossMax = json['engine_loss_max'];
    propellant1 = json['propellant_1'];
    propellant2 = json['propellant_2'];
    thrustSeaLevel = json['thrust_sea_level'] != null
        ? new ThrustSeaLevel.fromJson(json['thrust_sea_level'])
        : null;
    thrustVacuum = json['thrust_vacuum'] != null
        ? new ThrustSeaLevel.fromJson(json['thrust_vacuum'])
        : null;
    thrustToWeight = json['thrust_to_weight'].toDouble();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['number'] = this.number;
    data['type'] = this.type;
    data['version'] = this.version;
    data['layout'] = this.layout;
    if (this.isp != null) {
      data['isp'] = this.isp!.toJson();
    }
    data['engine_loss_max'] = this.engineLossMax;
    data['propellant_1'] = this.propellant1;
    data['propellant_2'] = this.propellant2;
    if (this.thrustSeaLevel != null) {
      data['thrust_sea_level'] = this.thrustSeaLevel!.toJson();
    }
    if (this.thrustVacuum != null) {
      data['thrust_vacuum'] = this.thrustVacuum!.toJson();
    }
    data['thrust_to_weight'] = this.thrustToWeight;
    return data;
  }
}

class Isp {
  int? seaLevel;
  int? vacuum;

  Isp({this.seaLevel, this.vacuum});

  Isp.fromJson(Map<String, dynamic> json) {
    seaLevel = json['sea_level'];
    vacuum = json['vacuum'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sea_level'] = this.seaLevel;
    data['vacuum'] = this.vacuum;
    return data;
  }
}

class LandingLegs {
  int? number;
  String? material;

  LandingLegs({this.number, this.material});

  LandingLegs.fromJson(Map<String, dynamic> json) {
    number = json['number'];
    material = json['material'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['number'] = this.number;
    data['material'] = this.material;
    return data;
  }
}

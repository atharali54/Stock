// To parse this JSON data, do
//
//     final allStock = allStockFromJson(jsonString);

import 'dart:convert';

List<AllStock> allStockFromJson(String str) =>
    List<AllStock>.from(json.decode(str).map((x) => AllStock.fromJson(x)));

String allStockToJson(List<AllStock> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AllStock {
  AllStock({
    this.srno,
    this.stockRegister,
    this.category,
    this.modelno,
    this.serialno,
    this.invoice,
    this.refno,
    this.make,
    this.dop,
    this.dealer,
    this.price,
    this.tehsil,
    this.presentlocation,
    this.installationdate,
    this.remarks,
    this.warrantyPeriod,
    this.amcPeriod,
    this.status,
    this.office,
  });

  int srno;
  StockRegister stockRegister;
  String category;
  String modelno;
  String serialno;
  String invoice;
  String refno;
  String make;
  String dop;
  String dealer;
  String price;
  Tehsil tehsil;
  Presentlocation presentlocation;
  String installationdate;
  String remarks;
  WarrantyPeriod warrantyPeriod;
  AmcPeriod amcPeriod;
  Status status;
  Office office;

  factory AllStock.fromJson(Map<String, dynamic> json) => AllStock(
        srno: json["srno"],
        stockRegister: stockRegisterValues.map[json["stockRegister"]],
        category: json["category"],
        modelno: json["modelno"],
        serialno: json["serialno"],
        invoice: json["invoice"],
        refno: json["refno"],
        make: json["make"],
        dop: json["dop"],
        dealer: json["dealer"],
        price: json["price"],
        tehsil: tehsilValues.map[json["tehsil"]],
        presentlocation: presentlocationValues.map[json["presentlocation"]],
        installationdate: json["installationdate"],
        remarks: json["remarks"],
        warrantyPeriod: warrantyPeriodValues.map[json["warrantyPeriod"]],
        amcPeriod: amcPeriodValues.map[json["amcPeriod"]],
        status: statusValues.map[json["status"]],
        office:
            json["office"] == null ? null : officeValues.map[json["office"]],
      );

  Map<String, dynamic> toJson() => {
        "srno": srno,
        "stockRegister": stockRegisterValues.reverse[stockRegister],
        "category": category,
        "modelno": modelno,
        "serialno": serialno,
        "invoice": invoice,
        "refno": refno,
        "make": make,
        "dop": dop,
        "dealer": dealer,
        "price": price,
        "tehsil": tehsilValues.reverse[tehsil],
        "presentlocation": presentlocationValues.reverse[presentlocation],
        "installationdate": installationdate,
        "remarks": remarks,
        "warrantyPeriod": warrantyPeriodValues.reverse[warrantyPeriod],
        "amcPeriod": amcPeriodValues.reverse[amcPeriod],
        "status": statusValues.reverse[status],
        "office": office == null ? null : officeValues.reverse[office],
      };
}

enum AmcPeriod { NA, EMPTY, NO, AMC_PERIOD_NO, N0, N_A }

final amcPeriodValues = EnumValues({
  "no": AmcPeriod.AMC_PERIOD_NO,
  "": AmcPeriod.EMPTY,
  "N0": AmcPeriod.N0,
  "NA": AmcPeriod.NA,
  "NO": AmcPeriod.NO,
  "N/A": AmcPeriod.N_A
});

enum Office {
  DC_OFFICE,
  EMPTY,
  SDM_SHAHABAD,
  NAIB_TEHSILDAR_BABAIN,
  DSWO_OFFICE,
  SDM_OFFICE_P_EHOWA,
  TEHSILDAR_THANESAR,
  NAIB_TEHSILDAR_ISMAILABAD,
  SDM_THANESAR,
  SDM_PEHOWA,
  DITS,
  DRO_OFFICE,
  ADC_OFFICE,
  TEHSILDAR_SHAHABAD,
  DITS_NARNAUL,
  DWO_KKR
}

final officeValues = EnumValues({
  "ADC Office": Office.ADC_OFFICE,
  "DC Office": Office.DC_OFFICE,
  "DITS": Office.DITS,
  "DITS, Narnaul": Office.DITS_NARNAUL,
  "DRO OFFICE": Office.DRO_OFFICE,
  "DSWO Office": Office.DSWO_OFFICE,
  "DWO, KKR": Office.DWO_KKR,
  "": Office.EMPTY,
  "Naib Tehsildar Babain": Office.NAIB_TEHSILDAR_BABAIN,
  "Naib Tehsildar Ismailabad": Office.NAIB_TEHSILDAR_ISMAILABAD,
  "SDM Office PEhowa": Office.SDM_OFFICE_P_EHOWA,
  "SDM Pehowa": Office.SDM_PEHOWA,
  "SDM Shahabad": Office.SDM_SHAHABAD,
  "SDM Thanesar": Office.SDM_THANESAR,
  "Tehsildar Shahabad": Office.TEHSILDAR_SHAHABAD,
  "Tehsildar Thanesar": Office.TEHSILDAR_THANESAR
});

enum Presentlocation {
  CONFERENCE_HALL,
  TOUCHSCREEN_GALLERY,
  EMPTY,
  HALRIS_HARIS,
  DC_CAMP_OFFICE,
  SDM_OFFICE,
  E_DISHA,
  LFA_BRANCH,
  STOCK,
  CIRCUIT_HOUSE,
  NON_WORKING,
  HRC_BRANCH,
  RKE_BRANCH,
  ANTOYADYA_BHAWAN_KKR
}

final presentlocationValues = EnumValues({
  "Antoyadya Bhawan, KKR": Presentlocation.ANTOYADYA_BHAWAN_KKR,
  "Circuit House": Presentlocation.CIRCUIT_HOUSE,
  "Conference Hall": Presentlocation.CONFERENCE_HALL,
  "DC Camp Office": Presentlocation.DC_CAMP_OFFICE,
  "": Presentlocation.EMPTY,
  "E-Disha": Presentlocation.E_DISHA,
  "Halris/Haris": Presentlocation.HALRIS_HARIS,
  "HRC Branch": Presentlocation.HRC_BRANCH,
  "LFA Branch": Presentlocation.LFA_BRANCH,
  "Non Working": Presentlocation.NON_WORKING,
  "RKE Branch": Presentlocation.RKE_BRANCH,
  "SDM Office": Presentlocation.SDM_OFFICE,
  "Stock": Presentlocation.STOCK,
  "Touchscreen Gallery": Presentlocation.TOUCHSCREEN_GALLERY
});

enum Status { WORKING, NOT_WORKING }

final statusValues =
    EnumValues({"Not Working": Status.NOT_WORKING, "Working": Status.WORKING});

enum StockRegister { NON_CONSUMABLE, CONSUMABLE }

final stockRegisterValues = EnumValues({
  "Consumable": StockRegister.CONSUMABLE,
  "Non-Consumable": StockRegister.NON_CONSUMABLE
});

enum Tehsil { THANESAR, BABAIN, PEHOWA, LADWA, OTHER, ISMAILABAD, SHAHABAD }

final tehsilValues = EnumValues({
  "Babain": Tehsil.BABAIN,
  "Ismailabad": Tehsil.ISMAILABAD,
  "Ladwa": Tehsil.LADWA,
  "Other": Tehsil.OTHER,
  "Pehowa": Tehsil.PEHOWA,
  "Shahabad": Tehsil.SHAHABAD,
  "Thanesar": Tehsil.THANESAR
});

enum WarrantyPeriod {
  THE_1_YEAR,
  EMPTY,
  WARRANTY_PERIOD_1_YEAR,
  THE_2_YEAR,
  THE_2_YEAR_1_WEEK,
  THE_3_YEAR,
  THE_2_YEARS,
  WARRANTY_PERIOD_3_YEAR,
  THE_3_YEARS,
  THE_03_YEAR,
  WARRANTY_PERIOD_3_YEARS,
  WARRANTY_PERIOD_2_YEAR,
  THE_6_MONTH,
  THE_5_YEAR_ON_SITE,
  PURPLE_1_YEAR,
  THE_1,
  THE_3_YEAR_BY_OEM,
  FLUFFY_1_YEAR,
  THE_5_YEAR,
  TENTACLED_1_YEAR,
  PURPLE_3_YEARS,
  FLUFFY_3_YEARS
}

final warrantyPeriodValues = EnumValues({
  "": WarrantyPeriod.EMPTY,
  "1Year": WarrantyPeriod.FLUFFY_1_YEAR,
  "3 YEARS": WarrantyPeriod.FLUFFY_3_YEARS,
  "1YEAR": WarrantyPeriod.PURPLE_1_YEAR,
  "3YEARS": WarrantyPeriod.PURPLE_3_YEARS,
  "1 YEAR": WarrantyPeriod.TENTACLED_1_YEAR,
  "03 Year": WarrantyPeriod.THE_03_YEAR,
  "1 ": WarrantyPeriod.THE_1,
  "1 year": WarrantyPeriod.THE_1_YEAR,
  "2 Year": WarrantyPeriod.THE_2_YEAR,
  "2 Years": WarrantyPeriod.THE_2_YEARS,
  "2 YEAR+1Week": WarrantyPeriod.THE_2_YEAR_1_WEEK,
  "3 year": WarrantyPeriod.THE_3_YEAR,
  "3 Years": WarrantyPeriod.THE_3_YEARS,
  "3 YEAR by OEM.": WarrantyPeriod.THE_3_YEAR_BY_OEM,
  "5 year": WarrantyPeriod.THE_5_YEAR,
  "5 Year on site": WarrantyPeriod.THE_5_YEAR_ON_SITE,
  "6 Month": WarrantyPeriod.THE_6_MONTH,
  "1 Year": WarrantyPeriod.WARRANTY_PERIOD_1_YEAR,
  "2 year": WarrantyPeriod.WARRANTY_PERIOD_2_YEAR,
  "3 Year": WarrantyPeriod.WARRANTY_PERIOD_3_YEAR,
  "3Years": WarrantyPeriod.WARRANTY_PERIOD_3_YEARS
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}

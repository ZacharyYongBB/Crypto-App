//
//  MarketDataModel.swift
//  CryptoSwift
//
//  Created by Zachary on 26/11/22.
//

import Foundation

// JSON
/*
URL : https://api.coingecko.com/api/v3/global
 
// JSON data:
 
 {
   "data": {
     "active_cryptocurrencies": 13209,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 608,
     "total_market_cap": {
       "btc": 52780607.74005782,
       "eth": 720173818.099319,
       "ltc": 11496809269.035158,
       "bch": 7698120882.337391,
       "bnb": 2825010575.2856255,
       "eos": 928911796738.9028,
       "xrp": 2138704025971.263,
       "xlm": 9694968467067.53,
       "link": 127360032670.53773,
       "dot": 165215630819.0202,
       "yfi": 138658596.53987807,
       "usd": 877000489068.2827,
       "aed": 3221222796347.807,
       "ars": 144974087441281.28,
       "aud": 1299067498438.266,
       "bdt": 89287706571202.11,
       "bhd": 330720392429.60583,
       "bmd": 877000489068.2827,
       "brl": 4744660345908.319,
       "cad": 1174895630192.5515,
       "chf": 829636323655.1731,
       "clp": 808796161033444.2,
       "cny": 6291996158795.928,
       "czk": 20544525756864.707,
       "dkk": 6273359898403.234,
       "eur": 842095869603.3656,
       "gbp": 725333778489.7931,
       "hkd": 6853013371652.952,
       "huf": 344477022101131.1,
       "idr": 13745085611478418,
       "ils": 3001266688687.033,
       "inr": 71624588723183.95,
       "jpy": 122012706319412.42,
       "krw": 1171286773180038,
       "kwd": 269461031267.69714,
       "lkr": 322172348469701.7,
       "mmk": 1840982647001780.8,
       "mxn": 16961715658874.016,
       "myr": 3928962191025.9116,
       "ngn": 388739236784407.5,
       "nok": 8663712431407.75,
       "nzd": 1403875195885.349,
       "php": 49725927730171.69,
       "pkr": 196009609306761.1,
       "pln": 3956585952430.5845,
       "rub": 53277696395851.516,
       "sar": 3295488951763.0835,
       "sek": 9151237003280.828,
       "sgd": 1206492203812.7048,
       "thb": 31300693826151.74,
       "try": 16326942704886.404,
       "twd": 27137903133728.965,
       "uah": 32376617320151.453,
       "vef": 87814058970.40698,
       "vnd": 21748310240084390,
       "zar": 14985982647086.346,
       "xdr": 652480470862.4026,
       "xag": 40601956672.09598,
       "xau": 499828888.73468673,
       "bits": 52780607740057.82,
       "sats": 5278060774005782
     },
     "total_volume": {
       "btc": 5339190.477824703,
       "eth": 72851476.26400429,
       "ltc": 1162996357.9978297,
       "bch": 778727935.7324481,
       "bnb": 285772942.1685241,
       "eos": 93967031306.5242,
       "xrp": 216347417342.91776,
       "xlm": 980725412960.5634,
       "link": 12883509735.980036,
       "dot": 16712913333.64529,
       "yfi": 14026451.949176501,
       "usd": 88715777645.87242,
       "aed": 325853051293.28986,
       "ars": 14665315545625.184,
       "aud": 131411310227.28062,
       "bdt": 9032182332185.594,
       "bhd": 33455074613.36909,
       "bmd": 88715777645.87242,
       "brl": 479961228641.93475,
       "cad": 118850309417.73413,
       "chf": 83924504642.55191,
       "clp": 81816351618353.11,
       "cny": 636486910931.4281,
       "czk": 2078246935554.445,
       "dkk": 634601700656.4541,
       "eur": 85184889695.56676,
       "gbp": 73373448491.35065,
       "hkd": 693238393891.4972,
       "huf": 34846670301522.266,
       "idr": 1390427911992256,
       "ils": 303602690680.8165,
       "inr": 7245413390696.88,
       "jpy": 12342583908138.895,
       "krw": 118485243992721.61,
       "kwd": 27258188829.02725,
       "lkr": 32590370001790.527,
       "mmk": 186230463035241.6,
       "mxn": 1715816369137.7588,
       "myr": 397446683853.509,
       "ngn": 39324155599309.46,
       "nok": 876405424208.0443,
       "nzd": 142013466666.40588,
       "php": 5030184592520.972,
       "pkr": 19827976303852.477,
       "pln": 400241053417.7987,
       "rub": 5389475063987.854,
       "sar": 333365680775.8973,
       "sek": 925722525001.3868,
       "sgd": 122046561454.75974,
       "thb": 3166321374110.664,
       "try": 1651603889277.6775,
       "twd": 2745221023473.879,
       "uah": 3275159841873.727,
       "vef": 8883110815.68119,
       "vnd": 2200019588908751.5,
       "zar": 1515954803783.811,
       "xdr": 66003740126.53046,
       "xag": 4107220241.046594,
       "xau": 50561783.15371211,
       "bits": 5339190477824.703,
       "sats": 533919047782470.3
     },
     "market_cap_percentage": {
       "btc": 36.409453818045314,
       "eth": 16.728231889369415,
       "usdt": 7.455520969303341,
       "bnb": 5.778991521419322,
       "usdc": 5.010248084150232,
       "busd": 2.566593584044511,
       "xrp": 2.3509801970814586,
       "doge": 1.4458369401238063,
       "ada": 1.2747643129881328,
       "matic": 0.8697472529556242
     },
     "market_cap_change_percentage_24h_usd": 1.5710783603644494,
     "updated_at": 1669437856
   }
 }
 
*/

struct GlobalData: Codable {
    let data: MarketDataModel
}

struct MarketDataModel: Codable {
    
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey {
            case totalMarketCap = "total_market_cap"
            case totalVolume = "total_volume"
            case marketCapPercentage = "market_cap_percentage"
            case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
//        if let item = totalMarketCap.first(where: { (key, value) -> Bool in
//            return key == "usd"
//        }) {
//            return "\(item.value)"
//        }
        
        if let item = totalMarketCap.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc" }) {
            return item.value.asPercentString()
        }
        return ""
    }
    
}



//
//  NetworkingMock.swift
//  Pharos AssigmentTests
//
//  Created by Mohamed Elkazzaz on 21/08/2022.
//

import Foundation
@testable import Pharos_Assigment

class NetworkingMock: ApiService{
    
    var shouldReturnError: Bool
    
    
    init(shouldReturnError: Bool) {
        self.shouldReturnError = shouldReturnError
    }
    
    let jsonRespons: [[String: Any]] = [
        [
            "country": "UA",
           "name": "Hurzuf",
           "_id": "707860",
           "coord":[
              "lat": "44.549999",
              "lon": "34.283333"
           ]
        ],
            [
                "country":"RU",
                "name":"Novinki",
                "_id":"519188",
                "coord":[
                    "lat":"55.683334",
                    "lon":"37.666668"
                ]
            ],
        [
            "country":"NP",
            "name":"Gorkhā",
            "_id":"1283378",
            "coord":[
                "lat":"28",
                "lon":"84.633331"
            ]
        ],
            [
                "country":"IN",
                "name":"State of Haryāna",
                "_id":"1270260",
                "coord":[
                    "lat":"29",
                    "lon":"76"
                ]
            ],
        [
            "country":"UA",
            "name":"Holubynka",
            "_id":"708546",
            "coord":[
                "lat":"44.599998",
                "lon":"33.900002"
            ]
        ],
            [
                "country":"NP",
                "name":"Bāgmatī Zone",
                "_id":"1283710",
                "coord":[
                    "lat":"28",
                    "lon":"85.416664"
                ]
            ],
        [
            "country":"RU",
            "name":"Mar’ina Roshcha",
            "_id":"529334",
            "coord":[
                "lat":"55.796391",
                "lon":"37.611111"
            ]
        ],
            [
                "country":"IN",
                "name":"Republic of India",
                "_id":"1269750",
                "coord":[
                    "lat":"20",
                    "lon":"77"
                ]
            ],
        [
            "country":"NP",
            "name":"Kathmandu",
            "_id":"1283240",
            "coord":[
                "lat":"27.716667",
                "lon":"85.316666"
            ]
        ],
            [
                "country":"UA",
                "name":"Laspi",
                "_id":"703363",
                "coord":[
                    "lat":"44.416668",
                    "lon":"33.733334"
                ]
            ],
        [
            "country":"VE",
            "name":"Merida",
            "_id":"3632308",
            "coord":[
                "lat":"8.598333",
                "lon":"-71.144997"
            ]
        ],
            [
                "country":"RU",
                "name":"Vinogradovo",
                "_id":"473537",
                "coord":[
                    "lat":"55.423332",
                    "lon":"38.545555"
                ]
            ],
        [
            "country":"IQ",
            "name":"Qarah Gawl al ‘Ulyā",
            "_id":"384848",
            "coord":[
                "lat":"35.353889",
                "lon":"45.6325"
            ]
        ],
            [
                "country":"RU",
                "name":"Cherkizovo",
                "_id":"569143",
                "coord":[
                    "lat":"55.800835",
                    "lon":"37.728889"
                ]
            ],
        [
            "country":"UA",
            "name":"Alupka",
            "_id":"713514",
            "coord":[
                "lat":"44.416668",
                "lon":"34.049999"
            ]
        ],
            [
                "country":"DE",
                "name":"Lichtenrade",
                "_id":"2878044",
                "coord":[
                    "lat":"52.398441",
                    "lon":"13.40637"
                ]
            ],
        [
            "country":"RU",
            "name":"Zavety Il’icha",
            "_id":"464176",
            "coord":[
                "lat":"56.049999",
                "lon":"37.849998"
            ]
        ],
            [
                "country":"IL",
                "name":"‘Azriqam",
                "_id":"295582",
                "coord":[
                    "lat":"31.75",
                    "lon":"34.700001"
                ]
            ],
        [
            "country":"IN",
            "name":"Ghūra",
            "_id":"1271231",
            "coord":[
                "lat":"24.766666",
                "lon":"79.883331"
            ]
        ],
            [
                "country":"UA",
                "name":"Tyuzler",
                "_id":"690856",
                "coord":[
                    "lat":"44.466667",
                    "lon":"34.083332"
                ]
            ],
        [
            "country":"RU",
            "name":"Zaponor’ye",
            "_id":"464737",
            "coord":[
                "lat":"55.639999",
                "lon":"38.861942"
            ]
        ],
            [
                "country":"UA",
                "name":"Il’ichëvka",
                "_id":"707716",
                "coord":[
                    "lat":"44.666668",
                    "lon":"34.383331"
                ]
            ],
        [
            "country":"UA",
            "name":"Partyzans’ke",
            "_id":"697959",
            "coord":[
                "lat":"44.833332",
                "lon":"34.083332"
            ]
        ],
            [
                "country":"RU",
                "name":"Yurevichi",
                "_id":"803611",
                "coord":[
                    "lat":"43.600555",
                    "lon":"39.934444"
                ]
            ],
        [
            "country":"GE",
            "name":"Gumist’a",
            "_id":"614371",
            "coord":[
                "lat":"43.026943",
                "lon":"40.973888"
            ]
        ],
            [
                "country":"GE",
                "name":"Ptitsefabrika",
                "_id":"874560",
                "coord":[
                    "lat":"43.183613",
                    "lon":"40.290558"
                ]
            ],
        [
            "country":"GE",
            "name":"Orekhovo",
            "_id":"874652",
            "coord":[
                "lat":"43.351391",
                "lon":"40.146111"
            ]
        ],
            [
                "country":"NG",
                "name":"Birim",
                "_id":"2347078",
                "coord":[
                    "lat":"10.062094",
                    "lon":"9.997027"
                ]
            ],
        [
            "country":"RU",
            "name":"Priiskovyy",
            "_id":"2051302",
            "coord":[
                "lat":"42.819168",
                "lon":"132.822495"
            ]
        ],
            [
                "country":"RU",
                "name":"Dzhaga",
                "_id":"563692",
                "coord":[
                    "lat":"43.25",
                    "lon":"42.650002"
                ]
            ],
        [
            "country":"RU",
            "name":"Tret’ya Rota",
            "_id":"481725",
            "coord":[
                "lat":"43.741943",
                "lon":"39.681389"
            ]
        ],
            [
                "country":"GB",
                "name":"Ruislip",
                "_id":"2638976",
                "coord":[
                    "lat":"51.573441",
                    "lon":"-0.42341"
                ]
            ],
        [
            "country":"DE",
            "name":"Karow",
            "_id":"2892705",
            "coord":[
                "lat":"52.609039",
                "lon":"13.48117"
            ]
        ],
            [
                "country":"DE",
                "name":"Gatow",
                "_id":"2922336",
                "coord":[
                    "lat":"52.483238",
                    "lon":"13.18285"
                ]
            ],
        [
            "country":"ZA",
            "name":"Mkuze",
            "_id":"975511",
            "coord":[
                "lat":"-27.616409",
                "lon":"32.038609"
            ]
        ],
            [
                "country":"CN",
                "name":"Lhasa",
                "_id":"1280737",
                "coord":[
                    "lat":"29.65",
                    "lon":"91.099998"
                ]
            ],
        [
            "country":"TR",
            "name":"İstanbul",
            "_id":"745042",
            "coord":[
                "lat":"41.03508",
                "lon":"28.983311"
            ]
        ],
        [
           "country":"DO",
           "name":"Mao",
           "_id":"3496831",
           "coord":[
              "lat":"19.551861",
              "lon":"-71.078133"
           
         ]
     ],
    ]
    
    
    func fetchCities(pageNumber: Int, completion: @escaping (([Cities]?, Error?) -> Void)) {
        switch self.shouldReturnError {
            case true :
            completion(nil, NetworkError.failedFetchingData)
            case false:
                if let data = try? JSONSerialization.data(withJSONObject: self.jsonRespons, options: .fragmentsAllowed) {
                    print(data)
                    let jsonDecoder = JSONDecoder()
                    let decodedArray = try? jsonDecoder.decode([Cities].self, from: data)
                    completion(decodedArray,nil)
                        
                    } else { completion(nil, NetworkError.failedFetchingData) }
                    
                }
    }
    
    enum NetworkError: Error {
        case failedFetchingData
    }
    
}

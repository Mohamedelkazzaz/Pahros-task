//
//  NetworkTest.swift
//  Pharos AssigmentTests
//
//  Created by Mohamed Elkazzaz on 21/08/2022.
//

import XCTest
@testable import Pharos_Assigment

class NetworkTest: XCTestCase {

    var apiService: ApiService!
    
    override func setUp() {
        apiService = NetworkingMock(shouldReturnError: false)
    }
    override func tearDown() {
        apiService = nil
    }
    
    
    func testFetchingMockingData() {
        apiService.fetchCities(pageNumber: 1) { city, errot in
            XCTAssertEqual(city?.count ?? 0, 38)
        }
    }
}

//
//  SwiftUI_GooglePlaceSearchApp.swift
//  SwiftUI-GooglePlaceSearch
//
//  Created by Ikmal Azman on 25/03/2023.
//

import SwiftUI
import GooglePlaces

@main
struct SwiftUI_GooglePlaceSearchApp: App {
    init() {
        setupGooglePlace()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

private extension SwiftUI_GooglePlaceSearchApp {
    func setupGooglePlace() {
        GMSPlacesClient.provideAPIKey(APIKey)
    }
}

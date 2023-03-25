//
//  ContentView.swift
//  SwiftUI-GooglePlaceSearch
//
//  Created by Ikmal Azman on 25/03/2023.
//

import SwiftUI

struct ContentView: View {
    @State var locationQuery : String = ""
    @StateObject var locationHandler = PlaceSearch()
    
    var body: some View {
        NavigationView {
            VStack {
                emptyStateView
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .searchable(text: $locationQuery) {
            ForEach(locationHandler.searchedLocation, id: \.self) { place in
                Text(place)
            }
        }
        .onChange(of: locationQuery) { query in
            locationHandler.searchLocation(query)
        }
    }
    
    var emptyStateView : some View {
        HStack {
            Image(systemName: "location.viewfinder")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Where do you wanna go?")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

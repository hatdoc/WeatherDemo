//
//  ContentView.swift
//  WeatherDemo
//
//  Created by Jed Park on 9/5/2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManager = LocationManager()
    
    var body: some View {
        VStack {
            
            if let location = locationManager.location {
                Text("Your coordinates are: \(location.longitude), \(location.latitude)")
                     } else {
                    if locationManager.isLoading {
                        ProgressView()
                    } else {
                        WelcomeView()
                            .environmentObject(locationManager)
                    }
                }
        }
        .background(Color(hue: 0.656, saturation: 0.787, brightness: 0.354))
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}

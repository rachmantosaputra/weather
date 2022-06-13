//
//  WelcomeView.swift
//  weather
//
//  Created by Rachmanto Saputra on 09/06/22.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager: LocationManager
    
    var body: some View {
        VStack {
            VStack(spacing: 20) {
                 Text("Welcome to tripX")
                    .bold().font(.title)
                
                Text("Share your movement")
                    .padding()
            }
            .multilineTextAlignment(.center)
            .padding()
            
            LocationButton(.shareCurrentLocation) {
            locationManager.requestLocation()
            }
            .cornerRadius(30)
            .symbolVariant(.fill)
            .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}

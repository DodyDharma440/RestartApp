//
//  HomeView.swift
//  RestartApp
//
//  Created by Dodi Aditya on 26/04/23.
//

import SwiftUI

struct HomeView: View {
    // Mark: - Property
    
    @AppStorage("onboarding") var isOnboarding: Bool = false
    
    
    // Mark: - Body
    
    var body: some View {
        VStack(spacing: 20.0) {
            Text("Home Page")
                .font(.largeTitle)
            
            Button(action: {
                isOnboarding = true
            }) {
                Text("Restart")
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

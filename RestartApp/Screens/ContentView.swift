//
//  ContentView.swift
//  RestartApp
//
//  Created by Dodi Aditya on 26/04/23.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onboarding") var isOnboarding: Bool = true
    
    var body: some View {
        ZStack {
            if isOnboarding {
                OnboardingView()
            } else {
                HomeView()
            }
        }
        .animation(.easeInOut(duration: 0.5), value: isOnboarding)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

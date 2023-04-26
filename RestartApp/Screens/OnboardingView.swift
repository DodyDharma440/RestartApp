//
//  OnboardingView.swift
//  RestartApp
//
//  Created by Dodi Aditya on 26/04/23.
//

import SwiftUI

struct OnboardingView: View {
    // Mark: - Property
    
    @AppStorage("onboarding") var isOnboarding: Bool = true
    
    // Mark: - Body
    
    
    var body: some View {
        VStack(spacing: 20.0) {
            Text("Onboarding")
                .font(.largeTitle)
            
            Button(action: {
                isOnboarding = false
            }) {
                Text("Start")
            }
        } // VStack
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

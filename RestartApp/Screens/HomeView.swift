//
//  HomeView.swift
//  RestartApp
//
//  Created by Dodi Aditya on 26/04/23.
//

import SwiftUI

struct HomeView: View {
    // MARK: - Property
    
    @AppStorage("onboarding") var isOnboarding: Bool = false
    
    @State private var isAnimated: Bool = false
    
    
    // MARK: - Body
    
    var body: some View {
        VStack(spacing: 20.0) {
            // MARK: - Header
            
            Spacer()
            
            ZStack {
                CircleGroupView(shapeColor: .gray, shapeOpacity: 0.1)
                
                Image("character-2")
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .offset(y: isAnimated ? 35 : -35)
                    .animation(.easeInOut(duration: 4).repeatForever(), value: isAnimated)
            } // ZStack
            
            // MARK: - Center
            
            Text("The time that leads to mastery is dependent on the intensity of our focus.")
                .font(.title3)
                .fontWeight(.light)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding()
            
            // MARK: - Footer
            
            Spacer()
            
            Button(action: {
                withAnimation {
                    isOnboarding = true
                    playSound(name: "success", type: "m4a")
                }
            }) {
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                Text("Restart")
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.bold)
            } // Button
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
        } // VStack
        .onAppear(perform: {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
                isAnimated = true
            })
        })
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

//
//  CircleGroupView.swift
//  RestartApp
//
//  Created by Dodi Aditya on 26/04/23.
//

import SwiftUI

struct CircleGroupView: View {
    @State var shapeColor: Color
    @State var shapeOpacity: Double
    
    var body: some View {
        ZStack {
            Circle().stroke(shapeColor.opacity(shapeOpacity), lineWidth: 40).frame(width: 260.0, height: 260.0, alignment: .center)
            Circle().stroke(shapeColor.opacity(shapeOpacity), lineWidth: 80).frame(width: 260, height: 260, alignment: .center)
        } // ZStack
    }
}

struct CircleGroupView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea(.all, edges: .all)
            CircleGroupView(shapeColor: .white, shapeOpacity: 0.2)
        }
    }
}

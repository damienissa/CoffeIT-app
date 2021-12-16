//
//  LoaderView.swift
//  CoffeIT-app
//
//  Created by Dmytro Virych on 2021-12-16.
//

import SwiftUI

struct LoaderView: View {
    @State var scaleState = 0
    @State var rotationState = 0
    
    var rotationAnimation: Animation {
        Animation.linear(duration: 0.8).repeatForever(autoreverses: false)
    }
    var scaleAnimation: Animation {
        Animation.easeInOut(duration: 2).repeatForever()
    }
    var body: some View {
        
        Image("spinner")
                .foregroundColor(.green)
                .frame(width: 200, height:  200)
                .animation(nil, value: 0)
                .scaleEffect(scaleState.isMultiple(of: 2) ? 0.8 : 1.2)
                .animation(scaleAnimation, value: scaleState)
                .rotationEffect(.degrees(rotationState.isMultiple(of: 2) ? 0 : 360))
                
                .animation(rotationAnimation, value: rotationState)
                .onAppear {
                    scaleState += 1
                    rotationState += 1
                }
    }
}

struct LoaderView_Previews: PreviewProvider {
    static var previews: some View {
        LoaderView()
    }
}

//
//  CustomComposableView.swift
//  ComposableViewsAndAnimations
//
//  Created by Russell Gordon on 2021-02-24.
//

import SwiftUI

struct CustomComposableView: View {
    
    // MARK: Stored properties
   
    
    //Control the rotation angle
    @State var currentRotationAngle = Angle.degrees(0)
    
    @State var XOffset = -100.0
    @State var YOffset = -100.0
    @State private var hue: Color = .green
    @State var triangleAtRight = false
    let timer = Timer.publish(every: 0.50, on: .main, in: .common).autoconnect()

    
    
    //MARK: Computed properties
    var body: some View {
        ZStack    {
            Image(systemName: "triangle")
                .resizable()
                .frame(width: 60, height: 60)
            
                .foregroundColor(hue)
        }
        .offset(x: triangleAtRight ? 100 : -100, y: YOffset)
        .rotationEffect(currentRotationAngle, anchor: .center)
        .onReceive(timer) { Input in
            withAnimation(
                Animation
                    .default

            )
            
             {
                // Move the circle to the right
                 triangleAtRight.toggle()
                 
                 hue = Color(hue: Double.random(in: 1...360) / 360.0,
                             saturation: 0.8,
                             brightness: 0.8)

            }
            
          

        }
     }
  }

struct CustomComposableView_Previews: PreviewProvider {
    static var previews: some View {
        CustomComposableView()
    }
  }


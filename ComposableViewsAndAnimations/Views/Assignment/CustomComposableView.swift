//
//  CustomComposableView.swift
//  ComposableViewsAndAnimations
//
//  Created by Russell Gordon on 2021-02-24.
//

import SwiftUI

struct CustomComposableView: View {
    
    // MARK: Stored properties
    @State private var offset = 0.0
    
    
    //MARK: Computed properties
    var body: some View {
        ZStack    {
            Circle()
                .frame(width: 50, height: 50)
            Text("Ok")
                .foregroundColor(.white)
        }
        .offset(x: offset, y: 0)
        .animation(.default)
        .onTapGesture {
            // Move the circle to the right
            offset = 100.0
        }
     }
  }

struct CustomComposableView_Previews: PreviewProvider {
    static var previews: some View {
        CustomComposableView()
    }
  }


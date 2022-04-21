//
//  ExerciseOneView.swift
//  ComposableViewsAndAnimations
//
//  Created by Russell Gordon on 2021-02-23.
//

import SwiftUI
import UIKit

struct ExerciseOneView: View {
    
    // MARK: Stored properties
    
    // Controls whether this view is showing or not
    @Binding var showThisView: Bool
        
    // Whether to apply the animation
    @State private var useAnimation = false
    @State private var col: Color = .red

    // MARK: Computed properties

    var body: some View {
        
        NavigationView {
            
            VStack {

                Circle()
                NavigationView {
                    
                  
                            
                            .scaleEffect(useAnimation)
                            .foregroundColor(.blue)
                            .onTapGesture {
                                if scaleFactor > 0.2 {
                                    
                                    scaleFactor -= 0.1
                                } else {
                                    
            scaleFactor = 1
                                    
                col = Color(hue: Double.random(in: 1...360/ 360.0,
                        saturation: 0.8,
                        brightness: 0.8)
                                }
                
                            }

                    .frame(width: 200, height: 200)
                   
                
            }
            .navigationTitle("Exercise 1")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button("Done") {
                        hideView()
                    }
                }
            }

        }
        
    }
    
    // MARK: Functions
    
    // Makes this view go away
    func hideView() {
        showThisView = false
    }
    
}

struct ExerciseOneView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseOneView(showThisView: .constant(true))
    }
}

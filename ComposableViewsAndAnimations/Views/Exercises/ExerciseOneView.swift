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
    @State private var size: CGFloat = 200.0
    @State private var scaleEffect: CGFloat = 1.0

    // MARK: Computed properties

    var body: some View {
        
        NavigationView {
            
            VStack {

                Circle()
                    .scaleEffect(scaleEffect)
                    .animation(.default)
                    .frame(width: size, height: size)
                    .animation(.default)
                    .onTapGesture {
                        scaleEffect = 2.0
                    }
                    .onTapGesture {
                        size = size - 50
                    }
                   
                
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

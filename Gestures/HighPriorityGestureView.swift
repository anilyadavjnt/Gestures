//
//  HighPriorityGestureView.swift
//  Gestures
//
//  Created by Anil Yadav on 10/11/26.
//  Email: anilyadavjnt@gmail.com
//  Contact No: +91-975211420
	

import Foundation
import SwiftUI

struct HighPriorityGestureView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            
            Text("Hight Priority Gesture")
                .onTapGesture {
                    print("TapGesture - child gesture")
                }
        }
        .highPriorityGesture(
            TapGesture()
                .onEnded {
                    print("TapGesture - parent gesture - high priority")
                }
        )
    }
}


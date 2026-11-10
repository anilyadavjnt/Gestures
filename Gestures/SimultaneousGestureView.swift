//
//  SimultaneousGestureView.swift
//  Gestures
//
//  Created by Anil Yadav on 10/11/26.
//  Email: anilyadavjnt@gmail.com
//  Contact No: +91-975211420
	

import Foundation
import SwiftUI

struct SimultaneousGestureView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            
            Text("Simultaneous Gesture")
                .onTapGesture {
                    print("TapGesture - child gesture - simultaneous")
                }
        }
        .simultaneousGesture(
            TapGesture()
                .onEnded {
                    print("TapGesture - parent gesture - simultaneous priority")
                }
        )
    }
}


//
//  LongPressedView.swift
//  Gestures
//
//  Created by Anil Yadav on 10/11/26.
//  Email: anilyadavjnt@gmail.com
//  Contact No: +91-975211420
	

import Foundation
import SwiftUI

struct LongPressedView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Long Pressed")
                .onLongPressGesture {
                    print("Long Pressed")
                }
            
            Text("2 sec pressed")
                .onLongPressGesture(minimumDuration: 2) {
                    print("Long Pressed after 2 sec")
                }
            
            Text("Long Press In Progress")
                .onLongPressGesture(minimumDuration: 5) {
                    // after 5 sec this will run
                    print("Long Pressed after 5 sec")
                } onPressingChanged: { inProgress in
                    print("In progress: \(inProgress)")
                }
        }
    }
}


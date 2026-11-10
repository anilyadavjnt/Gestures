//
//  SingleTapView.swift
//  Gestures
//
//  Created by Anil Yadav on 10/11/26.
//  Email: anilyadavjnt@gmail.com
//  Contact No: +91-975211420
	

import Foundation
import SwiftUI

struct SingleTapView: View {
    @State private var currentAmount = 0.0
    @State private var finalAmount = 1.0
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            
            Text("Hello, Single!")
                .onTapGesture {
                    print("TapGesture - single gesture")
                }
        }
        .scaleEffect(finalAmount + currentAmount)
        .gesture(
            MagnificationGesture()
                .onChanged{ amount in
                    currentAmount = amount - 1
                }
                .onEnded{ amount in
                    finalAmount += currentAmount
                    currentAmount = 0
                }
        )
    }
}


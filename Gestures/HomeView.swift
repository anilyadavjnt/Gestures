//
//  HomeView.swift
//  Gestures
//
//  Created by Anil Yadav on 10/11/26.
//  Email: anilyadavjnt@gmail.com
//  Contact No: +91-975211420
	

import Foundation
import SwiftUI

struct HomeView: View {
    @State private var index = 0
    
    let viewList: [AnyView] = [
        AnyView(SingleTapView()),
        AnyView(MultipleTapView()),
        AnyView(LongPressedView()),
        AnyView(NestedGestureView()),
        AnyView(HighPriorityGestureView()),
        AnyView(SimultaneousGestureView()),
        AnyView(SequenceGestureView())
    ]
    
    var body: some View {
        VStack {
            Spacer()
            
            viewList[index]
            
            Spacer()
            
            HStack {
                if index != 0 {
                    Button("Previous") {
                        if index > 0 {
                            index = index - 1
                        }
                    }
                }
                
                
                Spacer()
                
                if index != viewList.count - 1 {
                    Button("Next") {
                        if index < viewList.count - 1 {
                            index = index + 1
                        }
                    }
                }
            }
            .padding()
        }
    }
}


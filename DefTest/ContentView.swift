//
//  ContentView.swift
//  DefTest
//
//  Created by Franklin Byaruhanga on 14/08/2023.
//

import SwiftUI
import Foundation
import Defaults
import StoreKit

extension Defaults.Keys {
    static let localSavedStudents = Key<Set<String>>("localSaved", default: Set<String>())
//    static let distanceMaxValue = Key<Double>("distanceMaxValue", default: 320.0)
}

struct ContentView: View {
    var body: some View {
        VStack(spacing: 40) {
            Image(systemName: "soccerball")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Football School")
            NavigationLink {
                StudentListView()
            } label: {
                Text("Click for Student List")
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

struct StudentListView: View {
    @Environment(\.requestReview) private var requestReview
    var body: some View {
        VStack(spacing: 40) {
            Text("Student List")
                NavigationLink {
                    StudentDetailView()
                } label: {
                    Text("Click for Student Detail")
                }
                .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

struct StudentDetailView: View {
    @Default(.localSavedStudents) var localSavedStudents
//    @Default(.distanceMaxValue) var distanceMaxValue
    var body: some View {
        VStack(spacing: 40) {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

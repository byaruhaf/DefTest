//
//  ContentView.swift
//  DefTest
//
//  Created by Franklin Byaruhanga on 14/08/2023.
//

import SwiftUI
import Foundation
import StoreKit

struct ContentView: View {
    var body: some View {
        let _ = Self._printChanges()
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
        let _ = Self._printChanges()
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
final class Test: ObservableObject {}

struct StudentDetailView: View {
    @ObservedObject var test = Test()

    var body: some View {
        let _ = Self._printChanges()
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

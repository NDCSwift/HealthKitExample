//
//  Project: HealthKitExample
//  File: ContentView.swift
//  Created by Noah Carpenter
//  🐱 Follow me on YouTube! 🎥
//  https://www.youtube.com/@noahdoescoding
//  Like and Subscribe for coding tutorials and fun! 💻✨
//  Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
//  Dream Big, Code Bigger
//

import SwiftUI

// Main view structure for the app
struct ContentView: View {
    // State variable to store step count retrieved from HealthKit
    @State private var stepCount: Double = 8912
    
    // Instance of HealthStore to interact with HealthKit
    let healthStore = HealthStore()
    
    var body: some View {
        VStack {
            // Display title for step count
            Text("Today's Steps")
                .font(.title)
            
            // Display the step count, formatted as an integer
            Text("\(Int(stepCount))")
                .bold()
                .font(.largeTitle)
            
            // Button to fetch step count from HealthKit
            Button("Fetch Steps") {
                healthStore.fetchStepCount { steps in
                    stepCount = steps  // Update step count when fetched
                }
            }
            .buttonStyle(.borderedProminent) // Style the button
            .tint(.brown) // Set button color
            
        }
        .padding() // Add padding around the VStack
        .onAppear {
            requestHealthKitAccess() // Request HealthKit permissions when view appears
        }
    }
    
    // Function to request authorization for HealthKit access
    func requestHealthKitAccess() {
        healthStore.requestAuthorization { success, error in
            if let error = error {
                print("HealthKit authorization failed: \(error.localizedDescription)")
            } else {
                print("HealthKit authorization was successful")
            }
        }
    }
}

// Preview provider to display the ContentView in Xcode's preview window
#Preview {
    ContentView()
}

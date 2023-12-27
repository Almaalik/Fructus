//
//  FructusApp.swift
//  Fructus
//
//  Created by Abdul Maalik on 02/09/23.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
            OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}

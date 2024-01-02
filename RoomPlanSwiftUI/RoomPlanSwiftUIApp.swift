//
//  RoomPlanSwiftUIApp.swift
//  RoomPlanSwiftUI
//
//  Created by tiyas aria on 10/12/23.
//

import SwiftUI
import RoomPlan

@main
struct RoomPlanSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            checkDeciveView()
        }
    }
}


@ViewBuilder
func checkDeciveView() -> some View {
    if RoomCaptureSession.isSupported{
        ContentView()
    } else {
        UnsupportedDeviceView()
    }
}

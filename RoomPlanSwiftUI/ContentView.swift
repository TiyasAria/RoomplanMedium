//
//  ContentView.swift
//  RoomPlanSwiftUI
//
//  Created by tiyas aria on 10/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack(spacing:10) {
                Text("RoomPlan Feature")
                    .font(.title)
                    .bold()
                Text("The roomplan feature is a feature developed by Apple and released at WWDC 2022. If you want to use roomplan, you are required to have an iOS device that supports Lidar, because roomplan cannot run without a Lidar Sensor.")
                    .multilineTextAlignment(.center)
                
                Text("Tap button start to start scanning and follow the instruction")
                    .multilineTextAlignment(.center)
                    .padding(.bottom,50)
                
                NavigationLink(destination: RoomPlanView()) {
                    Text("Start Scanning")
                        .padding(10)
                }
                .buttonStyle(.borderedProminent)
                .cornerRadius(30)
            }
            .padding(.horizontal,16)
        }
    }
}

#Preview {
    ContentView()
}

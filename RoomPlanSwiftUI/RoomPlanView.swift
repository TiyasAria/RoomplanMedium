//
//  RoomPlanView.swift
//  RoomPlanSwiftUI
//
//  Created by tiyas aria on 10/12/23.
//

import SwiftUI

struct RoomPlanView: View {
    var roomController = RoomController.instance
    @State private var doneScanning : Bool = false
    var body: some View {
        ZStack{
            RoomCaptureViewRepresentable()
                .onAppear(perform: {
                    roomController.startSession()
                })
            
            VStack{
                Spacer()
                if doneScanning == false {
                    Button(action: {
                        roomController.stopSession()
                        self.doneScanning = true
                    }, label: {
                        Text("Done Scanning")
                            .padding(10)
                    })
                    .buttonStyle(.borderedProminent)
                    .cornerRadius(30)
                }
              
            }
            .padding(.bottom,10)
        }
    }
}

#Preview {
    RoomPlanView()
}

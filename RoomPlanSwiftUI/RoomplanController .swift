//
//  RoomplanController .swift
//  RoomPlanSwiftUI
//
//  Created by tiyas aria on 10/12/23.
//

import RoomPlan
import SwiftUI


class RoomController :  RoomCaptureViewDelegate {
    func encode(with coder: NSCoder) {
        fatalError("Not Needed")
    }
    
    required init?(coder: NSCoder) {
        fatalError("Not Needed")
    }
    
   
    
//    func encode(with coder: NSCoder) {
//        fatalError("Not Needed")
//    }
//    
//    required dynamic init?(coder: NSCoder) {
//        fatalError("Not Needed")
//    }
    
    static var instance = RoomController()
    var captureView  : RoomCaptureView
    var sessionConfig : RoomCaptureSession.Configuration = RoomCaptureSession.Configuration()
    var finalResult : CapturedRoom?
    
    
    init() {
        captureView = RoomCaptureView(frame: .zero)
        captureView.delegate = self
    }
    
    func captureView(shouldPresent roomDataForProcessing: CapturedRoomData, error: (Error)?) -> Bool {
        return true
    }
    
    
    func captureView(didPresent processedResult: CapturedRoom, error: (Error)?) {
        finalResult = processedResult
    }
    
//    to start scanning
    func startSession() {
        captureView.captureSession.run(configuration: sessionConfig)
    }
    
//    to stop session
    func stopSession() {
        captureView.captureSession.stop()
    }
}


struct RoomCaptureViewRepresentable : UIViewRepresentable {
    
    func makeUIView(context: Context) -> RoomCaptureView{
        RoomController.instance.captureView
    }
    
    func updateUIView(_ uiView: RoomCaptureView, context: Context) {
        
    }
}

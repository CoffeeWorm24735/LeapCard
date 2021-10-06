//
//  NfcActionGroup.swift
//  Leap_Card
//
//  Created by Charlie Brady on 24/08/2021.
//

import os
import CoreNFC
import UIKit
import Foundation
class NfcActionGroup:UITableViewController, NFCTagReaderSessionDelegate {
    //Stubs
    func tagReaderSessionDidBecomeActive(_ session: NFCTagReaderSession) {
        //
    }
    
    func tagReaderSession(_ session: NFCTagReaderSession, didInvalidateWithError error: Error) {
        //
    }
    
   
    var readerSession: NFCTagReaderSession?
    var app: Data?
    var cardNumber: Data?
    var mifareFamily: NFCMiFareFamily?
    var session: NFCNDEFReaderSession?
    var cardNum: String?
    
    
//    func scanCard(){
//        session = NFCReaderSession(delegate: self, queue: nil, invalidateAfterFirstRead: true)
//        session?.begin()
//    }
//
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
     func scanCard(){
        guard NFCNDEFReaderSession.readingAvailable else{
            let alertController = UIAlertController(
                title: "Scanning not supported",
                message: "Card scanning is not supported on this device",
                preferredStyle: .alert
                 )
            alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alertController, animated: true, completion: nil)
            return

        }

        readerSession = NFCTagReaderSession(pollingOption: [.iso14443, .iso15693, .iso18092], delegate: self, queue: nil)
        readerSession?.alertMessage = "Hold the top of your phone near your LeapCard"
        readerSession?.begin()
    }

//    func tagReaderSession(_ session: NFCTagReaderSession, didDetect tags: [NFCTag]) {
//        print(0)
//        if case let NFCTag.miFare(tag) = tags.first! {
//        session.connect(to: tags.first!) { (error: Error?) in
//        let tagUIDData = tag.identifier
//        var byteData: [UInt8] = []
//        tagUIDData.withUnsafeBytes { byteData.append(contentsOf: $0) }
//        var uidString = ""
//        for byte in byteData {
//        let decimalNumber = String(byte, radix: 16)
//        if (Int(decimalNumber) ?? 0) < 16 { // add leading zero
//        uidString.append("0\(decimalNumber)")
//        } else {
//        uidString.append(decimalNumber)
//        }
//        }
//        debugPrint("\(byteData) converted to Tag UID: \(uidString)")
//        }
//        }
//    }
    
    func tagReaderSession(_ session: NFCTagReaderSession, didDetect tags: [NFCTag]) {
    print("got a Tag!")
    session.alertMessage = "Tag read success."
    session.invalidate()
    print("\(tags)")

    let nfcTag = tags.first!

    print("connecting to Tag!")

    readerSession?.connect(to: nfcTag) { (error1: Error?) in

    if error1 != nil{
    print(error1!)

    }

    if case let .iso7816(sTag) = nfcTag {
    print("sellecting application on card!")

    let selectApp = NFCISO7816APDU.init(data:Data.init([0,0xa4,0x04, 0x00, 0x7, 0xd4, 0x10, 0x00, 0x00, 0x03, 0x00, 0x01]))

    sTag.sendCommand(apdu: selectApp!) { (data:Data, int1:UInt8, int2:UInt8, error:Error?) in

    if error != nil{
    print(error!)

    return

    }else if data.count > 2{
    if data[7] != 0{
    print("select app worked")

    self.app = data

    //let cardNumber = (BinaryTools.getDataSection(data: self.app!, offset: 8, length: 8)).hexEncodedString()

    DispatchQueue.main.async {
    self.cardNum = "Card Number"

            }

        }
    }
    
}
    
}
    

    }
    }
    }

//
//  main.swift
//  protocols and delegate
//
//  Created by Subham Kumar on 20/02/24.
//

protocol AdvancedLifeSupport{
    
    func performCPR(num: Int)
}

class EmergencyCallHandler {
    
    var delegate: AdvancedLifeSupport?
    
    let num = 5
    
    func assessSituation(){
        print("What happened?")
        
    }
    
    func medicalEmergency(){
        
        delegate?.performCPR(num: 5)
        
    }
}


class Doctor: AdvancedLifeSupport{
    

    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
  
    
    func performCPR(num: Int) {
        print("Doctor \(num) is performing CPR....")
    }
    
    func canSing(){
        
        print("Doctor is singing")
    }
    
}


class Surgeon: AdvancedLifeSupport{
    
    init(newHandler: EmergencyCallHandler) {
        newHandler.delegate = self
    }

    func performCPR(num: Int) {
        print("Surgeon is performing cpr")
    }

}


let emilio = EmergencyCallHandler()
let subham = Doctor(handler: emilio)

//let toshika = Surgeon(newHandler: emilio)

emilio.assessSituation()
emilio.medicalEmergency()


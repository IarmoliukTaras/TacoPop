//
//  DataService.swift
//  TacoPop
//
//  Created by 123 on 19.03.17.
//  Copyright © 2017 taras team. All rights reserved.
//

import Foundation

protocol DataServiceDelegate: class {
    func deliciousTacoDataLoaded()
}

class DataService {
    static let instance = DataService()
    
    weak var delegate: DataServiceDelegate?
    
    var tacoArray: Array<Taco> = []
    
    func loadDeliciousTacoData() {
        
        
        let path = Bundle.main.path(forResource: "TacoPOPData", ofType: "csv")
        
        do {
            let csv = try CSV(contentsOfURL: path!)
            let rows = csv.rows
            
            for row in rows {
                let id = Int(row["id"]!)!
                let productName = row["productName"]!
                let shellId = Int(row["shellId"]!)!
                let proteinId = Int(row["proteinId"]!)!
                let condimentsId = Int(row["condimentsId"]!)!
                
                let taco = Taco(id: id, productName: productName, shellId: shellId, proteinId: proteinId, condimentId: condimentsId)
                tacoArray.append(taco)
                
            }
        } catch let err as NSError {
            print(err.debugDescription)
        }
        
        delegate?.deliciousTacoDataLoaded()
    }
}

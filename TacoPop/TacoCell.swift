//
//  TacoCell.swift
//  TacoPop
//
//  Created by 123 on 19.03.17.
//  Copyright © 2017 taras team. All rights reserved.
//

import UIKit

class TacoCell: UICollectionViewCell, NibLoadableView, Shaleable{

    @IBOutlet weak var tacoImage: UIImageView!
    @IBOutlet weak var tacoLbl: UILabel!
    
    var taco: Taco!
    
    func configureCell(taco: Taco) {
        self.taco = taco
        self.tacoImage.image = UIImage(named: taco.proteinId.rawValue)
        self.tacoLbl.text = taco.productName
    }
    

}

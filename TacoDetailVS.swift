//
//  TacoDetailVS.swift
//  TacoPop
//
//  Created by 123 on 19.03.17.
//  Copyright © 2017 taras team. All rights reserved.
//

import UIKit

class TacoDetailVS: UIViewController {
    
    var taco: Taco!
    
    @IBAction func backPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBOutlet weak var tacoNameLbl: UILabel!
    @IBOutlet weak var tacoShellLbl: UILabel!
    @IBOutlet weak var tacoImg: UIImageView!
    @IBOutlet weak var tacoCondimentLbl: UILabel!
    @IBOutlet weak var tacoProtienLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tacoNameLbl.text = taco.productName
        tacoShellLbl.text = taco.shellId.rawValue.capitalized
        tacoProtienLbl.text = taco.proteinId.rawValue.capitalized
        tacoCondimentLbl.text = taco.condimentId.rawValue.capitalized
        tacoImg.image = UIImage(named: taco.proteinId.rawValue)
    }

}

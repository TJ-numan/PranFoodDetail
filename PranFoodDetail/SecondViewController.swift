//
//  SecondViewController.swift
//  PranFoodDetail
//
//  Created by Abdullah Al Numan(AAN) on 12/11/19.
//  Copyright © 2019 Abdullah Al Numan(AAN). All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var img: UIImageView!
    
    var imging = UIImage()
    var texting = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        img.image = imging
        // Do any additional setup after loading the view.
    }
    

}

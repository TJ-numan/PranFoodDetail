//
//  ViewController.swift
//  PranFoodDetail
//
//  Created by Abdullah Al Numan(AAN) on 12/10/19.
//  Copyright © 2019 Abdullah Al Numan(AAN). All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell
               cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell")
               cell.textLabel?.text = arrr[indexPath.row]
         cell.imageView?.image = imagearr[indexPath.row]
              
               
               return cell
    }
    
    
   var arrr = ["Chocolate Cacke","Masala Ruti","Jhal Muri"]
    var imagearr = [UIImage(named: "chips"),UIImage(named: "muri"),UIImage(named: "juice")]

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    

        public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           
            return arrr.count
        }
        
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
        vc?.imging = imagearr[indexPath.row]!
        self.navigationController?.pushViewController(vc!, animated: true)
}

}

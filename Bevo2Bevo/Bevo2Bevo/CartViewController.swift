//
//  CartViewController.swift
//  Bevo2Bevo
//
//  Created by Anushka Khatri on 2/3/24.
//

import UIKit

class CartViewController: UIViewController {

    @IBOutlet var givenOrTaken2: UILabel!
    @IBOutlet var itemName2: UILabel!
    @IBOutlet var quantity2: UILabel!
    @IBOutlet var quantity: UILabel!
    @IBOutlet var givenOrTaken: UILabel!
    @IBOutlet var itemName: UILabel!
    var numMilkTaken = 0;
    var numMilkGiven = 0;
    var numTamponsTaken = 0;
    var numTamponsGiven = 0;
    var item1 = "";
    var item2 = "";
    var quant1 = 0;
    var quant2 = 0;
    var giveTake1 = false;
    var giveTake2 = false;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        itemName.text = item1;
        itemName2.text = item2;
        quantity.text = String(quant1);
        quantity2.text = String(quant2);
        
        if(giveTake1) {
            givenOrTaken.text = "Given";
        }
        else {
            givenOrTaken.text = "Taken";
        }
        
        if(giveTake2) {
            givenOrTaken2.text = "Given";
        }
        else {
            givenOrTaken2.text = "Taken";
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

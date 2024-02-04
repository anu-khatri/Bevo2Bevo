//
//  FoodViewController.swift
//  Bevo2Bevo
//
//  Created by Anushka Khatri on 2/3/24.
//

import UIKit

class FoodViewController: UIViewController {

    var numMilkGiven = 0;
    var numMilkTaken = 0;
    var given = false;
    var quantity = 0;
    @IBOutlet var takeMac: UIButton!
    @IBOutlet var takeApp: UIButton!
    @IBOutlet var giveAp: UIButton!
    @IBOutlet var takeYog: UIButton!
    @IBOutlet var giveYog: UIButton!
    @IBOutlet var takeSoup: UIButton!
    @IBOutlet var giveSoup: UIButton!
    @IBOutlet var takeRam: UIButton!
    @IBOutlet var giveRam: UIButton!
    @IBOutlet var giveMac: UIButton!
    @IBOutlet var takeMilk: UIButton!
    @IBOutlet var giveMilk: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func giveMilk(_ sender: Any) {
        numMilkGiven = numMilkGiven + 1;
        given = true;
        quantity = quantity + 1;
    }
    
    @IBAction func takeMilk(_ sender: Any) {
        numMilkTaken = numMilkTaken + 1;
        given = false;
        quantity = quantity + 1;
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "toSupplies")
        {
            let supVC = segue.destination as! SuppliesViewController
            supVC.numMilkGiven = numMilkGiven;
            supVC.numMilkTaken = numMilkTaken;
            supVC.givenMilk = given;
            supVC.item1 = "Milk";
            supVC.quantityMilk = quantity;
        }
    }
    
    @IBAction func toCart(_ sender: Any) {
        performSegue(withIdentifier: "toSupplies", sender: self);
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

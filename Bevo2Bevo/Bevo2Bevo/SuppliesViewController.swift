//
//  SuppliesViewController.swift
//  Bevo2Bevo
//
//  Created by Anushka Khatri on 2/3/24.
//

import UIKit

class SuppliesViewController: UIViewController {

    var numTamponsGiven = 0;
    var numTamponsTaken = 0;
    var numMilkTaken = 0;
    var numMilkGiven = 0;
    var givenMilk = false;
    var givenTamp = false;
    var quantityTamp = 0;
    var quantityMilk = 0;
    var item1 = "";
    @IBOutlet var giveTampons: UIButton!
    @IBOutlet var takeTampons: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func updateGiveTampon(_ sender: Any) {
        numTamponsGiven = numTamponsGiven + 1
        givenTamp = true
        quantityTamp = quantityTamp + 1
    }
    
    @IBAction func updateTakeTampon(_ sender: Any) {
        numTamponsTaken = numTamponsGiven + 1
        givenTamp = false
        quantityTamp = quantityTamp + 1
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "addSuppliestoCart")
        {
            let cartVC = segue.destination as! CartViewController
            cartVC.numTamponsGiven = numTamponsGiven;
            cartVC.numTamponsTaken = numTamponsTaken;
            cartVC.giveTake2 = givenTamp;
            cartVC.item2 = "Tampons";
            cartVC.quant2 = quantityTamp;
            cartVC.numMilkGiven = numMilkGiven;
            cartVC.numMilkTaken = numMilkTaken;
            cartVC.giveTake1 = givenMilk;
            cartVC.item1 = item1;
            cartVC.quant1 = quantityMilk;
        }
    }
    
    @IBAction func toCart(_ sender: Any) {
        performSegue(withIdentifier: "addSuppliestoCart", sender: self);
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

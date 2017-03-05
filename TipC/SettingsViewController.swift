//
//  SettingsViewController.swift
//  TipC
//
//  Created by Maddina, Balachandra on 3/4/17.
//  Copyright © 2017 Maddina, Balachandra. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTipControl: UISegmentedControl!
    @IBOutlet var body: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated);
        self.body.alpha = 0.75
        UIView.animate(withDuration: 1.0, delay: 0.0, animations: {
            self.body.alpha = 1
        }, completion: nil)
    }

    @IBAction func onChangeDefaultTip(_ sender: AnyObject){
        let defaults = Foundation.UserDefaults.standard
        defaults.set(defaultTipControl.selectedSegmentIndex, forKey: "defaultTip")
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

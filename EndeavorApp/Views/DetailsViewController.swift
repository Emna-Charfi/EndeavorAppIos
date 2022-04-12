//
//  DetailsViewController.swift
//  EndeavorApp
//
//  Created by iMac on 12/4/2022.
//

import UIKit

class DetailsViewController: UIViewController {
    
    //var
    var courName : String?

    @IBOutlet weak var imgCour: UIImageView!
    
    @IBOutlet weak var descriptionCour: UITextView!
    
    
    @IBAction func GoButton(_ sender: UIButton) {
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = courName
        imgCour.image = UIImage(named: courName!)

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

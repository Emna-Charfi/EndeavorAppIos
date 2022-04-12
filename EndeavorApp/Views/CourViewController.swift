//
//  CourViewController.swift
//  EndeavorApp
//
//  Created by iMac on 11/4/2022.
//

import UIKit

class CourViewController: UIViewController , UITableViewDataSource, UITableViewDelegate {
    //var
        var data = ["Flutter","JAVA","Html5","Kotlin","Python"]
    
    //UiTableView
    
    @IBOutlet weak var uiTableCour: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let mCell = tableView.dequeueReusableCell(withIdentifier: "mCellCourList")
        let contentView = mCell?.contentView
        
        let imageView = contentView?.viewWithTag(1) as! UIImageView
        let nameLabel = contentView?.viewWithTag(2) as! UILabel
       
        
        imageView.image = UIImage(named: data[indexPath.row])
        nameLabel.text = data[indexPath.row]
        

        
        return mCell!

    }
    
    //DELEGATE
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "mSegueDetailCour", sender: indexPath)
    }
    //functions
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "mSegueDetailCour" {
    
            let index = sender as! IndexPath
            let destination = segue.destination as! DetailsViewController
            destination.courName = data[index.row]
            
            
        }
        
        
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //self.title = "Cooooooooour"

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

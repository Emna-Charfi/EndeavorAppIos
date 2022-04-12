//
//  ViewController.swift
//  EndeavorApp
//
//  Created by iMac on 11/4/2022.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDelegate, UICollectionViewDataSource{
    
    //var
        var data = ["Flutter","JAVA","Html5","Kotlin","Python"]
    
    //Buttom
    
    
    @IBAction func GetCour(_ sender: UIButton) {
        
        //performSegue(withIdentifier: "segueCour", sender: sender)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let collCell = collectionView.dequeueReusableCell(withReuseIdentifier: "imgCell", for: indexPath)
        let cv = collCell.contentView
        let imageview = cv.viewWithTag(1) as! UIImageView
        imageview.image = UIImage(named: data[indexPath.row])
        
        return collCell    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


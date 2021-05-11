//
//  EditMenuViewController.swift
//  QokkyForStore
//
//  Created by Phongsakorn Srikate on 2/8/2563 BE.
//  Copyright © 2563 Phongsakorn Srikate. All rights reserved.
//

import UIKit

class EditMenuViewController: UIViewController,UICollectionViewDataSource, UICollectionViewDelegate  {
    @IBOutlet weak var label:UILabel!
       @IBOutlet weak var EditMenuSizeCollectionView: UICollectionView!
     @IBOutlet weak var EditMenuAdjunctCollectionView: UICollectionView!
    var data =  "test"
    override func viewDidLoad() {
        super.viewDidLoad()
        self.label.text = data
        // Do any additional setup after loading the view.
        EditMenuSizeCollectionView.delegate = self
                           EditMenuSizeCollectionView.dataSource = self
        EditMenuAdjunctCollectionView.delegate = self
                                  EditMenuAdjunctCollectionView.dataSource = self
    }
    

   ///// CollectionView
          func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            if(collectionView == EditMenuSizeCollectionView){
                return 5
            }else{
                return 5
            }
                     
                  }
                  
           
           func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
              if(collectionView == EditMenuSizeCollectionView){
                      let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "EditMenuSizeCollectionViewCell", for: indexPath) as! EditMenuSizeCollectionViewCell
                      return cell
              }else{
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "EditMenuAdjunctCollectionViewCell", for: indexPath) as! EditMenuAdjunctCollectionViewCell
                                     return cell
            }
            
           }
}

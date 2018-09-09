//
//  ViewController.swift
//  PagerTabViewController
//
//  Created by kashee on 09/09/18.
//  Copyright © 2018 kashee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var cellArray = [CollectionViewCell]()
    var color = [UIColor]()
    
    let parentPage = [
        ParentPage(nameTitle:"Father Name", namePlaceHolder: "name", phoneTitle: "Father Phone", phonePlaceHolder: "Phone", emailTitle: "Father Email", emailPlaceHolder: "Email", occupationTitle: "Father Occupation", occupationPlaceHolder: "Occupation", addressTitle: "Father Address", addressPlaceHolder: "Address", cityTitle: "City", cityPlaceHolder: "City", pinTitle: "Pin", pinPlaceHolder: "Pin"),
        ParentPage(nameTitle:"Mother Name", namePlaceHolder: "name", phoneTitle: "Mother Phone", phonePlaceHolder: "Phone", emailTitle: "Mother Email", emailPlaceHolder: "Email", occupationTitle: "Mother Occupation", occupationPlaceHolder: "Occupation", addressTitle: "Mother Address", addressPlaceHolder: "Address", cityTitle: "City", cityPlaceHolder: "City", pinTitle: "Pin", pinPlaceHolder: "Pin"),
        ParentPage(nameTitle:"Guardian Name", namePlaceHolder: "name", phoneTitle: "Guardian Phone", phonePlaceHolder: "Phone", emailTitle: "Guardian Email", emailPlaceHolder: "Email", occupationTitle: "Guardian Occupation", occupationPlaceHolder: "Occupation", addressTitle: "Guardian Address", addressPlaceHolder: "Address", cityTitle: "City", cityPlaceHolder: "City", pinTitle: "Pin", pinPlaceHolder: "Pin")
    ]
    
    let segmentController:UISegmentedControl = {
        let item = ["Father","Mother","Guardian"]
        let segment = UISegmentedControl(items: item)
        segment.translatesAutoresizingMaskIntoConstraints = false
        segment.selectedSegmentIndex = 0
        segment.addTarget(self, action: #selector(switchViews(sender:)), for: .valueChanged)
        return segment
    }()
    
    lazy var myCollectionView : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        layout.minimumLineSpacing = 0.0
        layout.minimumInteritemSpacing = 0.0
        let cv = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.isPagingEnabled = true
        cv.delegate = self
        cv.dataSource = self
        cv.register(CollectionViewCell.self, forCellWithReuseIdentifier: "CollectionCell")
        cv.backgroundColor = UIColor.clear
        //        cv.isUserInteractionEnabled = false
        return cv
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        color = [.green, .blue, .purple, .orange]
        
        view.addSubview(segmentController)
        view.addSubview(myCollectionView)
        segmentController.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15).isActive = true
        segmentController.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 15).isActive = true
        segmentController.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -15).isActive = true
        segmentController.heightAnchor.constraint(equalToConstant: 35).isActive = true
        myCollectionView.topAnchor.constraint(equalTo: segmentController.bottomAnchor, constant: 10).isActive = true
        myCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        myCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        myCollectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
    }

    @objc func switchViews(sender: UISegmentedControl) {
        print("mother name: \(cellArray[0].nameTextField.text!)")
        let indexPath = NSIndexPath(item: sender.selectedSegmentIndex, section: 0)
        myCollectionView.scrollToItem(at: indexPath as IndexPath, at: .centeredHorizontally, animated: true)
    }


}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    
    
    // MARK: UICollectionViewDataSource
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath) as! CollectionViewCell
//        cell.backgroundColor = color[indexPath.item]
        cell.parentPage = parentPage[indexPath.item]
        cellArray.append(cell)
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width:(collectionView.frame.width),height:(collectionView.frame.height))
    }
//
//
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        print("Collection view at row \(collectionView.tag) selected index path \(indexPath)")
//        moveToViewPostScreen(index: collectionView.tag)
//    }
    
}



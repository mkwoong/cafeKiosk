//
//  ViewController.swift
//  cafeKiosk
//
//  Created by 문기웅 on 4/1/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var categorySegmentControl: UISegmentedControl!
    @IBOutlet weak var menuCollectionView: UICollectionView!
    
    var coffeeMenuList:[MenuData] = [ameri,latte,caramel,dolce]
    var beverageMenuList:[MenuData] = [lemon,milkChoco,matcha,mango]
    var foodMenuList:[MenuData] = [chocoCake,pecanPie,cheeseCake]
    
    var menuList:[MenuData] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tappedCategory(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            menuList = coffeeMenuList
        case 1:
            menuList = beverageMenuList
        case 2:
            menuList = foodMenuList
        default:
            break
        }
        menuCollectionView.reloadData()
    }
    

}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return menuList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = menuCollectionView.dequeueReusableCell(withReuseIdentifier: "MenuCell", for: indexPath) as! MenuCell
        cell.backgroundColor = .systemGray6
        cell.menuName?.text = menuList[indexPath.row].name
        cell.menuImage.image = menuList[indexPath.row].image
        return cell
    }
}

class MenuCell:UICollectionViewCell {
    
    @IBOutlet weak var menuName: UILabel!
    @IBOutlet weak var menuImage: UIImageView!
    
    
}

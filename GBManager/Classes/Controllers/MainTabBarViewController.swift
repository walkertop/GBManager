//
//  MainTabBarViewController.swift
//  GBManager
//
//  Created by walker彬 on 2017/4/21.
//  Copyright © 2017年 walker彬. All rights reserved.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    private let titleArray = ["微信","通讯录","发现","我"]
    private let normalImageArray = [Asset.tabbarMainframe,Asset.tabbarContacts,Asset.tabbarDiscover,Asset.tabbarMe]
    private let highlightedImageArray = [Asset.tabbarMainframeHL,Asset.tabbarContactsHL,Asset.tabbarDiscoverHL,Asset.tabbarMeHL]
    private let childControllers = [MessageViewController(),ContactViewController(),DiscoverViewController(),MeViewController()]
    var navArray : [UINavigationController] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupViewControllers()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    //MARK: Private Method

    func setupViewControllers() {
        for (index,controller) in childControllers.enumerated() {
            controller.title = titleArray[index]
            controller.tabBarItem.title = titleArray[index]
            controller.tabBarItem.image = UIImage.init(named: normalImageArray[index].rawValue)
            controller.tabBarItem.selectedImage = UIImage.init(named:highlightedImageArray[index].rawValue )
            let navController = UINavigationController(rootViewController: controller)
            navArray.append(navController)
        }
        self.viewControllers = navArray
    }
}

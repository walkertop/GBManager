//
//  MainTabBarViewController.swift
//  GBManager
//
//  Created by walker彬 on 2017/4/21.
//  Copyright © 2017年 walker彬. All rights reserved.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupTabBarVc()
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
    
    func setupTabBarVc() {
        let firstVc = UIViewController()
        firstVc.view.backgroundColor = #colorLiteral(red: 1, green: 0.9937396646, blue: 0.6768518686, alpha: 1)
        firstVc.title = "首页"
        let secondVc = UIViewController()
        secondVc.view.backgroundColor = #colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1)
        secondVc.title = "第二页"

        self.viewControllers = [firstVc,secondVc]
    }

}

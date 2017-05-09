//
//  MeViewController.swift
//  GBManager
//
//  Created by walker彬 on 2017/4/25.
//  Copyright © 2017年 walker彬. All rights reserved.
//

import UIKit

class MeViewController: UIViewController{
    
    fileprivate let itemDataSource : [[(name: String, iconImage: UIImage?)]] = [
        [("",nil)],             //头像，第一组
        [("相册",nil),           //第二组
         ("收藏",nil),
         ("钱包",nil),
         ("卡包",nil)
        ],
        [("表情",nil)],           //第三组
        [("设置",nil)]]           //第四组
    
    var tableView: UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        

        // Do any additional setup after loading the view.
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

    func setupTableView() {
        tableView = UITableView(frame: UIScreen.main.bounds)
        tableView?.delegate = self as? UITableViewDelegate
        tableView?.dataSource = self as? UITableViewDataSource
        
        tableView?.register(UINib.init(nibName: "MeAvatarTableViewCell", bundle: nil), forCellReuseIdentifier: "MeAvatarTableViewCell")
        view.addSubview(tableView!)
    }
    

}

//MARK: Delegate

extension MeViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return 15
        } else {
            return 20
        }
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
       
        if indexPath.section == 0 {
            return 88
        } else {
            return 44
        }
    }
}

//MARK: @protocol - UITableViewDataSource
extension MeViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return itemDataSource.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let rows = itemDataSource[section]
        return rows.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell: MeAvatarTableViewCell = tableView.dequeueReusableCell(withIdentifier: "MeAvatarTableViewCell", for: indexPath) as! MeAvatarTableViewCell
            return cell

        } else {
            let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
            cell.accessoryType = .disclosureIndicator
            cell.textLabel?.text = itemDataSource[indexPath.section][indexPath.row].name
            cell.imageView?.image = itemDataSource[indexPath.section][indexPath.row].iconImage
            return cell
        }
    }
    
}

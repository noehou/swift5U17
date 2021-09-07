//
//  TabBarController.swift
//  HU17
//
//  Created by fangtaohou on 2021/9/7.
//

import UIKit

class TabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.isTranslucent = false
        setupLayout()
        selectedIndex = 1
    }
    
    func setupLayout() {
        let communityVC = CommunityVC()
        addChildController(communityVC,title:"社区",
                 image:UIImage(named: "tab_today"),
                 selectedImage:UIImage(named: "tab_today_selected"))
        
    }
    
    func addChildController(_ childController: UIViewController,title:String?,image:UIImage?,selectedImage:UIImage?) {
        childController.title = title
        childController.tabBarItem = UITabBarItem(title: nil, image: image?.withRenderingMode(.alwaysOriginal), selectedImage: image?.withRenderingMode(.alwaysOriginal))
        
        if UIDevice.current.userInterfaceIdiom == .phone {
            childController.tabBarItem.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
        }
        addChild(NaviController(rootViewController: childController))
    }
}


extension TabBarController {
    override var preferredStatusBarStyle: UIStatusBarStyle {
        guard let select = selectedViewController else {return .lightContent}
        return select.preferredStatusBarStyle
    }
}



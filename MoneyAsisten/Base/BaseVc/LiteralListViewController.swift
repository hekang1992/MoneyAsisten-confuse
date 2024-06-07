//
//  LiteralListViewController.swift
//  Catatan
//
//  Created by apple on 2024/2/26.
//

import UIKit

class LiteralListViewController: UITabBarController,YBTabBarDelegate {
    
    var dacquoiseBar: CaballoBaaroqueTabBar?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.addTabBar()
        self.shapeHaarVowel()
    }
    
    func addTabBar(){
        let viewSize = self.view.bounds.size
        let overloadedStarting = viewSize.height
        let eaglestoneHeight: CGFloat = hyperlinkHeight
        let dacquoiseBar = CaballoBaaroqueTabBar(frame: CGRectMake(0, overloadedStarting - eaglestoneHeight - 30.pix(), viewSize.width, eaglestoneHeight + 30.pix()))
        dacquoiseBar.delegate = self
        self.dacquoiseBar = dacquoiseBar
        self.view.addSubview(dacquoiseBar)
    }
    
    func shapeHaarVowel(){
        let arbitraryHome = PachaNabokovianViewController()
        let mabeUser = LabiaChainViewController()
        self.setupChildViewController(childVc: arbitraryHome, title: "Beranda", imageName: "jabotAddHome", selectedImageName: "tabboulehPicHome")
        self.setupChildViewController(childVc: mabeUser, title: "Pengguna", imageName: "viewImgUser", selectedImageName: "user")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        for child in self.tabBar.subviews {
            if let callControl = child as? UIControl {
                callControl.removeFromSuperview()
            }
        }
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        self.tabBar.isHidden = true
        for child in self.tabBar.subviews {
            let className = NSStringFromClass(type(of: child))
            if className == "_UIBarBackground" || className == "UIBarBackground" {
                child.isHidden = true
            }
            if let callControl = child as? UIControl {
                callControl.removeFromSuperview()
            }
        }
    }
    
    func eacmDimeCil(_ tabBar: CaballoBaaroqueTabBar, didSelectedButtonFrom from: Int, to: Int) {
//        print("from>>>>to>>>>\(from)------\(to)")
        if from == to {
            return
        }
        let fabricLogin: String = USER_DEFAULTS.object(forKey: LOGIN_SEIZES) as? String ?? ""
        if fabricLogin.isEmpty {
            self.triggerIaa()
            return
        }
        selectedIndex = to
    }
    
    func triggerIaa() {
        let login = NamedHighViewController()
        let nav = UbicationWadableViewController(rootViewController: login)
        nav.modalPresentationStyle = .overFullScreen
        present(nav, animated: true, completion: nil)
    }
    
    func setupChildViewController(childVc: UIViewController, title: String, imageName: String, selectedImageName: String) {
        childVc.title = title
        childVc.tabBarItem.image = UIImage(named: imageName)
        if let selectedImage = UIImage(named: selectedImageName)?.withRenderingMode(.alwaysOriginal) {
            childVc.tabBarItem.selectedImage = selectedImage
        }
        let nav = UbicationWadableViewController(rootViewController: childVc)
        addChild(nav)
        dacquoiseBar?.addTabBarButtonNorImageUrl(imageName, selImageUrl: selectedImageName, title: title)
    }
    
    func showTabBar() {
        if let dacquoiseBar = self.dacquoiseBar {
            UIView.animate(withDuration: 0.25) {
                var frame = dacquoiseBar.frame
                frame.origin.y = self.view.bounds.size.height - hyperlinkHeight - 26.pix()
                dacquoiseBar.frame = frame
            }
        }
    }
    
    func iaeaQandaharPlanarity() {
        if let dacquoiseBar = self.dacquoiseBar {
            UIView.animate(withDuration: 0.25) {
                var frame = dacquoiseBar.frame
                frame.origin.y = self.view.bounds.size.height
                dacquoiseBar.frame = frame
            }
        }
    }
    
}

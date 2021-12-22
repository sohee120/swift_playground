//
//  ViewController.swift


import UIKit
import SideMenu

class ViewController: UIViewController {
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()
        
        appDelegate.mainVC = self
        
    }

    func gotoLoginView() {
        //네비게이션 컨트롤러로 이동하기
        let loginVC = self.storyboard?.instantiateViewController(identifier: "LoginVC") as! LoginViewController
        self.navigationController?.pushViewController(loginVC, animated: true)
        
    }
    
    func gotoNoticeView() {
        //네비게이션 컨트롤러로 이동하기
        let noticeVC = self.storyboard?.instantiateViewController(identifier: "NoticeVC") as! NoticeViewController
        self.navigationController?.pushViewController(noticeVC, animated: true)
        
    }

}

extension ViewController: SideMenuNavigationControllerDelegate {
    func sideMenuWillAppear(menu: SideMenuNavigationController, animated: Bool) {
        print("sideMenuWillAppear")
    }
    func sideMenuDidAppear(menu: SideMenuNavigationController, animated: Bool) {
        print("sideMenuDidAppear")
    }
    func sideMenuWillDisappear(menu: SideMenuNavigationController, animated: Bool) {
        print("sideMenuWillDisappear")
    }
    func sideMenuDidDisappear(menu: SideMenuNavigationController, animated: Bool) {
        print("sideMenuDidDisappear")
    }
    
}

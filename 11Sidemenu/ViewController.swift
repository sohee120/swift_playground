//
//  ViewController.swift


import UIKit

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
        
        let noticeVC = self.storyboard?.instantiateViewController(identifier: "NoticeVC") as! NoticeViewController
        self.navigationController?.pushViewController(noticeVC, animated: true)
        
    }

}


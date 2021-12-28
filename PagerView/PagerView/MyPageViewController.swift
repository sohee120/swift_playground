//
//  MyPageViewController.swift


import UIKit

class MyPageViewController: UIPageViewController, UIPageViewControllerDelegate, UIPageViewControllerDataSource {
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate


    override func viewDidLoad() {
        super.viewDidLoad()

        appDelegate.pageVC = self
        
        self.dataSource = self
        self.delegate = self
        
        if let firstVC = viewControllerList.first {
            self.setViewControllers([firstVC], direction: .forward, animated: true, completion: nil)
        }
        
    }
    
    // lazy 변수: 선언시에 메모리할당을 하지 않고, 참조시에 메모리에 할당.
    lazy var viewControllerList: [UIViewController] = {
       let sb = UIStoryboard(name: "Main", bundle: nil)
        
        let vc1 = sb.instantiateViewController(identifier: "firstVC")
        let vc2 = sb.instantiateViewController(identifier: "secondVC")
        let vc3 = sb.instantiateViewController(identifier: "thirdVC")
        
        return [vc1, vc2, vc3]
    }()
    
    //MARK: - PageView Data Source
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let vcIndex = viewControllerList.firstIndex(of: viewController)
        else {
            return nil
        }
        let previousIndex = vcIndex - 1
        guard previousIndex >= 0 else {
            return nil
        }
        return viewControllerList[previousIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let vcIndex = viewControllerList.firstIndex(of: viewController)
        else {
            return nil
        }
        let afterIndex = vcIndex + 1
        //뷰컨트롤러 갯수와 요청한 뷰인덱스(갯수 -1)가 같으면 널 반환
        guard viewControllerList.count != afterIndex  else {
            return nil
        }
        return viewControllerList[afterIndex]
    }
    
    //코드로 초기화시 기본설정을 할 수 있음.
    required init?(coder: NSCoder) {
        super.init(transitionStyle: .scroll, navigationOrientation: .horizontal, options: nil)
    }


}

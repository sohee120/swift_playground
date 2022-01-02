//
//  ViewController.swift
//  15PhotoGallery
//
//  Created by 윤소희 on 2022/01/02.
//

import UIKit
import MobileCoreServices
import UniformTypeIdentifiers


class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    
    @IBOutlet weak var imageView: UIImageView!
    let imagePickerVC : UIImagePickerController! = UIImagePickerController()
    //선택된 이미지 데이터
    var captureImage: UIImage!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func onBtnGallery(_ sender: UIButton) {
        
        if (UIImagePickerController.isSourceTypeAvailable(.photoLibrary)) {
            imagePickerVC.delegate = self
            imagePickerVC.sourceType = .photoLibrary
            imagePickerVC.mediaTypes = [UTType.image.identifier as String]
            //잘라내기 편집 기능 지원
            imagePickerVC.allowsEditing = true
            //팝업
            present( imagePickerVC, animated: true, completion: nil)
        } else {
            print( "포토앨범에 접근할 수 없습니다.")
        }
    }
    
}


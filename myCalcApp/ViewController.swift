//
//  ViewController.swift
//  myCalcApp

import UIKit

class ViewController: UIViewController {
    enum Operation {
        case Add
        case Sub
        case Mul
        case Div
        case unknown
    }

    @IBOutlet weak var inputLabel: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    var num1 = 0
    var num2 = 0
    var result = ""
    var currentOperation: Operation = .unknown
     
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onBtnAdd(_ sender: UIButton) {
        operation(_operation: .Add)
    }
    
    @IBAction func onBtnSub(_ sender: UIButton) {
        operation(_operation: .Sub)
    }
    
    @IBAction func onBtnMul(_ sender: UIButton) {
        operation(_operation: .Mul)
    }
    
    @IBAction func onBtnDiv(_ sender: Any) {
        operation(_operation: .Div)
    }
    
    @IBAction func onBtnEqual(_ sender: UIButton) {
        operation(_operation: currentOperation)
    }

    func operation(_operation: Operation) {
        
        //계산 이어서하게끔
        if currentOperation != .unknown {
            if !inputLabel.text!.isEmpty {
                num2 = Int(inputLabel.text!)!
                inputLabel.text! = ""
                
            switch currentOperation {
            case .Add:
                self.result = "\(num1 + num2)"
            case .Sub:
                self.result = "\(num1 - num2)"
            case .Mul:
                self.result = "\(num1 * num2)"
            case .Div:
                self.result = "\(num1 / num2)"
            default:
                break
            }
                num1 = Int(result)!
                resultLabel.text = result
            }
            currentOperation = _operation
        }else{
            num1 = Int(inputLabel.text!)!
            currentOperation = _operation
            inputLabel.text = ""
        }
    }
}




//
//  ViewController.swift
//  calculator
//
//  Created by zero on 11/11/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textfield1: UITextField!
    @IBOutlet weak var textfield2: UITextField!
    @IBOutlet weak var result: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btn_tambah(_ sender: UIButton) {
        hitung(aritmatika: "+")
    }
    
    @IBAction func btn_kurang(_ sender: UIButton) {
        hitung(aritmatika: "-")

    }
    
    @IBAction func btn_bagi(_ sender: UIButton) {
        hitung(aritmatika: "/")

    }

    @IBAction func btn_kali(_ sender: UIButton) {
        hitung(aritmatika: "*")

    }
    
    func hitung(aritmatika:String) {
        if textfield1.text == "" || textfield2.text == ""  {
            result.text = "tidak boleh kosong"
        }else{
            let input1 = Double(textfield1.text!)
            let input2 = Double(textfield2.text!)
            var hasil : Double?
        
        switch aritmatika{
            case "+" : hasil=input1! + input2!
            case "-" : hasil=input1! - input2!
            case "/" : hasil=input1! / input2!
            case "*" : hasil=input1! * input2!

        default:
            break
        }
            result.text = String(hasil!)
      }
   }

}

//
//  ViewController.swift
//  catvsdog
//
//  Created by Missy on 2018/5/24.
//  Copyright © 2018年 Missy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //收起鍵盤
    func textFieldShouldReturn(_ textField:UITextField)->Bool{
        textField.resignFirstResponder()
        return true
    }


    @IBOutlet weak var segmentControlselest1: UISegmentedControl!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var houseSwitch: UISwitch!
    @IBOutlet weak var scorefromSlider: UILabel!
    @IBOutlet weak var ansImageView: UIImageView!
    @IBAction func scoreSlider(_ sender: UISlider) {
        var scoreInt:Int
        scoreInt = Int(sender.value) //浮點轉整數
        scorefromSlider.text = String(scoreInt)//整數轉字串
        //一行抵三行
        //scorefromSlider.text = "\(Int(sender.value))"
    }
    @IBAction func selectPressButton(_ sender: UIButton) {
        //不給scorefromSlider.text 預設值會錯誤！無值可轉
        //scorefromSlider.text = "0"
        var ageInt:Int
        var scoreInt:Int
        ageInt = Int(ageTextField.text!)!
        scoreInt = Int(scorefromSlider.text!)!
        
        if ageInt > 18 && ageInt < 80{
            
            if scoreInt>7 { //潔癖
                ansImageView.image = UIImage(named:"lonely")
            }
            else{//無潔癖
                if houseSwitch.isOn{//小套房
                    ansImageView.image = UIImage(named: "catImage")
                }
                else{//住家
                    if segmentControlselest1.selectedSegmentIndex == 0 {//熱情
                     
                     
                     ansImageView.image = UIImage(named:"dogImage")
                     
                    }
                    else if segmentControlselest1.selectedSegmentIndex == 1 {//冷靜
                        ansImageView.image = UIImage(named:"catImage")
                    }
                    else{//都可以
                        ansImageView.image = UIImage(named:"cd")
                        
                    }
                }
                
                
            }
            
        }
        else{

            ansImageView.image = UIImage(named:"lonely")
            
        }
        
        
    }
    //收起鍵盤
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


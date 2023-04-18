//
//  DateVC.swift
//  Mid02Practice
//
//  Created by Mallela,Mamatha on 4/17/23.
//

import UIKit

class DateVC: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        values.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        picketTV.text = values[row]
        return values[row]
    }
    var values = Array<String>()
    @IBOutlet weak var picketTV: UITextField!
    @IBOutlet weak var pickerView: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pickerView.dataSource = self
        pickerView.delegate = self
        
         values = ["👎","👍","❤️","🔥","😀"]
        
        
    }
    
    @IBOutlet weak var pickerViewAction: UIPickerView!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  InfoViewController.swift
//  medication-reminder
//
//  Created by Tina Huynh on 3/3/19.
//  Copyright © 2019 Tina Huynh. All rights reserved.
//

import UIKit
import AVFoundation

class InfoViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var languagePicker: UIPickerView!
    var pickerData: [String] = [String]()
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nicknameLabel: UILabel!
    @IBOutlet weak var warningLabel: UILabel!
    @IBOutlet weak var doseLabel: UILabel!
    @IBOutlet weak var freqLabel: UILabel!
    @IBOutlet weak var refillLabel: UILabel!
    @IBOutlet weak var qtyLabel: UILabel!
    @IBOutlet weak var totalQtyLabel: UILabel!
    @IBOutlet weak var missedDoseLabel: UILabel!
    @IBOutlet weak var textSizeControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.languagePicker.delegate = self as UIPickerViewDelegate
        self.languagePicker.dataSource = self as UIPickerViewDataSource
        
        pickerData = ["English", "Spanish", "Chinese", "French", "Vietnamese"]
        
        demoFunction()
        textSizeControl.addTarget(self, action: #selector(changeTextSize), for: .touchUpInside)

        // Do any additional setup after loading the view.
    }
    
    @objc func changeTextSize() {
        textSizeControl.imageForSegment(at: 0)
    }
    
    fileprivate func setFont(_ myFont: UILabel) {
        myFont.font = myFont.font.withSize(18)
        myFont.translatesAutoresizingMaskIntoConstraints = false
    }
    
    @objc func demoFunction() {
        nameLabel.text = "Lorazepam"
        setFont(nameLabel)
        nicknameLabel.text = "Calming pill"
        setFont(nicknameLabel)
        doseLabel.text = "0.06"
        setFont(doseLabel)
        freqLabel.text = "1"
        setFont(freqLabel)
        refillLabel.text = "0"
        setFont(refillLabel)
        qtyLabel.text = "10"
        setFont(qtyLabel)
        totalQtyLabel.text = "10"
        setFont(totalQtyLabel)
        missedDoseLabel.text = "2"
        setFont(missedDoseLabel)
        warningLabel.text = "Can cause drowsiness"
        setFont(warningLabel)
    }
    
    let synthesizer = AVSpeechSynthesizer()
    
    let textToSpeech = "Lorazepam is used to treat anxiety disorders. It is also used for short-term relief of the symptoms of anxiety or anxiety caused by depression."
    
    @IBAction func textSpeechButton(_ sender: UIButton) {
        let utterance = AVSpeechUtterance(string: textToSpeech)
        synthesizer.speak(utterance)
        
    }
    
    // Number of columns of data
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // The number of rows of data
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    // The data to return fopr the row and component (column) that's being passed in
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

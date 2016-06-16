//
//  ViewController.swift
//  UIDatePicker
//
//  Created by Mamadou Kaba on 6/16/16.
//  Copyright © 2016 Mamadou Kaba. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - Properties
    var datePicker: UIDatePicker!
    
    //MARK: - View Controller Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        datePicker = UIDatePicker()
        datePicker.center = view.center
        view.addSubview(datePicker)
    }
    
    //MARK: - Target Action
    
    @IBAction func selectDate(sender: AnyObject) {
        print("Your selected date is: \(datePicker.date)")
    }
    
    @IBAction func setDatePickerToDefault(sender: AnyObject) {
        datePicker.datePickerMode = UIDatePickerMode.DateAndTime
    }
    
    @IBAction func changeDatePickerMinAndMaxDate(sender: AnyObject) {
        datePicker.datePickerMode = UIDatePickerMode.Date
        
        let oneYear: NSTimeInterval = 365 * 24 * 60 * 60
        let today = NSDate()
        
        let oneYearFromNow = today.dateByAddingTimeInterval(oneYear)
        let twoYearsFromNow = today.dateByAddingTimeInterval(oneYear * 2)
        
        //Set The Minimum and Maximum Date of TimePicker
        datePicker.minimumDate = oneYearFromNow
        datePicker.maximumDate = twoYearsFromNow
    }
    
    @IBAction func setDatePickerToCountDownTimer(sender: AnyObject) {
        datePicker.datePickerMode = UIDatePickerMode.CountDownTimer
        
        let threeminutes = (3 * 60) as NSTimeInterval
        datePicker.countDownDuration = threeminutes
    }
}


//
//  ViewController.swift
//  LSMultiLanguage
//
//  Created by John_LS on 2017/2/14.
//  Copyright © 2017年 John_LS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lab_Product: UILabel!

    @IBOutlet weak var lab_Sales: UILabel!
    @IBOutlet weak var lab_Profit: UILabel!
    @IBOutlet weak var lab_DateTime: UILabel!
    
    // 数字格式
    var numberFormatter:NumberFormatter{
        let formatter=NumberFormatter()
        formatter.numberStyle=NumberFormatter.Style.decimal
        return formatter
    }
    // 货币格式
    var currencyFormatter:NumberFormatter{
        let formatter=NumberFormatter()
        formatter.numberStyle=NumberFormatter.Style.currency
        return formatter
    }
    
    // 日期时间格式
    var dateFormatter:DateFormatter{
        let formatter=DateFormatter()
        formatter.dateStyle=DateFormatter.Style.medium
        formatter.timeStyle=DateFormatter.Style.medium
        return formatter
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        lab_Product.text = NSLocalizedString("PRODUCT_NAME", comment: "商品名称")
        
        lab_Sales.text=numberFormatter.string(from: 99999);
        //利润
        lab_Profit.text=currencyFormatter.string(from: 2347898)
        //日期
        lab_DateTime.text=dateFormatter.string(from: NSDate() as Date)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}



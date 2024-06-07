//
//  JabotOakleyListView.swift
//  Catatan
//
//  Created by apple on 2024/3/27.
//

import UIKit
import MBProgressHUD_WJExtension

class JabotOakleyListView: UIView,UITableViewDelegate,UITableViewDataSource {
    
    var refreshBlock: (([String: Any]) -> Void)?
    
    var nablusDict: [String: Any] = [:]
    
    enum typeImageState {
        case fund1
        case card1
        case card2
        case cash1
        case cash2
        case car1
    }
    
    var model: IncomesModel?
    
    var bitmapStr: String?
    
    var currentState: typeImageState?
    
    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero,
                                    style: .grouped)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        tableView.backgroundColor = .clear
        tableView.showsVerticalScrollIndicator = false
        tableView.estimatedSectionHeaderHeight = 0;
        tableView.estimatedSectionFooterHeight = 0;
        return tableView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.edges.equalTo(self)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let index: Int = indexPath.row
        if currentState == .fund1{
            if index == 0 {
                let cellIdentifier = "\(bitmapStr ?? "")_cell0"
                var cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? MacabreSearchingOneCell
                if cell == nil {
                    cell = MacabreSearchingOneCell(style: .subtitle, reuseIdentifier: cellIdentifier)
                    cell?.backgroundColor = .clear
                    cell?.selectionStyle = .none
                    if let str = bitmapStr {
                        if str.contains("Other") {
                            cell?.label2.text = "Other"
                        }else{
                            cell?.label2.text = str
                        }
                    }
                    cell?.macEmail.text = model?.chests
                    cell?.icon.image = UIImage(named: bitmapStr ?? "")
                }
                return cell!
            }else if index == 1 {
                let cellIdentifier = "\(bitmapStr ?? "")_Cell1"
                var cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? AlphabeticallySequentialTwoCell
                if cell == nil {
                    cell = AlphabeticallySequentialTwoCell(style: .default, reuseIdentifier: cellIdentifier)
                    cell?.selectionStyle = .none
                    cell?.macEmail.text = model?.addressname
                }
                return cell!
            }else if index == 2 {
                let cellIdentifier = "\(bitmapStr ?? "")_Cell2"
                var cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? LabialiseDirtyThreeCell
                if cell == nil {
                    cell = LabialiseDirtyThreeCell(style: .default, reuseIdentifier: cellIdentifier)
                    cell?.selectionStyle = .none
                    cell?.macEmail.text = model?.distributes
                }
                return cell!
            }else {
                let cellIdentifier = "\(bitmapStr ?? "")_Cell3"
                var cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? IadlBaasFourCell
                if cell == nil {
                    cell = IadlBaasFourCell(style: .default, reuseIdentifier: cellIdentifier)
                    cell?.selectionStyle = .none
                    cell?.textView.text = model?.knobby
                }
                return cell!
            }
        }else if currentState == .cash1 {
            if index == 0 {
                let cellIdentifier = "\(bitmapStr ?? "")_cell0"
                var cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? MacabreSearchingOneCell
                if cell == nil {
                    cell = MacabreSearchingOneCell(style: .subtitle, reuseIdentifier: cellIdentifier)
                    cell?.backgroundColor = .clear
                    cell?.selectionStyle = .none
                    cell?.label2.backgroundColor = UIColor("#B3EE4B")
                    cell?.lineView.backgroundColor = UIColor("#B3EE4B")
                    cell?.eagleView.layer.borderColor = UIColor("#B3EE4B").cgColor
                    if let str = bitmapStr {
                        if str.contains("Other") {
                            cell?.label2.text = "Other"
                        }else{
                            cell?.label2.text = str
                        }
                    }
                    cell?.macEmail.text = model?.chests
                    cell?.icon.image = UIImage(named: bitmapStr ?? "")
                }
                return cell!
            }else if index == 1 {
                let cellIdentifier = "\(bitmapStr ?? "")_Cell1"
                var cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? AlphabeticallySequentialTwoCell
                if cell == nil {
                    cell = AlphabeticallySequentialTwoCell(style: .default, reuseIdentifier: cellIdentifier)
                    cell?.eagleView.layer.borderColor = UIColor("#B3EE4B").cgColor
                    cell?.selectionStyle = .none
                    cell?.icon.image = UIImage(named: "macAddQweasd")
                    cell?.macEmail.text = model?.addressname
                }
                return cell!
            }else if index == 2 {
                let cellIdentifier = "\(bitmapStr ?? "")_Cell2"
                var cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? LabialiseDirtyThreeCell
                if cell == nil {
                    cell = LabialiseDirtyThreeCell(style: .default, reuseIdentifier: cellIdentifier)
                    cell?.eagleView.layer.borderColor = UIColor("#B3EE4B").cgColor
                    cell?.selectionStyle = .none
                    cell?.icon.image = UIImage(named: "rawBackQweasd")
                    cell?.macEmail.text = model?.distributes
                }
                return cell!
            }else {
                let cellIdentifier = "\(bitmapStr ?? "")_Cell3"
                var cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? IadlBaasFourCell
                if cell == nil {
                    cell = IadlBaasFourCell(style: .default, reuseIdentifier: cellIdentifier)
                    cell?.eagleView.layer.borderColor = UIColor("#B3EE4B").cgColor
                    cell?.selectionStyle = .none
                    cell?.icon.image = UIImage(named: "wackeBgQweasd")
                    cell?.textView.text = model?.knobby
                }
                return cell!
            }
        }else if currentState == .card1 {
            if index == 0 {
                let cellIdentifier = "\(bitmapStr ?? "")_cell0"
                var cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? MacabreSearchingOneCell
                if cell == nil {
                    cell = MacabreSearchingOneCell(style: .subtitle, reuseIdentifier: cellIdentifier)
                    cell?.backgroundColor = .clear
                    cell?.selectionStyle = .none
                    cell?.label2.backgroundColor = UIColor("#FB9A01")
                    cell?.lineView.backgroundColor = UIColor("#FB9A01")
                    cell?.eagleView.layer.borderColor = UIColor("#FB9A01").cgColor
                    if let str = bitmapStr {
                        if str.contains("Other") {
                            cell?.label2.text = "Other"
                        }else{
                            cell?.label2.text = str
                        }
                    }
                    cell?.macEmail.text = model?.chests
                    cell?.icon.image = UIImage(named: bitmapStr ?? "")
                }
                return cell!
            }else if index == 1 {
                let cellIdentifier = "\(bitmapStr ?? "")_Cell1"
                var cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? AlphabeticallySequentialTwoCell
                if cell == nil {
                    cell = AlphabeticallySequentialTwoCell(style: .default, reuseIdentifier: cellIdentifier)
                    cell?.eagleView.layer.borderColor = UIColor("#FB9A01").cgColor
                    cell?.selectionStyle = .none
                    cell?.macEmail.text = model?.addressname
                    cell?.icon.image = UIImage(named: "hierarchicalPicQwerty")
                }
                return cell!
            }else if index == 2 {
                let cellIdentifier = "\(bitmapStr ?? "")_Cell2"
                var cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? JacalKnapsackFiveCell
                if cell == nil {
                    cell = JacalKnapsackFiveCell(style: .default, reuseIdentifier: cellIdentifier)
                    cell?.eagleView.layer.borderColor = UIColor("#FB9A01").cgColor
                    cell?.selectionStyle = .none
                    cell?.macEmail.text = model?.matched
                    cell?.icon.image = UIImage(named: "daccaLeftQwerty")
                }
                return cell!
            }else if index == 3 {
                let cellIdentifier = "\(bitmapStr ?? "")_Cell3"
                var cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? LabialiseDirtyThreeCell
                if cell == nil {
                    cell = LabialiseDirtyThreeCell(style: .default, reuseIdentifier: cellIdentifier)
                    cell?.eagleView.layer.borderColor = UIColor("#FB9A01").cgColor
                    cell?.selectionStyle = .none
                    cell?.icon.image = UIImage(named: "haarPicQwerty")
                    cell?.macEmail.text = model?.distributes
                }
                return cell!
            }else {
                let cellIdentifier = "\(bitmapStr ?? "")_Cell4"
                var cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? IadlBaasFourCell
                if cell == nil {
                    cell = IadlBaasFourCell(style: .default, reuseIdentifier: cellIdentifier)
                    cell?.eagleView.layer.borderColor = UIColor("#FB9A01").cgColor
                    cell?.selectionStyle = .none
                    cell?.icon.image = UIImage(named: "taberdarRightQwerty")
                    cell?.textView.text = model?.knobby
                }
                return cell!
            }
        }else if currentState == .card2 {
            if index == 0 {
                let cellIdentifier = "\(bitmapStr ?? "")_cell0"
                var cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? MacabreSearchingOneCell
                if cell == nil {
                    cell = MacabreSearchingOneCell(style: .subtitle, reuseIdentifier: cellIdentifier)
                    cell?.backgroundColor = .clear
                    cell?.selectionStyle = .none
                    if let str = bitmapStr {
                        if str.contains("Other") {
                            cell?.label2.text = "Other"
                        }else{
                            cell?.label2.text = str
                        }
                    }
                    cell?.label2.backgroundColor = UIColor("#FB9A01")
                    cell?.lineView.backgroundColor = UIColor("#FB9A01")
                    cell?.eagleView.layer.borderColor = UIColor("#FB9A01").cgColor
                    cell?.icon.image = UIImage(named: bitmapStr ?? "")
                    cell?.macEmail.text = model?.chests
                }
                return cell!
            }else if index == 1 {
                let cellIdentifier = "\(bitmapStr ?? "")_Cell1"
                var cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? AlphabeticallySequentialTwoCell
                if cell == nil {
                    cell = AlphabeticallySequentialTwoCell(style: .default, reuseIdentifier: cellIdentifier)
                    cell?.selectionStyle = .none
                    cell?.eagleView.layer.borderColor = UIColor("#FB9A01").cgColor
                    cell?.icon.image = UIImage(named: "hierarchicalPicQwerty")
                    cell?.macEmail.text = model?.addressname
                }
                return cell!
            }else if index == 2 {
                let cellIdentifier = "\(bitmapStr ?? "")_Cell2"
                var cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? LabialiseDirtyThreeCell
                if cell == nil {
                    cell = LabialiseDirtyThreeCell(style: .default, reuseIdentifier: cellIdentifier)
                    cell?.selectionStyle = .none
                    cell?.eagleView.layer.borderColor = UIColor("#FB9A01").cgColor
                    cell?.icon.image = UIImage(named: "haarPicQwerty")
                    cell?.macEmail.text = model?.distributes
                }
                return cell!
            }else {
                let cellIdentifier = "\(bitmapStr ?? "")_Cell3"
                var cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? IadlBaasFourCell
                if cell == nil {
                    cell = IadlBaasFourCell(style: .default, reuseIdentifier: cellIdentifier)
                    cell?.selectionStyle = .none
                    cell?.eagleView.layer.borderColor = UIColor("#FB9A01").cgColor
                    cell?.icon.image = UIImage(named: "taberdarRightQwerty")
                    cell?.textView.text = model?.knobby
                }
                return cell!
            }
        }else if currentState == .cash2 {
            if index == 0 {
                let cellIdentifier = "\(bitmapStr ?? "")_cell0"
                var cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? MacabreSearchingOneCell
                if cell == nil {
                    cell = MacabreSearchingOneCell(style: .subtitle, reuseIdentifier: cellIdentifier)
                    cell?.backgroundColor = .clear
                    cell?.selectionStyle = .none
                    if let str = bitmapStr {
                        if str.contains("Other") {
                            cell?.label2.text = "Other"
                        }else{
                            cell?.label2.text = str
                        }
                    }
                    cell?.label2.backgroundColor = UIColor("#B3EE4B")
                    cell?.lineView.backgroundColor = UIColor("#B3EE4B")
                    cell?.eagleView.layer.borderColor = UIColor("#B3EE4B").cgColor
                    cell?.icon.image = UIImage(named: bitmapStr ?? "")
                    cell?.macEmail.text = model?.chests
                }
                return cell!
            }else if index == 1 {
                let cellIdentifier = "\(bitmapStr ?? "")_Cell1"
                var cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? AlphabeticallySequentialTwoCell
                if cell == nil {
                    cell = AlphabeticallySequentialTwoCell(style: .default, reuseIdentifier: cellIdentifier)
                    cell?.selectionStyle = .none
                    cell?.eagleView.layer.borderColor = UIColor("#B3EE4B").cgColor
                    cell?.icon.image = UIImage(named: "macAddQweasd")
                    cell?.macEmail.text = model?.addressname
                }
                return cell!
            }else if index == 2 {
                let cellIdentifier = "\(bitmapStr ?? "")_Cell2"
                var cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? JacalKnapsackFiveCell
                if cell == nil {
                    cell = JacalKnapsackFiveCell(style: .default, reuseIdentifier: cellIdentifier)
                    cell?.selectionStyle = .none
                    cell?.label1.text = "Last 4 Digits Of The Card"
                    cell?.macEmail.text = model?.matched
                    cell?.macEmail.keyboardType = .numberPad
                    cell?.eagleView.layer.borderColor = UIColor("#B3EE4B").cgColor
                    cell?.icon.image = UIImage(named: "enumeratorsRightQweasd")
                    cell?.macEmail.text = model?.matched
                }
                return cell!
            }else if index == 3 {
                let cellIdentifier = "\(bitmapStr ?? "")_Cell3"
                var cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? LabialiseDirtyThreeCell
                if cell == nil {
                    cell = LabialiseDirtyThreeCell(style: .default, reuseIdentifier: cellIdentifier)
                    cell?.selectionStyle = .none
                    cell?.eagleView.layer.borderColor = UIColor("#B3EE4B").cgColor
                    cell?.icon.image = UIImage(named: "rawBackQweasd")
                    cell?.macEmail.text = model?.distributes
                }
                return cell!
            }else {
                let cellIdentifier = "\(bitmapStr ?? "")_Cell4"
                var cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? IadlBaasFourCell
                if cell == nil {
                    cell = IadlBaasFourCell(style: .default, reuseIdentifier: cellIdentifier)
                    cell?.selectionStyle = .none
                    cell?.eagleView.layer.borderColor = UIColor("#B3EE4B").cgColor
                    cell?.icon.image = UIImage(named: "wackeBgQweasd")
                    cell?.textView.text = model?.knobby
                }
                return cell!
            }
        }else if currentState == .car1 {
            if index == 0 {
                let cellIdentifier = "\(bitmapStr ?? "")_cell0"
                var cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? MacabreSearchingOneCell
                if cell == nil {
                    cell = MacabreSearchingOneCell(style: .subtitle, reuseIdentifier: cellIdentifier)
                    cell?.backgroundColor = .clear
                    cell?.selectionStyle = .none
                    if let str = bitmapStr {
                        if str.contains("Other") {
                            cell?.label2.text = "Other"
                        }else{
                            cell?.label2.text = str
                        }
                    }
                    cell?.label2.backgroundColor = UIColor("#364880")
                    cell?.lineView.backgroundColor = UIColor("#364880")
                    cell?.eagleView.layer.borderColor = UIColor("#364880").cgColor
                    cell?.icon.image = UIImage(named: bitmapStr ?? "")
                    cell?.macEmail.text = model?.chests
                }
                return cell!
            }else if index == 1 {
                let cellIdentifier = "\(bitmapStr ?? "")_Cell1"
                var cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? AlphabeticallySequentialTwoCell
                if cell == nil {
                    cell = AlphabeticallySequentialTwoCell(style: .default, reuseIdentifier: cellIdentifier)
                    cell?.selectionStyle = .none
                    cell?.eagleView.layer.borderColor = UIColor("#364880").cgColor
                    cell?.icon.image = UIImage(named: "modelingIconQazxsw")
                    cell?.macEmail.text = model?.addressname
                }
                return cell!
            }else if index == 2 {
                let cellIdentifier = "\(bitmapStr ?? "")_Cell2"
                var cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? LabialiseDirtyThreeCell
                if cell == nil {
                    cell = LabialiseDirtyThreeCell(style: .default, reuseIdentifier: cellIdentifier)
                    cell?.selectionStyle = .none
                    cell?.eagleView.layer.borderColor = UIColor("#364880").cgColor
                    cell?.icon.image = UIImage(named: "callbackBackQazxsw")
                    cell?.macEmail.text = model?.distributes
                }
                return cell!
            }else {
                let cellIdentifier = "\(bitmapStr ?? "")_Cell3"
                var cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? IadlBaasFourCell
                if cell == nil {
                    cell = IadlBaasFourCell(style: .default, reuseIdentifier: cellIdentifier)
                    cell?.selectionStyle = .none
                    cell?.eagleView.layer.borderColor = UIColor("#364880").cgColor
                    cell?.icon.image = UIImage(named: "recursionIconQazxsw")
                    cell?.textView.text = model?.knobby
                }
                return cell!
            }
        }else {
            if index == 0 {
                let cellIdentifier = "\(bitmapStr ?? "")_Cell0"
                var cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier)
                if cell == nil {
                    cell = MacabreSearchingOneCell(style: .default, reuseIdentifier: cellIdentifier)
                    cell?.selectionStyle = .none
                }
                return cell!
            }else if index == 1 {
                let cellIdentifier = "\(bitmapStr ?? "")_Cell1"
                var cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier)
                if cell == nil {
                    cell = AlphabeticallySequentialTwoCell(style: .default, reuseIdentifier: cellIdentifier)
                    cell?.selectionStyle = .none
                }
                return cell!
            }else if index == 2 {
                let cellIdentifier = "\(bitmapStr ?? "")_Cell2"
                var cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier)
                if cell == nil {
                    cell = LabialiseDirtyThreeCell(style: .default, reuseIdentifier: cellIdentifier)
                    cell?.selectionStyle = .none
                }
                return cell!
            }else if index == 3 {
                let cellIdentifier = "\(bitmapStr ?? "")_Cell3"
                var cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier)
                if cell == nil {
                    cell = LabialiseDirtyThreeCell(style: .default, reuseIdentifier: cellIdentifier)
                    cell?.selectionStyle = .none
                }
                return cell!
            }else {
                let cellIdentifier = "\(bitmapStr ?? "")_Cell4"
                var cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier)
                if cell == nil {
                    cell = IadlBaasFourCell(style: .default, reuseIdentifier: cellIdentifier)
                    cell?.selectionStyle = .none
                }
                return cell!
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if currentState == .fund1 || currentState == .card2 || currentState == .cash1 || currentState == .car1 {
            return 4
        }
        return 5
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0.01
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let coffView = UIView()
        let btn = UIButton(type: .custom)
        btn.layer.cornerRadius = 28.pix()
        btn.backgroundColor = UIColor("#188DFF")
        btn.setTitle("Confirm", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.titleLabel?.font = UIFont(name: checkpointBold, size: 16.pix())
        btn.addTarget(self, action: #selector(aaalLookupUnique), for: .touchUpInside)
        coffView.addSubview(btn)
        btn.snp.makeConstraints { make in
            make.centerX.equalTo(coffView)
            make.left.equalTo(coffView).offset(16.pix())
            make.bottom.equalTo(coffView)
            make.height.equalTo(56.pix())
        }
        return coffView
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 140.pix()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let index = indexPath.row
        if currentState == .fund1 || currentState == .card2 || currentState == .cash1 || currentState == .car1 {
            if index == 0 {
                return 152.pix()
            }else if index == 1 || index == 2 {
                return 110.pix()
            }else {
                return 200.pix()
            }
        }else {
            if index == 0 {
                return 152.pix()
            }else if index == 1 || index == 2 || index == 3 {
                return 110.pix()
            }else {
                return 200.pix()
            }
        }
    }
    
    @objc func aaalLookupUnique() {
        let numberOfSections = tableView.numberOfSections
        for section in 0..<numberOfSections {
            let numberOfRows = tableView.numberOfRows(inSection: section)
            for row in 0..<numberOfRows {
                let indexPath = IndexPath(row: row, section: section)
                if let cell = tableView.cellForRow(at: indexPath) as? MacabreSearchingOneCell {
                    let cellValue = cell.macEmail.text ?? ""
                    var libranMoney: String = ""
                    if cellValue.contains(",") {
                        let stringWithoutComma = cellValue.replacingOccurrences(of: ",", with: "")
                        libranMoney = stringWithoutComma
                    }else{
                        libranMoney = cellValue
                    }
                    nablusDict["chests"] = libranMoney
                    print("cellValue1>>>>>>\(cellValue)")
                }
                if let cell = tableView.cellForRow(at: indexPath) as? AlphabeticallySequentialTwoCell {
                    let cellValue = cell.macEmail.text
                    nablusDict["addressname"] = cellValue
                    print("cellValue2>>>>>>\(cellValue ?? "")")
                }
                if let cell = tableView.cellForRow(at: indexPath) as? LabialiseDirtyThreeCell {
                    let cellValue = cell.macEmail.text
                    nablusDict["distributes"] = cellValue
                    print("cellValue3>>>>>>\(cellValue ?? "")")
                }
                if let cell = tableView.cellForRow(at: indexPath) as? IadlBaasFourCell {
                    let cellValue = cell.textView.text
                    nablusDict["knobby"] = cellValue
                    print("cellValue5>>>>>>\(cellValue ?? "")")
                }
                if let cell = tableView.cellForRow(at: indexPath) as? JacalKnapsackFiveCell {
                    let cellValue = cell.macEmail.text
                    nablusDict["matched"] = cellValue
                    print("cellValue4>>>>>>\(cellValue ?? "")")
                }
            }
        }
        self.refreshBlock!(nablusDict)
    }
}

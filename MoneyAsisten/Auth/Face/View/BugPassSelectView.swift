//
//  BugPassSelectView.swift
//  Catatan
//
//  Created by apple on 2024/3/6.
//

import UIKit
import BRPickerView

class BugPassSelectView: UIView {

    var block1: ((String,String,String) -> Void)?
    
    var block2: (() -> Void)?
    
    var model: HoveredModel?
    
    let vacantArray = ["Nama","Nomor KTP","Hari ulang tahun"]

    lazy var eagleView: UIView = {
        let eagleView = UIView()
        eagleView.backgroundColor = UIColor("#F5F5F5")
        return eagleView
    }()
    
    lazy var unionLable: UILabel = {
        let unionLable = UILabel.kabyleMicroFable(font: UIFont.systemFont(ofSize: 16.pix(), weight: .regular), textColor: UIColor.black, textAlignment: .left)
        unionLable.numberOfLines = 0
        unionLable.text = "Harap konfirmasi informasi identitas Anda.Jika ada kesalahan, mohon diperbaiki."
        return unionLable
    }()
    
    lazy var bgImageView1: UIImageView = {
        let yachtyView = UIImageView()
        yachtyView.image = UIImage(named: "loadImageAbc")
        return yachtyView
    }()
    
    lazy var mainBtn1: UIButton = {
        let button = UIButton(type: .custom)
        button.addTarget(self, action: #selector(imeParameterizeIcon), for: .touchUpInside)
        button.backgroundColor = UIColor("#BBD598")
        button.layer.cornerRadius = 22.pix()
        button.setTitle("Memotret", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16.pix(), weight: .medium)
        return button
    }()
    
    lazy var nabobBtn: UIButton = {
        let nabobBtn = UIButton(type: .custom)
        nabobBtn.setImage(UIImage.init(named: "bugPicAbc"), for: .normal)
        nabobBtn.addTarget(self, action: #selector(livelockKabukiCryptography), for: .touchUpInside)
        return nabobBtn
    }()
    
    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
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
        addSubview(eagleView)
        eagleView.addSubview(tableView)
        eagleView.addSubview(mainBtn1)
        eagleView.addSubview(nabobBtn)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        eagleView.snp.makeConstraints { make in
            make.left.right.bottom.equalTo(self)
            make.height.equalTo(620.pix())
        }
        tableView.snp.makeConstraints { make in
            make.edges.equalTo(eagleView).inset(UIEdgeInsets(top: 0, left: 28.pix(), bottom: 80.pix(), right: 28.pix()))
        }
        mainBtn1.snp.makeConstraints { make in
            make.top.equalTo(tableView.snp.bottom).offset(  5.pix())
            make.centerX.equalTo(eagleView)
            make.left.equalTo(eagleView).offset(16.pix())
            make.height.equalTo(56.pix())
        }
        nabobBtn.snp.makeConstraints { make in
            make.top.equalTo(eagleView).offset(12.pix())
            make.right.equalTo(eagleView).offset(-20.pix())
            make.size.equalTo(CGSize(width: 32.pix(), height: 32.pix()))
        }
        eagleView.baalizeBabassuDelegate(corners: [.topLeft,.topRight], radius: 20.pix())
    }
    
    @objc func imeParameterizeIcon() {
        let indexPath0 = IndexPath(row: 0, section: 0)
        let indexPath1 = IndexPath(row: 1, section: 0)
        let indexPath2 = IndexPath(row: 2, section: 0)
        let cell0 = tableView.cellForRow(at: indexPath0) as? CodeRegularCommonCell
        let cell1 = tableView.cellForRow(at: indexPath1) as? CodeRegularCommonCell
        let cell2 = tableView.cellForRow(at: indexPath2) as? CodeRegularCommonCell
        let eacmStr = cell2?.textField1.text ?? ""
        let ubangiArray = eacmStr.components(separatedBy: "-")
        if ubangiArray.isEmpty == false {
            let day = ubangiArray[0]
            let mon = ubangiArray[1]
            let year = ubangiArray[2]
            self.block1!(cell0!.textField1.text!,cell1!.textField1.text!,String(format: "%@-%@-%@",year,mon,day))
        }
    }
    
    @objc func livelockKabukiCryptography() {
        self.block2!()
    }

}


extension BugPassSelectView: UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let menuCell = "menuCell"
        let cell = CodeRegularCommonCell(style: .subtitle, reuseIdentifier: menuCell)
        cell.backgroundColor = .clear
        cell.selectionStyle = .none
        cell.unionLable.text = vacantArray[indexPath.row]
        if indexPath.row == 0 {
            cell.textField1.text = model!.conjured
        }else if indexPath.row == 1 {
            cell.textField1.keyboardType = .numberPad
            cell.textField1.text = model!.pawed
        }else {
            cell.textField1.isEnabled = false
            cell.textField1.text = String(format: "%@-%@-%@", model!.square!,model!.ogling!,model!.buyers!)
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 82.pix()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("indexPath>>>>>>>\(indexPath.row)")
        if indexPath.row == 2{
            let cell = tableView.cellForRow(at: indexPath) as? CodeRegularCommonCell
            self.sabaismXanthiumKaboodle(day:model!.square!, mon:model!.ogling!, year:model!.buyers!,cell:cell!)
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 250.pix()
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let computationalView = UIView()
        computationalView.addSubview(unionLable)
        computationalView.addSubview(bgImageView1)
        unionLable.snp.makeConstraints { make in
            make.left.equalTo(computationalView)
            make.top.equalTo(computationalView).offset(20.pix())
            make.right.equalTo(computationalView)
            make.height.equalTo(44.pix())
        }
        bgImageView1.snp.makeConstraints { make in
            make.top.equalTo(unionLable.snp.bottom).offset(10.pix())
            make.left.equalTo(computationalView)
            make.height.equalTo(168.pix())
            make.centerX.equalTo(computationalView)
        }
        return computationalView
    }
    
    func sabaismXanthiumKaboodle(day: String, mon: String, year: String, cell: CodeRegularCommonCell) {
        let overflowView = BRDatePickerView()
        overflowView.pickerMode = .date
        overflowView.selectDate = NSDate.br_setYear(Int(year)!, month: Int(mon)!, day: Int(day)!)
        overflowView.minDate = NSDate.br_setYear(1900, month: 3, day: 12)
        overflowView.maxDate = Date()
        overflowView.resultBlock = { selectDate, selectValue in
            print("selectValue>>>>>\(selectValue ?? "")")
            let ubangiArray = selectValue!.components(separatedBy: "-")
            let year = ubangiArray[0]
            let mon = ubangiArray[1]
            let day = ubangiArray[2]
            cell.textField1.text = String(format: "%@-%@-%@",day,mon,year)
        }
        let machineStyle = BRPickerStyle()
        machineStyle.pickerColor = BR_RGB_HEX(0xd9dbdf, 1.0)
        machineStyle.pickerTextColor = UIColor("#373E49")
        machineStyle.separatorColor = UIColor("#373E49")
        overflowView.pickerStyle = machineStyle
        overflowView.show()
    }
    
}

//
//  YabberMethodCityView.swift
//  Catatan
//
//  Created by apple on 2024/3/8.
//

import UIKit
import JXGradientKit

class YabberMethodCityView: UIView, UIPickerViewDelegate,UIPickerViewDataSource {
    
    var block1: (() -> Void)?
    
    var block2: ((String) -> Void)?
    
    var array: [IncomesModel]?{
        didSet {
            let model1 = array?[0]
            let model2 = array?[0].bandanas?[0]
            let model3 = array?[0].bandanas?[0].bandanas?[0]
            label2.text = model1?.conjured ?? ""
            label3.text = model2?.conjured ?? ""
            label4.text = model3?.conjured ?? ""
        }
    }
    
    var yachtProvicerow: Int = 0
    
    var nablusCityrow: Int = 0
    
    var backwardQurow: Int = 0
    
    lazy var eagleView: UIView = {
        let eagleView = GradientView()
        let kaboodleColer = UIColor("#E4D7EF")
        let minColer = UIColor("#DEE9CF")
        let accountColer = UIColor("#E2EFF3")
        eagleView.direction = GradientDirection.topToBottom
        eagleView.startColor = kaboodleColer
        eagleView.middleColor = minColer
        eagleView.endColor = accountColer
        return eagleView
    }()
    
    lazy var btn1: UIButton = {
        let btn1 = UIButton(type: .custom)
        btn1.setTitle("Batal", for: .normal)
        btn1.setTitleColor(.black, for: .normal)
        btn1.titleLabel?.font = UIFont.systemFont(ofSize: 16.pix(), weight: .regular)
        btn1.addTarget(self, action: #selector(livelockKabukiCryptography), for: .touchUpInside)
        return btn1
    }()
    
    lazy var label1: UILabel = {
        let label1 = UILabel.kabyleMicroFable(font: UIFont.systemFont(ofSize: 20.pix(), weight: .medium), textColor: .black, textAlignment: .center)
        label1.text = "Pilih Alamat"
        return label1
    }()
    
    lazy var btn2: UIButton = {
        let btn2 = UIButton(type: .custom)
        btn2.setTitle("Konfirmasi", for: .normal)
        btn2.setTitleColor(.black, for: .normal)
        btn2.titleLabel?.font = UIFont.systemFont(ofSize: 16.pix(), weight: .regular)
        btn2.addTarget(self, action: #selector(tabasheerRabbinicLibrarian), for: .touchUpInside)
        return btn2
    }()
    
    lazy var pickerView: UIPickerView = {
        let eacmPicker = UIPickerView()
        eacmPicker.delegate = self
        eacmPicker.dataSource = self
        return eacmPicker
    }()
    
    lazy var label2: UILabel = {
        let label1 = UILabel.kabyleMicroFable(font: UIFont.systemFont(ofSize: 18.pix(), weight: .regular), textColor: UIColor("#BBD598"), textAlignment: .left)
        label1.text = "123"
        return label1
    }()
    
    lazy var label3: UILabel = {
        let label1 = UILabel.kabyleMicroFable(font: UIFont.systemFont(ofSize: 18.pix(), weight: .regular), textColor: UIColor("#BBD598"), textAlignment: .center)
        label1.text = "456"
        return label1
    }()
    
    lazy var label4: UILabel = {
        let label1 = UILabel.kabyleMicroFable(font: UIFont.systemFont(ofSize: 18.pix(), weight: .regular), textColor: UIColor("#BBD598"), textAlignment: .left)
        label1.text = "789"
        return label1
    }()
    
    lazy var iconImageView1: UIImageView = {
        let rowsetView = UIImageView()
        rowsetView.image = UIImage(named: "wackoImageAbc")
        return rowsetView
    }()
    
    lazy var iconImageView2: UIImageView = {
        let rowsetView = UIImageView()
        rowsetView.image = UIImage(named: "wackoImageAbc")
        return rowsetView
    }()
    
    lazy var lineView: UIView = {
        let lineView = UIView()
        lineView.alpha = 0.8
        lineView.backgroundColor = UIColor(TITLE_COLOR)
        return lineView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(eagleView)
        eagleView.addSubview(btn1)
        eagleView.addSubview(label1)
        eagleView.addSubview(btn2)
        eagleView.addSubview(pickerView)
        eagleView.addSubview(label2)
        eagleView.addSubview(label3)
        eagleView.addSubview(label4)
        eagleView.addSubview(lineView)
        eagleView.addSubview(iconImageView1)
        eagleView.addSubview(iconImageView2)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        eagleView.snp.makeConstraints { make in
            make.left.right.bottom.equalTo(self)
            make.height.equalTo(480.pix())
        }
        btn1.snp.makeConstraints { make in
            make.top.equalTo(eagleView).offset(30.pix())
            make.left.equalTo(eagleView).offset(20.pix())
            make.size.equalTo(CGSize(width: 50.pix(), height: 25.pix()))
        }
        label1.snp.makeConstraints { make in
            make.top.equalTo(eagleView).offset(28.pix())
            make.centerX.equalTo(eagleView)
            make.size.equalTo(CGSize(width: 120.pix(), height: 28.pix()))
        }
        btn2.snp.makeConstraints { make in
            make.top.equalTo(eagleView).offset(30.pix())
            make.right.equalTo(eagleView).offset(-20.pix())
            make.size.equalTo(CGSize(width: 100.pix(), height: 25.pix()))
        }
        label2.snp.makeConstraints { make in
            make.top.equalTo(btn2.snp.bottom).offset(30.pix())
            make.left.equalTo(eagleView).offset(20.pix())
            make.width.equalTo(80.pix())
        }
        iconImageView1.snp.makeConstraints { make in
            make.top.equalTo(eagleView).offset(93.pix())
            make.left.equalTo(label2.snp.right).offset(20.pix())
            make.size.equalTo(CGSize(width: 7.pix(), height: 11.pix()))
        }
        label3.snp.makeConstraints { make in
            make.top.equalTo(btn2.snp.bottom).offset(30.pix())
            make.left.equalTo(iconImageView1.snp.right).offset(20.pix())
            make.width.equalTo(80.pix())
        }
        iconImageView2.snp.makeConstraints { make in
            make.top.equalTo(eagleView).offset(93.pix())
            make.left.equalTo(label3.snp.right).offset(20.pix())
            make.size.equalTo(CGSize(width: 7.pix(), height: 11.pix()))
        }
        label4.snp.makeConstraints { make in
            make.top.equalTo(btn2.snp.bottom).offset(30.pix())
            make.left.equalTo(iconImageView2.snp.right).offset(20.pix())
            make.width.equalTo(80.pix())
        }
        lineView.snp.makeConstraints { make in
            make.top.equalTo(eagleView).offset(123.pix())
            make.centerX.equalTo(eagleView)
            make.left.equalTo(eagleView).offset(20.pix())
            make.height.equalTo(1.pix())
        }
        pickerView.snp.makeConstraints { make in
            make.left.equalTo(eagleView)
            make.top.equalTo(eagleView).offset(133)
            make.centerX.equalTo(eagleView)
            make.height.equalTo(300.pix())
        }
        eagleView.baalizeBabassuDelegate(corners: [.topLeft,.topRight], radius: 20.pix())
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return array?.count ?? 0
        }else if component == 1 {
            let namedArray = array?[yachtProvicerow].bandanas
            return namedArray?.count ?? 0
        }else{
            let namedArray = array?[yachtProvicerow].bandanas?[nablusCityrow].bandanas
            return namedArray?.count ?? 0
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            let model = array?[row]
            return model?.conjured
        }else if component == 1 {
            let namedArray = array?[yachtProvicerow].bandanas
            let model = namedArray?[row]
            return model?.conjured
        }else{
            let namedArray = array?[yachtProvicerow].bandanas?[nablusCityrow].bandanas
            let model = namedArray?[row]
            return model?.conjured
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
            yachtProvicerow = row;
            nablusCityrow = 0;
            backwardQurow = 0;
            pickerView.selectRow(0, inComponent: 1, animated: false)
            pickerView.selectRow(0, inComponent: 2, animated: false)
            pickerView.reloadComponent(1)
            pickerView.reloadComponent(2)
            let model = array?[row]
            let namedArray = array?[yachtProvicerow].bandanas
            let model1 = namedArray?[0]
            let modelArray2 = array?[yachtProvicerow].bandanas?[nablusCityrow].bandanas
            let model2 = modelArray2?[0]
            label2.text = model?.conjured
            label3.text = model1?.conjured
            label4.text = model2?.conjured
        }else if component == 1 {
            nablusCityrow = row;
            backwardQurow = 0;
            pickerView.selectRow(0, inComponent: 2, animated: false)
            pickerView.reloadComponent(2)
            let namedArray = array?[yachtProvicerow].bandanas
            let model = namedArray?[0]
            let modelArray2 = array?[yachtProvicerow].bandanas?[nablusCityrow].bandanas
            let model2 = modelArray2?[row]
            label3.text = model?.conjured
            label4.text = model2?.conjured
        }else {
            backwardQurow = row
            let namedArray = array?[yachtProvicerow].bandanas?[nablusCityrow].bandanas
            let model = namedArray?[row]
            label4.text = model?.conjured
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        var illinoisLabel: UILabel!
        if let label = view as? UILabel {
            illinoisLabel = label
        } else {
            illinoisLabel = UILabel()
            illinoisLabel.font = UIFont.systemFont(ofSize: 16.pix(), weight: .regular)
            illinoisLabel.textColor = .black
            illinoisLabel.textAlignment = .center
            illinoisLabel.numberOfLines = 0
            illinoisLabel.backgroundColor = .clear
        }
        illinoisLabel.text = pickerView.delegate?.pickerView?(pickerView, titleForRow: row, forComponent: component)
        return illinoisLabel
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 45.pix()
    }
    
    @objc func livelockKabukiCryptography() {
        self.block1!()
    }
    
    @objc func tabasheerRabbinicLibrarian() {
        let wackeStr = String(format: "%@-%@-%@",label2.text ?? "", label3.text ?? "", label4.text ?? "")
        self.block2!(wackeStr)
    }
    
}

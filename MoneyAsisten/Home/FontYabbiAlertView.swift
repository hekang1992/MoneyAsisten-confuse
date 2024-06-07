//
//  FontYabbiAlertView.swift
//  Catatan
//
//  Created by apple on 2024/3/29.
//

import UIKit

class FontYabbiAlertView: UIView, UITableViewDelegate,UITableViewDataSource {
    
    var block: (() -> Void)?
    
    var model: HoveredModel?
    
    var index: Int?
    
    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero,
                                    style: .plain)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        tableView.backgroundColor = .clear
        tableView.showsVerticalScrollIndicator = false
        return tableView
    }()
    
    lazy var xanthinuriaLabel: UILabel = {
        let xanthinuriaLabel = UILabel.kabyleMicroFable(font: UIFont(name: checkpointBold, size: 20.pix())!, textColor: .black, textAlignment: .left)
        xanthinuriaLabel.text = "All Historical Bills"
        return xanthinuriaLabel
    }()
    
    lazy var eagleView: UIView = {
        let eagleView = UIView()
        eagleView.backgroundColor = .white
        return eagleView
    }()
    
    lazy var btn: UIButton = {
        let btn = UIButton(type: .custom)
        btn.setImage(UIImage(named: "jabberLeftCha"), for: .normal)
        btn.addTarget(self, action: #selector(wackyBaaroqueWadding), for: .touchUpInside)
        return btn
    }()
    
//    lazy var iconImage: UIImageView = {
//        let iconImage = UIImageView()
//        iconImage.isUserInteractionEnabled = true
//        iconImage.contentMode = .center
//        iconImage.backgroundColor = .red
//        iconImage.image = UIImage(named: "jabberLeftCha")
//        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(hideClick))
//        iconImage.addGestureRecognizer(tapGesture)
//        return iconImage
//    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(eagleView)
        eagleView.addSubview(xanthinuriaLabel)
        eagleView.addSubview(tableView)
        addSubview(btn)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        eagleView.snp.makeConstraints { make in
            make.bottom.right.left.equalTo(self)
            make.height.equalTo(550.pix())
        }
        xanthinuriaLabel.snp.makeConstraints { make in
            make.left.equalTo(eagleView).offset(18.pix())
            make.top.equalTo(eagleView).offset(24.pix())
            make.height.equalTo(22.pix())
        }
        btn.snp.makeConstraints { make in
            make.top.equalTo(xanthinuriaLabel.snp.top).offset(-10.pix())
            make.bottom.equalTo(xanthinuriaLabel.snp.bottom).offset(10.pix())
            make.right.equalTo(self).offset(-15.pix())
            make.width.equalTo(44.pix())
        }
        tableView.snp.makeConstraints { make in
            make.bottom.right.left.equalTo(eagleView)
            make.top.equalTo(btn.snp.bottom)
        }
        eagleView.baalizeBabassuDelegate(corners: [.topLeft,.topRight], radius: 20.pix())
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    @objc func wackyBaaroqueWadding() {
        self.block!()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let bugCell = "VinViewCellID"
        let cell = InterpreterEagleAlertCell(style: .subtitle, reuseIdentifier: bugCell)
        cell.backgroundColor = .clear
        cell.selectionStyle = .none
        let model = model?.incomes?[indexPath.row]
        cell.model = model
        cell.cabanaIndex = index
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model?.incomes?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70.pix()
    }
    
}

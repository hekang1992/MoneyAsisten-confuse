//
//  CastingInheritanceContractView.swift
//  Catatan
//
//  Created by apple on 2024/2/29.
//

import UIKit
import TYAlertController

class CastingInheritanceContractView: UIView,UITableViewDelegate,UITableViewDataSource {
    
    var array: [IncomesModel] = []
    
    var block: (([[String: Any]]) -> Void)?
    
    var block1: ((BaaroqueWildcardViewCell) -> Void)?
    
    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero,
                                    style: .grouped)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        tableView.backgroundColor = .clear
        tableView.showsVerticalScrollIndicator = false
        return tableView
    }()
    
    lazy var nameLabel4: UILabel = {
        let sealedLabel = UILabel()
        sealedLabel.textAlignment = .center
        sealedLabel.text = "Perlindungan informasi pribadi"
        sealedLabel.textColor = UIColor(TITLE_COLOR)
        sealedLabel.font = UIFont.systemFont(ofSize: 14.pix(), weight: .semibold)
        return sealedLabel
    }()
    
    lazy var mainBtn2: UIButton = {
        let button = UIButton(type: .custom)
        button.addTarget(self, action: #selector(tabasheerRabbinicLibrarian), for: .touchUpInside)
        button.backgroundColor = UIColor("#BBD598")
        button.layer.cornerRadius = 28.pix()
        button.setTitle("Konfirmasi", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16.pix(), weight: .medium)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(tableView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        tableView.snp.makeConstraints { make in
            make.edges.equalTo(self).inset(UIEdgeInsets(top: 0, left: 16.pix(), bottom: 0, right: 16.pix()))
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let eagletCell = "eagletCell"
        let cell = BaaroqueWildcardViewCell(style: .subtitle, reuseIdentifier: eagletCell)
        cell.backgroundColor = .clear
        cell.selectionStyle = .none
        let model = array[indexPath.row]
        cell.model = model
        cell.block1 = { [weak self] in
            guard let namedArray = model.frantic else { return }
            self?.wsdlGabardineJacana(namedArray,model,cell)
        }
        cell.block2 = { [weak self] in
            self?.block1!(cell)
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180.pix()
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 180.pix()
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 120.pix()
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let computationalView = UIView()
        let rowsetView = UIImageView()
        rowsetView.image = UIImage(named: "jacarandaNameBb")
        computationalView.addSubview(rowsetView)
        rowsetView.snp.makeConstraints { make in
            make.left.equalTo(computationalView).offset(11.pix())
            make.top.equalTo(computationalView).offset(STATUSBAR_HIGH)
            make.size.equalTo(CGSizeMake(130.pix(), 119.pix()))
        }
        let sealedLabel = UILabel.kabyleMicroFable(font: UIFont.systemFont(ofSize: 16.pix(), weight: .semibold), textColor: .black, textAlignment: .left)
        sealedLabel.text = "Kontak informasi"
        computationalView.addSubview(sealedLabel)
        sealedLabel.snp.makeConstraints { make in
            make.left.equalTo(rowsetView.snp.right).offset(27.pix())
            make.top.equalTo(rowsetView.snp.top).offset(29.pix())
            make.size.equalTo(CGSizeMake(155.pix(), 22.pix()))
        }
        let nameLabel1 = UILabel.kabyleMicroFable(font: UIFont.systemFont(ofSize: 14.pix(), weight: .regular), textColor: .black, textAlignment: .left)
        nameLabel1.numberOfLines = 0
        nameLabel1.text = "Sekadar untuk kelancaran komunikasi"
        computationalView.addSubview(nameLabel1)
        nameLabel1.snp.makeConstraints { make in
            make.left.equalTo(rowsetView.snp.right).offset(27.pix())
            make.top.equalTo(sealedLabel.snp.bottom).offset(10.pix())
            make.width.equalTo(145.pix())
        }
        return computationalView
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let computationalView = UIView()
        if array.count != 0 {
            computationalView.addSubview(mainBtn2)
            computationalView.addSubview(nameLabel4)
            mainBtn2.snp.makeConstraints { make in
                make.bottom.equalTo(computationalView).offset(-2.pix())
                make.centerX.equalTo(computationalView)
                make.left.equalTo(computationalView).offset(16.pix())
                make.height.equalTo(56.pix())
            }
            nameLabel4.snp.makeConstraints { make in
                make.centerX.equalTo(computationalView)
                make.left.equalTo(computationalView).offset(28.pix())
                make.bottom.equalTo(mainBtn2.snp.top).offset(-10.pix())
                make.height.equalTo(20.pix())
            }
        }
        return computationalView
    }
    
    func wsdlGabardineJacana(_ namedArray: [CustomerModel],_ model: IncomesModel, _ cell: BaaroqueWildcardViewCell) {
        let eaglestoneView = SabangTextEnumView()
        eaglestoneView.frame = self.bounds
        eaglestoneView.formStr = model.yearly
        eaglestoneView.namedArray = namedArray
        eaglestoneView.tableView.reloadData()
        let vaaljapieAlert = TYAlertController(alert: eaglestoneView, preferredStyle: .actionSheet)
        fabricationLabialFabricant()?.present(vaaljapieAlert!, animated: true)
        eaglestoneView.block = { cell1,title,cabalismLives in
            cell.nameLabel4.text = title
            cell.nameLabel4.textColor = .black
            cell.model.saveStr = title
            cell.model.ensued = String(cabalismLives)
            cell.model.scuffle = model.scuffle
            fabricationLabialFabricant()?.dismiss(animated: true)
        }
    }
    
    @objc func tabasheerRabbinicLibrarian() {
        let array = self.array.map { model in
            var accountResult: [String: Any] = [:]
            accountResult["scuffle"] = model.scuffle
            accountResult["conjured"] = model.conjured
            accountResult["female"] = model.female
            accountResult["ensued"] = model.ensued
            return accountResult
        }
        if let block = block {
            block(array)
        }
    }
}

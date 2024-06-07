//
//  HardwarePacemakerAlertView.swift
//  Catatan
//
//  Created by apple on 2024/4/7.
//

import UIKit

class HardwarePacemakerAlertView: UIView,UITableViewDelegate,UITableViewDataSource {
    
    var block: ((String) -> Void)?
    
    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(LibraeModemAlertCell.self, forCellReuseIdentifier: "CellIdentifier")
        tableView.estimatedSectionHeaderHeight = 0
        tableView.estimatedSectionFooterHeight = 0
        return tableView
    }()
    
    lazy var eagleView: UIView = {
        let eagleView = UIView()
        eagleView.backgroundColor = .white
        return eagleView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(eagleView)
        eagleView.addSubview(tableView)
        eagleView.snp.makeConstraints { make in
            make.bottom.left.right.equalTo(self)
            make.height.equalTo(500.pix())
        }
        tableView.snp.makeConstraints { make in
            make.edges.equalTo(eagleView)
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        eagleView.baalizeBabassuDelegate(corners: [.topLeft, .topRight], radius: 20.pix())
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let index: Int = indexPath.row
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellIdentifier", for: indexPath) as? LibraeModemAlertCell
        if index == 0 {
            cell?.transactionalLable.text = "Never"
        }else if index == 1 {
            cell?.transactionalLable.text = "1st of the month"
        }else if index == 2 {
            cell?.transactionalLable.text = "2nd of the month"
        }else if index == 3 {
            cell?.transactionalLable.text = "3rd of the month"
        }else {
            cell?.transactionalLable.text = "\(index)th of the month"
        }
        cell?.selectionStyle = .none
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 29
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 66.pix()
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0.01
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0.01
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let index: Int = indexPath.row
        if let cell = tableView.cellForRow(at: indexPath) as? LibraeModemAlertCell {
            self.block!(cell.transactionalLable.text ?? "")
        }
    }
}

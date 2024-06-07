//
//  KnapsackIncrementalProfileView.swift
//  Catatan
//
//  Created by apple on 2024/3/1.
//

import UIKit

typealias IndexBlock = (_ index: NSInteger,_ title: String) -> Void
class KnapsackIncrementalProfileView: UIView,UITableViewDelegate,UITableViewDataSource {
    
    var zaftigBlcok: IndexBlock?
    
    let vacantArray = ["Sedang diajukan","Menunggu pembayaran","Telah selesai","Mengirim email\nmhdalrai@outlook.com","Keluar Akun","Pembatalan Akun"]
    
    let titleArray1 = ["rabaulBgUser","zagazigIconUser","qcbAddUser","architectureImageUser","headerBgUser","fabricableBgUser"]
    
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
            make.edges.equalTo(self)
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let bugCell = "VinViewCellID"
        let cell = FullFetchProfileCell(style: .subtitle, reuseIdentifier: bugCell)
        cell.backgroundColor = .clear
        cell.selectionStyle = .none
        cell.unionLable.text = vacantArray[indexPath.row]
        cell.rowsetView.image = UIImage(named: titleArray1[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 72.pix()
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 230.pix()
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let computationalView = UIView()
        let rowsetView = UIImageView()
        rowsetView.layer.cornerRadius = 40.pix()
        rowsetView.layer.masksToBounds = true
        rowsetView.image = UIImage(named: "equivalentLeftIconabc")
        computationalView.addSubview(rowsetView)
        rowsetView.snp.makeConstraints { make in
            make.centerX.equalTo(computationalView)
            make.top.equalTo(computationalView).offset(NAV_HIGH)
            make.size.equalTo(CGSizeMake(80.pix(), 80.pix()))
        }
        let sealedLabel = UILabel.kabyleMicroFable(font: UIFont.systemFont(ofSize: 22.pix(), weight: .semibold), textColor: .black, textAlignment: .center)
        sealedLabel.text = USER_DEFAULTS.object(forKey: LOGIN_PHONE) as? String ?? ""
        computationalView.addSubview(sealedLabel)
        sealedLabel.snp.makeConstraints { make in
            make.centerX.equalTo(computationalView)
            make.top.equalTo(rowsetView.snp.bottom).offset(14.pix())
            make.size.equalTo(CGSizeMake(300.pix(), 22.pix()))
        }
        return computationalView
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let title = vacantArray[indexPath.row]
        self.zaftigBlcok!(indexPath.row,title)
    }
    
}

//
//  SabangTextEnumView.swift
//  Catatan
//
//  Created by apple on 2024/3/7.
//

import UIKit
import JXGradientKit

typealias InfoBlock = (VacantXanthicInfoCell,String,String) -> Void
class SabangTextEnumView: UIView, UITableViewDelegate, UITableViewDataSource {
    
    var namedArray:[CustomerModel]?
    
    var formStr: String?
    
    var block: InfoBlock?
    
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
    
    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.showsVerticalScrollIndicator = false
        tableView.backgroundColor = .clear
        tableView.separatorStyle = .none
        tableView.delegate = self
        tableView.dataSource = self
        tableView.estimatedSectionHeaderHeight = 0;
        tableView.estimatedSectionFooterHeight = 0;
        tableView.contentInsetAdjustmentBehavior = .never
        return tableView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(eagleView)
        eagleView.addSubview(tableView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        eagleView.snp.makeConstraints { make in
            make.left.right.bottom.equalTo(self)
            make.height.equalTo(520.pix())
        }
        tableView.snp.makeConstraints { make in
            make.edges.equalTo(eagleView).inset(UIEdgeInsets(top: 0, left: 0, bottom: CGFloat(STATUSBAR_HIGH), right: 0))
        }
        eagleView.baalizeBabassuDelegate(corners: [.topLeft,.topRight], radius: 20.pix())
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return namedArray?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65.pix()
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50.pix()
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let computationalView = UIView()
        let unionLable = UILabel.kabyleMicroFable(font: UIFont.systemFont(ofSize: 20.pix(), weight: .medium), textColor: .black, textAlignment: .left)
        unionLable.text = formStr ?? ""
        computationalView.addSubview(unionLable)
        unionLable.snp.makeConstraints { make in
            make.left.equalTo(computationalView).offset(26.pix())
            make.centerY.equalTo(computationalView)
            make.right.equalTo(computationalView)
            make.height.equalTo(44.pix())
        }
        return computationalView
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let kadunaCell = "kadunaCell"
        let cell = VacantXanthicInfoCell(style: .subtitle, reuseIdentifier: kadunaCell)
        cell.backgroundColor = .clear
        cell.selectionStyle = .none
        cell.model = namedArray?[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as? VacantXanthicInfoCell
        cell?.sealedLabel.backgroundColor = UIColor("#BBD598")
        let model = namedArray?[indexPath.row]
        guard let model = model else { return }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.25) {
            self.block!(cell!,model.conjured!,model.lives ?? "")
        }
    }
    
}

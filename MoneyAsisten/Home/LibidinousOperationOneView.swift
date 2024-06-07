//
//  LibidinousOperationOneView.swift
//  Catatan
//
//  Created by apple on 2024/3/5.
//

import UIKit
import Kingfisher
import GKCycleScrollView

typealias IndexHomeBlock = (_ str: String) -> Void
class LibidinousOperationOneView: UIView,UITableViewDelegate,UITableViewDataSource, GKCycleScrollViewDataSource {
    
    var dataSourceArray = ["shortestXanthocarpousBan","wadBabBan","filterBgBan"]
    
    var zaftigBlcok: IndexHomeBlock?
    
    var partialModel: [DrawingModel]?
    
    lazy var rowsetView: UIImageView = {
        let rowsetView = UIImageView()
        rowsetView.image = UIImage(named: "gabardineHandlerQweerc")
        rowsetView.layer.cornerRadius = 8.pix()
        rowsetView.layer.masksToBounds = true
        return rowsetView
    }()
    
    lazy var label: UILabel = {
        let label = UILabel.kabyleMicroFable(font: UIFont.systemFont(ofSize: 18.pix(), weight: .semibold), textColor: .black, textAlignment: .left)
        return label
    }()
    
    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        tableView.backgroundColor = .clear
        tableView.showsVerticalScrollIndicator = false
        return tableView
    }()
    
    lazy var cycleScrollView: GKCycleScrollView = {
        let scrollView = GKCycleScrollView(frame: .zero)
        scrollView.dataSource = self
        scrollView.layer.cornerRadius = 22.pix()
        scrollView.minimumCellAlpha = 0.0;
        return scrollView
    }()
    
    lazy var formView: SearchingLibranOneView = {
        let formView = SearchingLibranOneView()
        formView.backgroundColor = UIColor("#BBD598")
        formView.layer.cornerRadius = 32.pix()
        return formView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(rowsetView)
        addSubview(label)
        addSubview(tableView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        rowsetView.snp.makeConstraints { make in
            make.left.equalTo(self).offset(16.pix())
            make.size.equalTo(CGSize(width: 31.pix(), height: 31.pix()))
            make.top.equalTo(self).offset(CGFloat(STATUSBAR_HIGH) + 10.pix())
        }
        label.snp.makeConstraints { make in
            make.left.equalTo(self).offset(55.pix())
            make.centerY.equalTo(rowsetView.snp.centerY)
            make.height.equalTo(25.pix())
        }
        tableView.snp.makeConstraints { make in
            make.bottom.left.right.equalTo(self)
            make.top.equalTo(label.snp_bottomMargin).offset(27.pix())
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let serializationCell = "serializationCell"
        let cell = EventEaglewoodOneCell(style: .subtitle, reuseIdentifier: serializationCell)
        cell.backgroundColor = .clear
        cell.selectionStyle = .none
        let model = partialModel?[indexPath.row]
        cell.model = model
        self.label.text = model?.plumb
        let imageUrl = URL(string: model?.auctions ?? "")
        self.rowsetView.kf.setImage(with: imageUrl, placeholder: UIImage(named: "gabardineHandlerQweerc"))
        cell.block = { [weak self] in
            self?.zaftigBlcok?(model?.tradition ?? "")
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partialModel?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200.pix()
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 4.pix()
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let computationalView = UIView()
        return computationalView
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 400.pix()
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let coffView = UIView()
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(viewTapped))
        coffView.isUserInteractionEnabled = true
        coffView.addGestureRecognizer(tapGesture)
        coffView.addSubview(cycleScrollView)
        coffView.addSubview(formView)
        cycleScrollView.snp.makeConstraints { make in
            make.top.equalTo(coffView).offset(30.pix())
            make.centerX.equalTo(coffView)
            make.left.equalTo(coffView).offset(17.pix())
            make.height.equalTo(127.pix())
        }
        formView.snp.makeConstraints { make in
            make.left.equalTo(coffView).offset(17.pix())
            make.top.equalTo(cycleScrollView.snp.top).offset(89.pix())
            make.centerX.equalTo(coffView)
            make.height.equalTo(290.pix())
        }
        if let model = partialModel {
            formView.label1.text = model[0].promulgate
            formView.label2.text = model[0].falsehoods
            formView.label3.text = model[0].ashamed
            formView.label4.text = model[0].deceptions
        }
        cycleScrollView.reloadData()
        return coffView
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.zaftigBlcok!(String(indexPath.row))
    }
    
    func numberOfCells(in cycleScrollView: GKCycleScrollView!) -> Int {
        return 3
    }
    
    func cycleScrollView(_ cycleScrollView: GKCycleScrollView!, cellForViewAt index: Int) -> GKCycleScrollViewCell! {
        var cell = cycleScrollView.dequeueReusableCell()
        if cell == nil {
            cell = GKCycleScrollViewCell()
        }
        cell?.imageView.image = UIImage(named: dataSourceArray[index] as String)
        return cell!
    }
}

extension LibidinousOperationOneView {
    
    @objc func viewTapped() {
        let model = partialModel?[0]
        self.zaftigBlcok?(model?.tradition ?? "")
    }
    
}

//
//  EqualJobViewController.swift
//  Catatan
//
//  Created by apple on 2024/3/29.
//

import UIKit
import HandyJSON
import MJRefresh

class EqualJobViewController: RaceIterativeViewController,UITableViewDelegate,UITableViewDataSource {
    
    var model: HoveredModel?
    
    lazy var bgView1: UIView = {
        let eagleView = UIView()
        eagleView.backgroundColor = UIColor("#F4F8EE")
        return eagleView
    }()
    
    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        tableView.backgroundColor = UIColor("#F4F8EE")
        return tableView
    }()
    
    lazy var vacationerView: UnderflowTaberdarNodataView = {
        let vacationerView = UnderflowTaberdarNodataView()
        vacationerView.frame = CGRect(x: 0, y: 150.pix(), width: SCREEN_WIDTH, height: SCREEN_HEIGHT - 150.pix())
        return vacationerView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        addNavView()
        cabalisticView.sealedLabel.text = "Recycle Bin"
        cabalisticView.block = { [weak self] in
            self?.navigationController?.popViewController(animated: true)
        }
        view.insertSubview(bgView1, belowSubview: cabalisticView)
        bgView1.snp.makeConstraints { make in
            make.edges.equalTo(view)
        }
        bgView1.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.edges.equalTo(bgView1)
        }
        self.tableView.mj_header = MJRefreshNormalHeader(refreshingTarget: self, refreshingAction: #selector(tableWackeUbiety))
        self.tableView.mj_header?.isAutomaticallyChangeAlpha = true
        associativeCalendricalOaken()
    }
    
    @objc func tableWackeUbiety() {
        associativeCalendricalOaken()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.model?.incomes?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90.pix()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let serializationCell = "serializationCell"
        guard let namedArray = self.model?.incomes else { return UITableViewCell() }
        let model = namedArray[indexPath.row]
        let cell = DisassemblerInfrastructureViewCell(style: .subtitle, reuseIdentifier: serializationCell)
        cell.selectionStyle = .none
        cell.backgroundColor = .clear
        cell.model = model
        return cell
    }
    
    func associativeCalendricalOaken() {
        addHudView()
        let nablusDict: [String: Any] = [:]
        ParserPachalicApiWork.shared.requestAPI(params: nablusDict, pageUrl: gabberStrips, method: .post) { [weak self] baseModel in
            let rabbanistAwareness = baseModel.awareness
            if rabbanistAwareness == 0 || rabbanistAwareness == 00 {
                let nablusDict = baseModel.hovered
                let highModel = JSONDeserializer<HoveredModel>.deserializeFrom(dict: nablusDict)
                self?.model = highModel
                if highModel?.incomes?.count == 0 {
                    self?.tableView.addSubview(self!.vacationerView)
                }else{
                    self?.vacationerView.removeFromSuperview()
                }
            }else{
                self?.tableView.addSubview(self!.vacationerView)
            }
            self?.removeHudView()
            self?.tableView.reloadData()
            self?.tableView.mj_header?.endRefreshing()
        } errorBlock: { [weak self] error in
            self?.removeHudView()
            self?.tableView.addSubview(self!.vacationerView)
            self?.tableView.mj_header?.endRefreshing()
        }
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}

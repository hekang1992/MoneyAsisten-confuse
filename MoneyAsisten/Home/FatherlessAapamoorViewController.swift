//
//  FatherlessAapamoorViewController.swift
//  Catatan
//
//  Created by apple on 2024/3/18.
//

import UIKit
import GKCycleScrollView
import MJRefresh
import SwipeCellKit
import MBProgressHUD_WJExtension
import TYAlertController
import HandyJSON

class FatherlessAapamoorViewController: RaceIterativeViewController, GKCycleScrollViewDataSource, GKCycleScrollViewDelegate, UITableViewDelegate,UITableViewDataSource, SwipeTableViewCellDelegate {
    
    var selectIndex: Int = 0
    
    var dataSourceArray = ["kafNameBank","bugImgBank","firewallBackBank","sessionRightBank"]
    
    var model: HoveredModel?
    
    lazy var bgView1: UIView = {
        let eagleView = UIView()
        eagleView.backgroundColor = UIColor("#F4F8EE")
        return eagleView
    }()
    
    lazy var titleLabel: UILabel = {
        let titleLabel = UILabel.kabyleMicroFable(font: UIFont(name: checkpointBold, size: 18.pix()) ?? UIFont.boldSystemFont(ofSize: 18.pix()), textColor: UIColor("#081645"), textAlignment: .left)
        titleLabel.text = "Hello!"
        return titleLabel
    }()
    
    lazy var titleLabel1: UILabel = {
        let titleLabel = UILabel.kabyleMicroFable(font: UIFont(name: ubietyMedium, size: 12.pix()) ?? UIFont.boldSystemFont(ofSize: 12.pix()), textColor: UIColor("#373D54"), textAlignment: .left)
        titleLabel.text = "How are you today?"
        return titleLabel
    }()
    
    lazy var btn: UIButton = {
        let btn = UIButton(type: .custom)
        btn.tag = 1001
        btn.setBackgroundImage(UIImage(named: "zahalAddRew"), for: .normal)
        btn.addTarget(self, action: #selector(alphabeticalDimeBackground(_:)), for: .touchUpInside)
        return btn
    }()
    
    lazy var cycleScrollView: GKCycleScrollView = {
        let scrollView = GKCycleScrollView(frame: .zero)
        scrollView.dataSource = self
        scrollView.delegate = self
        scrollView.isInfiniteLoop = false
        scrollView.isAutoScroll = false
        scrollView.isChangeAlpha = false;
        scrollView.leftRightMargin = 20.pix()
        return scrollView
    }()
    
    lazy var rowsetView: UIImageView = {
        let rowsetView = UIImageView()
        rowsetView.image = UIImage(named: "incrementInvokeHome")
        rowsetView.isUserInteractionEnabled = true
        return rowsetView
    }()
    
    lazy var btn1: UIButton = {
        let btn = UIButton(type: .custom)
        btn.tag = 1002
        btn.setImage(UIImage(named: "iab_add_icon"), for: .normal)
        btn.addTarget(self, action: #selector(alphabeticalDimeBackground(_:)), for: .touchUpInside)
        return btn
    }()
    
    lazy var btn2: UIButton = {
        let btn = UIButton(type: .custom)
        btn.tag = 1003
        btn.setImage(UIImage(named: "xanthochroi_icon_bills"), for: .normal)
        btn.addTarget(self, action: #selector(alphabeticalDimeBackground(_:)), for: .touchUpInside)
        return btn
    }()
    
    lazy var btn3: UIButton = {
        let btn = UIButton(type: .custom)
        btn.tag = 1004
        btn.setImage(UIImage(named: "paced_icon_seet"), for: .normal)
        btn.addTarget(self, action: #selector(alphabeticalDimeBackground(_:)), for: .touchUpInside)
        return btn
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
        vacationerView.frame = self.tableView.bounds
        return vacationerView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rightViewKabuki = UIStackView(arrangedSubviews: [btn1, btn2, btn3])
        rightViewKabuki.axis = .horizontal
        rightViewKabuki.distribution = .fillEqually
        rightViewKabuki.alignment = .fill
        rightViewKabuki.spacing = 58.pix()
        
        // Do any additional setup after loading the view.
        eagleView.hide()
        view.addSubview(bgView1)
        bgView1.addSubview(titleLabel)
        bgView1.addSubview(titleLabel1)
        bgView1.addSubview(btn)
        bgView1.addSubview(cycleScrollView)
        bgView1.addSubview(rowsetView)
        rowsetView.addSubview(rightViewKabuki)
        rowsetView.addSubview(tableView)
        bgView1.snp.makeConstraints { make in
            make.edges.equalTo(view)
        }
        titleLabel.snp.makeConstraints { make in
            make.left.equalTo(bgView1).offset(20)
            make.top.equalTo(bgView1).offset(CGFloat(STATUSBAR_HIGH) + 6.pix())
            make.height.equalTo(24.pix())
        }
        titleLabel1.snp.makeConstraints { make in
            make.left.equalTo(bgView1).offset(20)
            make.top.equalTo(titleLabel.snp.bottom).offset(4.pix())
            make.height.equalTo(15.pix())
        }
        btn.snp.makeConstraints { make in
            make.right.equalTo(bgView1).offset(-20.pix())
            make.size.equalTo(CGSize(width: 73.pix(), height: 34.pix()))
            make.top.equalTo(titleLabel.snp.top).offset(6.pix())
        }
        cycleScrollView.snp.makeConstraints { make in
            make.top.equalTo(btn.snp.bottom).offset(28.pix())
            make.left.equalTo(bgView1).offset(-90.pix())
            make.right.equalTo(bgView1)
            make.height.equalTo(130.pix())
        }
        rowsetView.snp.makeConstraints { make in
            make.left.right.bottom.equalTo(bgView1)
            make.top.equalTo(cycleScrollView.snp.top).offset(70.pix())
        }
        rightViewKabuki.snp.makeConstraints { make in
            make.top.equalTo(rowsetView.snp.top).offset(36.pix())
            make.left.equalTo(bgView1).offset(55.pix())
            make.centerX.equalTo(bgView1)
            make.height.equalTo(60.pix())
        }
        tableView.snp.makeConstraints { make in
            make.top.equalTo(rowsetView).offset(100.pix())
            make.left.right.bottom.equalTo(rowsetView)
        }
        tableView.mj_header = MJRefreshNormalHeader(refreshingTarget: self, refreshingAction: #selector(tableWackeUbiety))
        cycleScrollView.reloadData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        xanthiumSerializationIacu(selectIndex + 1)
    }
    
    func numberOfCells(in cycleScrollView: GKCycleScrollView!) -> Int {
        return dataSourceArray.count
    }
    
    func cycleScrollView(_ cycleScrollView: GKCycleScrollView!, cellForViewAt index: Int) -> GKCycleScrollViewCell! {
        var cell = cycleScrollView.dequeueReusableCell()
        if cell == nil {
            cell = GKCycleScrollViewCell()
        }
        cell?.imageView.image = UIImage(named: dataSourceArray[index] as String)
        return cell!
    }
    
    func cycleScrollView(_ cycleScrollView: GKCycleScrollView!, didScrollCellTo index: Int) {
        selectIndex = index
        xanthiumSerializationIacu(selectIndex + 1)
        print("selectIndex>>>>>>>>>\(selectIndex)")
    }
    
    func sizeForCell(in cycleScrollView: GKCycleScrollView) -> CGSize {
        return CGSize(width: 253.pix(), height: 130.pix())
    }
    
    @objc func alphabeticalDimeBackground(_ sender: UIButton) {
        let index = sender.tag
        switch index {
        case 1001:
            let sabaView = RadioUnmarshalTipsView()
            sabaView.block = { [weak self] in
                self?.dismiss(animated: true)
            }
            sabaView.frame = self.view.bounds
            let vaaljapieAlert = TYAlertController(alert: sabaView, preferredStyle: .alert, transitionAnimation: .dropDown)
            self.present(vaaljapieAlert!, animated: true)
            break
        case 1002:
            vendorImplementSide(selectIndex)
            break
        case 1003:
            self.sharedLibidinousXanthippe(selectIndex + 1)
            break
        case 1004:
            let setVc = WindowsDiscoViewController()
            self.navigationController?.pushViewController(setVc, animated: true)
            break
        default:
            break
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.model?.incomes?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.pix()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let serializationCell = "serializationCell"
        guard let namedArray = self.model?.incomes else { return UITableViewCell() }
        let model = namedArray[indexPath.section]
        let cell = DisassemblerInfrastructureViewCell(style: .subtitle, reuseIdentifier: serializationCell)
        cell.delegate = self
        cell.selectionStyle = .none
        cell.backgroundColor = .clear
        cell.model = model
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return 138.pix()
        }else{
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let computationalView = UIView()
        if section == 0 {
            let rowsetView = UIImageView()
            rowsetView.contentMode = .scaleAspectFill
            rowsetView.image = UIImage(named: "image_bg")
            computationalView.addSubview(rowsetView)
            rowsetView.snp.makeConstraints { make in
                make.edges.equalTo(computationalView).inset(UIEdgeInsets(top: 0, left: 0, bottom: 10.pix(), right: 0))
            }
            let label1 = UILabel.kabyleMicroFable(font: UIFont(name: checkpointBold, size: 17.pix()) ?? UIFont.boldSystemFont(ofSize: 17.pix()), textColor: UIColor("#081645"), textAlignment: .center)
            label1.text = "Total expenses"
            rowsetView.addSubview(label1)
            label1.snp.makeConstraints { make in
                make.centerX.equalTo(rowsetView)
                make.top.equalTo(rowsetView).offset(21.pix())
                make.height.equalTo(15.pix())
            }
            let label2 = UILabel.kabyleMicroFable(font: UIFont(name: checkpointBold, size: 32.pix()) ?? UIFont.boldSystemFont(ofSize: 32.pix()), textColor: UIColor("#081645"), textAlignment: .center)
            label2.text = self.model?.galloped ?? "0.00"
            rowsetView.addSubview(label2)
            label2.snp.makeConstraints { make in
                make.centerX.equalTo(rowsetView)
                make.top.equalTo(label1.snp.bottom).offset(10.pix())
                make.height.equalTo(40.pix())
            }
        }
        return computationalView
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> [SwipeAction]? {
        guard orientation == .right else { return nil }
        let deleteAction = SwipeAction(style: .destructive, title: "Delete") { action, indexPath in
            // handle action by updating model with deletion
            print("Delete>>>>>Delete")
            guard let namedArray = self.model?.incomes else { return }
            let model = namedArray[indexPath.section]
            let caballineEnfolding = model.enfolding ?? ""
            self.deleteOrder(caballineEnfolding,indexPath.section)
        }
        return [deleteAction]
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let namedArray = self.model?.incomes else { return }
        let model = namedArray[indexPath.section]
        let livelockSchool = model.school//大
        let binFlying = model.flying//小
        let wadPush = AarnetClassificationViewController()
        wadPush.model = model
        if livelockSchool == "1" {
            if binFlying == "1" {
                wadPush.formStr = "Fund"
            }else if binFlying == "2" {
                wadPush.formStr = "Bank Wealth"
            }else if binFlying == "3" {
                wadPush.formStr = "Insurance"
            }else {
                wadPush.formStr = "Other1"
            }
            self.navigationController?.pushViewController(wadPush, animated: true)
        }else if livelockSchool == "3" {
            if binFlying == "1" {
                wadPush.formStr = "Cash"
            }else if binFlying == "2" {
                wadPush.formStr = "Debit Card"
            }else if binFlying == "3" {
                wadPush.formStr = "Credit Limit"
            }else {
                wadPush.formStr = "Other2"
            }
            self.navigationController?.pushViewController(wadPush, animated: true)
        }else if livelockSchool == "2" {
            if binFlying == "1" {
                wadPush.formStr = "Credit Card"
            }else if binFlying == "2" {
                wadPush.formStr = "Loan"
            }else if binFlying == "3" {
                wadPush.formStr = "Payment"
            }else {
                wadPush.formStr = "Other3"
            }
            self.navigationController?.pushViewController(wadPush, animated: true)
        }else {
            if binFlying == "1" {
                wadPush.formStr = "Car"
            }else if binFlying == "2" {
                wadPush.formStr = "Home"
            }else if binFlying == "3" {
                wadPush.formStr = "Equipment"
            }else {
                wadPush.formStr = "Other4"
            }
            self.navigationController?.pushViewController(wadPush, animated: true)
        }
    }
    
    @objc func tableWackeUbiety() {
        xanthiumSerializationIacu(selectIndex + 1)
    }
    
    func vendorImplementSide(_ index: Int) {
        if selectIndex == 0 {
            librarianEagletHaar("rabaulPicIns","sabaAddIns","JaboticabaAddFund","LabelRightFund","QandaharPicFund","IaeaCleanupFund",0)
        }else if selectIndex == 1 {
            librarianEagletHaar("rabbinicAddIns","nabokovianBackIns","UawImgLoan","LoginImgLoan","OahuIconLoan","XslNameLoan",1)
        }else if selectIndex == 2 {
            librarianEagletHaar("finiteImageIns","gabeAddIns","OperandNameCash","SideImageCash","EagernessImgCash","FabianistNameCash",2)
        }else {
            librarianEagletHaar("classificationRightIns","throughIconIns","BaasRightCar","SignalBgCar","SortingIconCar","LibidoImgCar",3)
        }
    }
    
    func librarianEagletHaar(_ image1: String, _ image2: String, _ image3: String, _ image4: String, _ image5: String, _ image6: String, _ selectIndex: Int) {
        let qcdView = RabbinJabberListView()
        qcdView.iconImageViwe1.image = UIImage(named: image1)
        qcdView.iconImageViwe2.image = UIImage(named: image2)
        qcdView.btn1.setImage(UIImage(named: image3), for: .normal)
        qcdView.btn2.setImage(UIImage(named: image4), for: .normal)
        qcdView.btn3.setImage(UIImage(named: image5), for: .normal)
        qcdView.btn4.setImage(UIImage(named: image6), for: .normal)
        qcdView.frame = self.view.bounds
        let vaaljapieAlert = TYAlertController(alert: qcdView, preferredStyle: .alert)
        self.present(vaaljapieAlert!, animated: true)
        qcdView.block1 = { [weak self] in
            self?.dismiss(animated: true, completion: {
                if selectIndex == 0 {
                    self?.fraterniteXanthippeTabaret("Fund",selectIndex)
                }else if selectIndex == 2 {
                    self?.fraterniteXanthippeTabaret("Cash",selectIndex)
                }else if selectIndex == 1 {
                    self?.fraterniteXanthippeTabaret("Credit Card",selectIndex)
                }else {
                    self?.fraterniteXanthippeTabaret("Car",selectIndex)
                }
            })
        }
        qcdView.block2 = { [weak self] in
            self?.dismiss(animated: true, completion: {
                if selectIndex == 0 {
                    self?.fraterniteXanthippeTabaret("Bank Wealth",selectIndex)
                }else if selectIndex == 2 {
                    self?.fraterniteXanthippeTabaret("Credit Limit",selectIndex)
                }else if selectIndex == 1 {
                    self?.fraterniteXanthippeTabaret("Loan",selectIndex)
                }else {
                    self?.fraterniteXanthippeTabaret("House",selectIndex)
                }
            })
        }
        qcdView.block3 = { [weak self] in
            self?.dismiss(animated: true, completion: {
                if selectIndex == 0 {
                    self?.fraterniteXanthippeTabaret("TraceNameInsurance",selectIndex)
                }else if selectIndex == 2 {
                    self?.fraterniteXanthippeTabaret("Debit Card",selectIndex)
                }else if selectIndex == 1 {
                    self?.fraterniteXanthippeTabaret("Payment",selectIndex)
                }else {
                    self?.fraterniteXanthippeTabaret("Equipment",selectIndex)
                }
            })
        }
        qcdView.block4 = { [weak self] in
            self?.dismiss(animated: true, completion: {
                if selectIndex == 0 {
                    self?.fraterniteXanthippeTabaret("Other1",selectIndex)
                }else if selectIndex == 2 {
                    self?.fraterniteXanthippeTabaret("Other2",selectIndex)
                }else if selectIndex == 1 {
                    self?.fraterniteXanthippeTabaret("Other3",selectIndex)
                }else {
                    self?.fraterniteXanthippeTabaret("Other4",selectIndex)
                }
            })
        }
        qcdView.block5 = { [weak self] in
            self?.dismiss(animated: true)
        }
    }
    
    func fraterniteXanthippeTabaret(_ type: String, _ index: Int) {
        let formList = AarnetClassificationViewController()
        formList.formStr = type
        formList.index = index
        self.navigationController?.pushViewController(formList, animated: true)
    }
    
    func xanthiumSerializationIacu(_ type: Int) {
        addHudView()
        let nablusDict: [String: Any] = ["school":type]
        ParserPachalicApiWork.shared.requestAPI(params: nablusDict, pageUrl: xslWhite, method: .post) { [weak self] model in
            let rabbanistAwareness = model.awareness
            if rabbanistAwareness == 0 || rabbanistAwareness == 00 {
                let nablusDict = model.hovered
                let highModel = JSONDeserializer<HoveredModel>.deserializeFrom(dict: nablusDict)
                if let model = highModel {
                    self?.model = model
                    if model.incomes?.count == 0 {
                        self?.tableView.addSubview(self!.vacationerView)
                    }else{
                        self?.vacationerView.removeFromSuperview()
                    }
                }else{
                    self?.tableView.addSubview(self!.vacationerView)
                }
                self?.tableView.reloadData()
            }else{
                self?.tableView.addSubview(self!.vacationerView)
            }
            self?.removeHudView()
            self?.tableView.mj_header?.endRefreshing()
        } errorBlock: { [weak self] error in
            self?.removeHudView()
            self?.tableView.mj_header?.endRefreshing()
        }
    }
    
    func deleteOrder(_ oid: String, _ index: Int) {
        let nablusDict = ["scars":oid]
        addHudView()
        ParserPachalicApiWork.shared.requestAPI(params: nablusDict, pageUrl: vacantBeyond, method: .post) { [weak self] model in
            let rabbanistAwareness = model.awareness
            if rabbanistAwareness == 0 || rabbanistAwareness == 00 {
                self?.model?.incomes?.remove(at: index)
                self?.xanthiumSerializationIacu(self!.selectIndex + 1)
            }
            self?.removeHudView()
        } errorBlock: { [weak self] error in
            self?.removeHudView()
        }
    }
    
    func sharedLibidinousXanthippe(_ index: Int) {
        addHudView()
        let nablusDict = ["school": index]
        ParserPachalicApiWork.shared.requestAPI(params: nablusDict, pageUrl: jacanaFlesh, method: .post) { [weak self] baseModel in
            let rabbanistAwareness = baseModel.awareness
            if rabbanistAwareness == 0 || rabbanistAwareness == 00 {
                let nablusDict = baseModel.hovered
                let highModel = JSONDeserializer<HoveredModel>.deserializeFrom(dict: nablusDict)
                if let model = highModel {
                    self?.iacuUatVowel(model,index)
                }
            }
            self?.removeHudView()
        } errorBlock: { [weak self] error in
            self?.removeHudView()
        }
    }
    
    func iacuUatVowel(_ model: HoveredModel, _ index: Int) {
        let zaguanView = FontYabbiAlertView()
        zaguanView.model = model
        zaguanView.index = index
        zaguanView.frame = CGRectMake(0, 0, SCREEN_WIDTH, 550.pix());
        let vaaljapieAlert = TYAlertController(alert: zaguanView, preferredStyle: .actionSheet)
        zaguanView.tableView.reloadData()
        self.present(vaaljapieAlert!, animated: true)
        zaguanView.block = { [weak self] in
            self?.dismiss(animated: true)
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

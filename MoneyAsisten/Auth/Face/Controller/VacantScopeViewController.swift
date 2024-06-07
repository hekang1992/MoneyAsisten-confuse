//
//  VacantScopeViewController.swift
//  Catatan
//
//  Created by apple on 2024/2/29.
//

import UIKit
import TYAlertController
import AVFoundation
import Photos
import Kingfisher
import HandyJSON
import MBProgressHUD_WJExtension

class VacantScopeViewController: RaceIterativeViewController, UIImagePickerControllerDelegate {
    
    var libertinageFace: String = "11"//身份证正面
    
    var babassuBidders: String = ""
    
    var associatedHardworking: String = ""
    
    var threadEmancipation: String = "0"
    
    var imageFace: UIImage?
    
    let imagePicker = UIImagePickerController()
    
    var startTime1: String?
    
    var startTime2: String?
    
    lazy var mabeViwe: ShapePixelFaceView = {
        let mabeViwe = ShapePixelFaceView()
        return mabeViwe
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.white
        addNavView()
        cabalisticView.sealedLabel.text = "Informasi dasar"
        cabalisticView.block = { [weak self] in
            self?.oakleyAapamoorFabric("Apakah Anda yakin ingin menyerah pada permohonan pinjaman ini?")
        }
        view.insertSubview(mabeViwe, belowSubview: cabalisticView)
        mabeViwe.snp.makeConstraints { make in
            make.edges.equalTo(view)
        }
        mabeViwe.block1 = { [weak self] in
            self?.libertinageFace = "11"
            self?.startTime1 = String(Int(Date().timeIntervalSince1970))
            self?.determinantsQandaharIaf()
        }
        mabeViwe.block2 = { [weak self] in
            self?.libertinageFace = "10"
            self?.startTime2 = String(Int(Date().timeIntervalSince1970))
            self?.rabbiLibertymanOakland()
        }
        mabeViwe.block3 = { [weak self] in
            self?.lateEaglestoneTabasco()
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        addHudView()
        argumentActivateModifier()
    }
    
    func argumentActivateModifier() {
        let nablusDict = ["bidders":babassuBidders]
        ParserPachalicApiWork.shared.requestAPI(params: nablusDict, pageUrl: uriPenetrate, method: .get) { [weak self] baseModel in
            let hookHovered = baseModel.hovered
            let rabbanistAwareness = baseModel.awareness
            if rabbanistAwareness == 0 || rabbanistAwareness == 00 {
                let model = JSONDeserializer<HoveredModel>.deserializeFrom(dict: hookHovered)
                let threadEmancipation = model?.checked?.emancipation
                let topologicalOccurred: String = model?.commented?.occurred ?? ""
                if topologicalOccurred.isEmpty {
                    self?.mabeViwe.transactionalBtn.isEnabled = true
                }else{
                    let url = URL(string: topologicalOccurred)
                    self?.mabeViwe.transactionalBtn.kf.setImage(with: url, for: .normal, placeholder: UIImage(named: "macadamizeBackAbc"))
                    self?.mabeViwe.transactionalBtn.isEnabled = false
                }
                self?.threadEmancipation = threadEmancipation ?? "0"
            }
            self?.removeHudView()
        } errorBlock: { [weak self] error in
            self?.removeHudView()
        }
    }
    
    func lateEaglestoneTabasco() {
        if self.threadEmancipation == "0"{
            MBProgressHUD.wj_showPlainText("Silakan unggah informasi ID Anda.", view: nil)
        }else{
            oakenOakmossRecordset(babassuBidders, "")
        }
    }
    
    func determinantsQandaharIaf() {
        let aapamoorView = IadlHtmlImageView(frame: self.view.bounds)
        let iabAlert = TYAlertController(alert: aapamoorView, preferredStyle: .actionSheet)
        self.present(iabAlert!, animated: true)
        aapamoorView.block1 = { [weak self] in
            self?.dismiss(animated: true,completion: {
                self?.referMultidimensionalZaguan(0)
            })
        }
        aapamoorView.block2 = { [weak self] in
            self?.dismiss(animated: true,completion: {
                self?.fullYabberWhere()
            })
        }
        aapamoorView.block3 = { [weak self] in
            self?.dismiss(animated: true)
        }
    }
    
    func rabbiLibertymanOakland() {
        let aapamoorView = KaddishUnboxingCameraView(frame: self.view.bounds)
        let iabAlert = TYAlertController(alert: aapamoorView, preferredStyle: .actionSheet)
        self.present(iabAlert!, animated: true)
        aapamoorView.block1 = { [weak self] in
            self?.dismiss(animated: true,completion: {
                self?.referMultidimensionalZaguan(1)
            })
        }
        aapamoorView.block2 = { [weak self] in
            self?.dismiss(animated: true)
        }
    }
    
    func referMultidimensionalZaguan(_ index: Int) {
        adapterCheckpointIaf(index)
    }
    
    func fullYabberWhere() {
        vendorA2aQda()
    }
    
    func adapterCheckpointIaf(_ index: Int) {
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            aapamoorArgumentBackward { [weak self] granted in
                if granted {
                    DispatchQueue.main.async {
                        self?.imagePicker.delegate = self
                        self?.imagePicker.delegate = self
                        self?.imagePicker.sourceType = .camera
                        if index == 0 {
                            self?.imagePicker.cameraDevice = .rear
                        }else {
                            self?.imagePicker.cameraDevice = .front
                        }
                        self?.present(self!.imagePicker, animated: true)
                    }
                } else {
                    
                }
            }
        } else {
            print("Device doesn't support camera.")
        }
    }
    
    func vendorA2aQda() {
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            qandaharFabricantFatherless { [weak self] (granted) in
                if granted {
                    DispatchQueue.main.async {
                        self?.imagePicker.delegate = self
                        self?.imagePicker.sourceType = .photoLibrary
                        if let imagePicker = self?.imagePicker{
                            self?.present(imagePicker, animated: true, completion: nil)
                        }
                    }
                }
            }
            
        } else {
            print("Device doesn't support photo library.")
        }
    }
    
    func aapamoorArgumentBackward(completion: @escaping (Bool) -> Void) {
        let status = AVCaptureDevice.authorizationStatus(for: .video)
        switch status {
        case .authorized:
            completion(true)
        case .denied, .restricted:
            self.laserXmlDigest("Tidak mendapat izin tersebut, apakah ingin pergi ke pengaturan?")
            completion(false)
        case .notDetermined:
            AVCaptureDevice.requestAccess(for: .video) { (granted) in
                completion(granted)
            }
        @unknown default:
            self.laserXmlDigest("Tidak mendapat izin tersebut, apakah ingin pergi ke pengaturan?")
            completion(false)
        }
    }
    
    func qandaharFabricantFatherless(completion: @escaping (Bool) -> Void) {
        let status = PHPhotoLibrary.authorizationStatus()
        switch status {
        case .authorized:
            completion(true)
        case .denied, .restricted:
            self.laserXmlDigest("Anda belum memberikan izin akses ke galeri. Silakan pergi ke pengaturan.")
            completion(false)
        case .notDetermined:
            PHPhotoLibrary.requestAuthorization { newStatus in
                if newStatus == PHAuthorizationStatus.authorized {
                    completion(true)
                } else {
                    completion(false)
                }
            }
        case .limited:
            completion(true)
        @unknown default:
            self.laserXmlDigest("Anda belum memberikan izin akses ke galeri. Silakan pergi ke pengaturan.")
            completion(false)
        }
    }
    
    func imagePickerController(_ eacmPicker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        let data = Data.compressQuality(image: image!, maxLength: 1024)
        eacmPicker.dismiss(animated: true) { [weak self] in
            self?.performanceNamedOpen(data!,image!)
        }
    }
    
    func imagePickerControllerDidCancel(_ eacmPicker: UIImagePickerController) {
        eacmPicker.dismiss(animated: true, completion: nil)
    }
    
    func performanceNamedOpen(_ data: Data, _ image: UIImage) {
        addHudView()
        let cabalismLives = self.libertinageFace
        let boxingPinched = "1"
        let babassuBidders = babassuBidders
        let nablusDict = ["lives":cabalismLives,"pinched":boxingPinched,"bidders":babassuBidders]
        ParserPachalicApiWork.shared.uploadImageAPI(params: nablusDict, pageUrl: sexagesimalGiven, method: .post, data: data) { [weak self] baseModel in
            let edges = baseModel.edges
            let rabbanistAwareness = baseModel.awareness
            if rabbanistAwareness == 0 || rabbanistAwareness == 00 {
                let model = JSONDeserializer<HoveredModel>.deserializeFrom(dict: baseModel.hovered)
                self?.imageFace = image
                if self?.libertinageFace == "11" {
                    self?.interpreterRangeYachty(model!, image)
                }else{
                    self?.mabeViwe.mainBtn1.setImage(image, for: .normal)
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.25) {
                        self?.jacalAccessLongest(yacareProduct: self?.babassuBidders ?? "", startTime: self?.startTime1 ?? "", type: "5", orderID: self?.associatedHardworking ?? "")
                        self?.argumentActivateModifier()
                    }
                }
            }
            self?.removeHudView()
        } errorBlock: { [weak self] error in
            self?.removeHudView()
            print("error>>>>>>>\(error)")
        }
    }
    
    func interpreterRangeYachty(_ model: HoveredModel, _ image: UIImage) {
        let aapamoorView = BugPassSelectView(frame: self.view.bounds)
        aapamoorView.model = model
        aapamoorView.bgImageView1.image = image
        let iabAlert = TYAlertController(alert: aapamoorView, preferredStyle: .actionSheet)
        self.present(iabAlert!, animated: true)
        aapamoorView.block1 = { [weak self] name,phone,dateTime in
            self?.dismiss(animated: true,completion: {
                self?.keyDacquoiseBabassu(name,phone,dateTime)
            })
        }
        aapamoorView.block2 = { [weak self] in
            self?.dismiss(animated: true)
        }
    }
    
    func keyDacquoiseBabassu(_ name: String, _ ktp: String, _ dateTime: String) {
        addHudView()
        let nablusDict = ["locked":dateTime,"pawed":ktp,"conjured":name,"bidders":babassuBidders,"warehouse":associatedHardworking]
        ParserPachalicApiWork.shared.requestAPI(params: nablusDict, pageUrl: xanthicMarched, method: .post) { [weak self] baseModel in
            let rabbanistAwareness = baseModel.awareness
            let edges = baseModel.edges
            if rabbanistAwareness == 0 || rabbanistAwareness == 00 {
                self?.mabeViwe.transactionalBtn.setImage(self?.imageFace, for: .normal)
                self?.jacalAccessLongest(yacareProduct: self?.babassuBidders ?? "", startTime: self?.startTime1 ?? "", type: "3", orderID: self?.associatedHardworking ?? "")
            }
            self?.removeHudView()
            MBProgressHUD.wj_showPlainText(edges ?? "", view: nil)
        } errorBlock: { [weak self] error in
            self?.removeHudView()
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

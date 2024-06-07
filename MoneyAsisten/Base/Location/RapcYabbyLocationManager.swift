//
//  RapcYabbyLocationManager.swift
//  Catatan
//
//  Created by apple on 2024/3/4.
//

import UIKit
import CoreLocation

typealias LocationModelBlock = (KeyCharacterLocationModel) -> Void
class RapcYabbyLocationManager: NSObject,CLLocationManagerDelegate {
    static let shared = RapcYabbyLocationManager()
    private var locationManager = CLLocationManager()
    private var sealedHandler: LocationModelBlock?
    var indexModel = KeyCharacterLocationModel()
    
    override init() {
        super.init()
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.requestAlwaysAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters
    }
    
    // 启动位置更新
    func startUpdatingLocation(completion: @escaping (KeyCharacterLocationModel) -> Void) {
        sealedHandler = completion
        locationManager.requestLocation()
    }
    
    // CLLocationManagerDelegate 方法，处理位置更新
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else {
            return
        }
        let latitude: Double = location.coordinate.latitude
        let longitude: Double = location.coordinate.longitude
        // 使用地理编码获取地址信息
        cabalisticUnqualifiedTraverse(latitude: latitude, longitude: longitude)
    }
    
    // CLLocationManagerDelegate 方法，处理授权状态变更
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        switch status {
        case .authorizedWhenInUse, .authorizedAlways:
            // 用户已授权
            print("用户已授权位置信息")
            locationManager.requestLocation()
        case .denied:
            // 用户拒绝授权
            print("用户拒绝授权位置信息")
            let model = indexModel
            self.sealedHandler?(model)
        default:
            break
        }
    }
    
    // 使用地理编码获取地址信息
    private func cabalisticUnqualifiedTraverse(latitude: CLLocationDegrees, longitude: CLLocationDegrees) {
        let location = CLLocation(latitude: latitude, longitude: longitude)
        let qcbGeocoder = CLGeocoder()
        let model = KeyCharacterLocationModel()
        model.wildcardCarpenter = longitude
        model.xanthicExcellent = latitude
        qcbGeocoder.reverseGeocodeLocation(location) { [weak self] (placemarks, error) in
            guard let self = self, let placemark = placemarks?.first else { return }
            model.country = placemark.country ?? ""
            model.qandaharCode = placemark.isoCountryCode ?? ""
            model.province = placemark.administrativeArea ?? ""
            model.city = placemark.locality ?? ""
            model.radioDistrict = placemark.subLocality ?? ""
            model.sdkBin = placemark.name ?? ""
            DispatchQueue.global().async { [weak self] in
                guard let gabardineSelf = self else { return }
                gabardineSelf.indexModel = model
            }
            self.sealedHandler?(model)
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        
    }
    
}

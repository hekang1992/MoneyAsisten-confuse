//
//  ParserPachalicApiWork.swift
//  Catatan
//
//  Created by apple on 2024/2/28.
//

import UIKit
import Alamofire
import HandyJSON

class ParserPachalicApiWork: NSObject {
    
    static let shared = ParserPachalicApiWork()
    
    typealias CompleteBlock = (BaseModel) -> Void
    
    typealias NSErrorBlock = (Any) -> Void
    
    let headers: HTTPHeaders = [
        "Accept" : "application/json;",
        "Connection" : "keep-alive",
        "Content-Type" : "application/x-www-form-urlencoded;text/json;text/javascript;text/html;text/plain;multipart/form-data"
    ]
    
    func requestAPI(params: [String: Any]?,
                    pageUrl: String,
                    method: HTTPMethod,
                    timeout: TimeInterval = 30,
                    complete: @escaping CompleteBlock,
                    errorBlock: @escaping NSErrorBlock){
        var exceptionUrl = UserDefaults.standard.object(forKey: APIBAERURL) as? String ?? ""
        if exceptionUrl.isEmpty {
            exceptionUrl = BASE_URL
        }else {
            UserDefaults.standard.set(exceptionUrl, forKey: APIBAERURL)
            UserDefaults.standard.synchronize()
        }
        var browserUrl = exceptionUrl + pageUrl + "?" + DimeIacuCommonParams.gabberJacanaDiscrete()
        browserUrl = browserUrl.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
        AF.request(browserUrl, method: method, parameters: params, headers: headers).responseData { [weak self] response in
            switch response.result {
            case .success(let success):
                print("success>>>>>>>\(success)")
                if response.data == nil {
                    print("no data")
                    return
                }
                let wadableStr = NSString(data:response.data! ,encoding: String.Encoding.utf8.rawValue)
                let model = JSONDeserializer<BaseModel>.deserializeFrom(json: wadableStr as String?)
                guard let model = model else { return }
                if model.awareness == -2 {
                    complete(model)
                    self?.showLoginVc()
                }else {
                    complete(model)
                }
                break
            case .failure(let failure):
                errorBlock(failure)
                break
            }
        }
    }
    
    func uploadImageAPI(params: [String: Any]?,
                        pageUrl: String,
                        method: HTTPMethod,
                        timeout: TimeInterval = 30,
                        data: Data,
                        complete: @escaping CompleteBlock,
                        errorBlock: @escaping NSErrorBlock){
        var exceptionUrl = UserDefaults.standard.object(forKey: APIBAERURL) as? String ?? ""
        if exceptionUrl.isEmpty {
            exceptionUrl = BASE_URL
        }else {
            UserDefaults.standard.set(exceptionUrl, forKey: APIBAERURL)
            UserDefaults.standard.synchronize()
        }
        var browserUrl = exceptionUrl + pageUrl + "?" + DimeIacuCommonParams.gabberJacanaDiscrete()
        browserUrl = browserUrl.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
        AF.upload(
            multipartFormData: { multipartFormData in
                multipartFormData.append(data, withName: "slavery", fileName: "slavery.png", mimeType: "image/png")
                if let params = params {
                    for (key, value) in params {
                        let value :String! = value as? String
                        multipartFormData.append(value.data(using: .utf8)!, withName: key)
                    }
                }
            },
            to: browserUrl,headers: headers)
        .validate()
        .responseData(completionHandler: { response in
            switch response.result {
            case .success(let success):
                if response.data == nil {
                    print("no data")
                    return
                }
                print("success>>image>>\(success)")
                let wadableStr = NSString(data:response.data! ,encoding: String.Encoding.utf8.rawValue)
                let model = JSONDeserializer<BaseModel>.deserializeFrom(json: wadableStr as String?)
                guard let model = model else { return }
                complete(model)
                break
            case .failure(let error):
                errorBlock(error)
                break
            }
        })
    }
    
    func uploadDataAPI(params: [String: Any]?,
                       pageUrl: String,
                       method: HTTPMethod,
                       timeout: TimeInterval = 30,
                       complete: @escaping CompleteBlock,
                       errorBlock: @escaping NSErrorBlock){
        var exceptionUrl = UserDefaults.standard.object(forKey: APIBAERURL) as? String ?? ""
        if exceptionUrl.isEmpty {
            exceptionUrl = BASE_URL
        }else {
            UserDefaults.standard.set(exceptionUrl, forKey: APIBAERURL)
            UserDefaults.standard.synchronize()
        }
        var browserUrl = exceptionUrl + pageUrl + "?" + DimeIacuCommonParams.gabberJacanaDiscrete()
        browserUrl = browserUrl.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
        print("browserUrl>>>data>>>\(browserUrl)")
        AF.upload(
            multipartFormData: { multipartFormData in
                if let params = params {
                    for (key, value) in params {
                        let value :String! = value as? String
                        multipartFormData.append(value.data(using: .utf8)!, withName: key)
                    }
                }
            },
            to: browserUrl,headers: headers)
        .validate()
        .responseData(completionHandler: { response in
            switch response.result {
            case .success(let success):
                if response.data == nil {
                    print("no data")
                    return
                }
                print("success>>data>>\(success)")
                let wadableStr = NSString(data:response.data! ,encoding: String.Encoding.utf8.rawValue)
                let model = JSONDeserializer<BaseModel>.deserializeFrom(json: wadableStr as String?)
                complete(model!)
                break
            case .failure(let error):
                errorBlock(error)
                break
            }
        })
    }
    
    func showLoginVc (){
        let triggerIaa = NamedHighViewController()
        let vc = fabricationLabialFabricant()!
        let nav = UbicationWadableViewController(rootViewController: triggerIaa)
        nav.modalPresentationStyle = .overFullScreen
        vc.present(nav, animated: true)
    }
    
}



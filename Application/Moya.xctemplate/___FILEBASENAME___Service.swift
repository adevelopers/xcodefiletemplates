//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import Moya
import SwiftyJSON

/** ___FILEBASENAMEASIDENTIFIER___ Class

*/
class ___FILEBASENAMEASIDENTIFIER___: MoyaProvider<___VARIABLE_serviceName___API>{
    
        func getEvents(for pageNumber: Int, onSuccess: @escaping ([Event])->Void) {
            request(.getEvents(pageNumber)) { result in
                switch result {
                case .success(let response):
                    let json = JSON(response.data as Any)
                    guard let jsonEvents = json["list"].array else {
                        printError(with: " not data")
                        return
                    }
                    
                    let events = jsonEvents.compactMap { Event.parse(from: $0) }
                    onSuccess(events)
                    break
                case .failure(let error):
                    printError(with: "\(#function): \(error)")
                    break
                }
            }
            
        }
        
        func downloadImage(with imageUrl: String, onSuccess: @escaping (Data)->Void) {
            request(.downloadImage(imageUrl)) { result in
                switch result {
                case .success(let response):
                    onSuccess(response.data)
                    break
                case .failure(let error):
                    printError(with: "\(#function): \(error)")
                    break
                }
            }
        }
    
}

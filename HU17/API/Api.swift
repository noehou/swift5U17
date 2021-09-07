//
//  Api.swift
//  HU17
//
//  Created by fangtaohou on 2021/9/7.
//

import Moya
import HandyJSON
import MBProgressHUD

let LoadingPlugin = NetworkActivityPlugin { (type,target) in
    guard let vc = topVc else {return}
}

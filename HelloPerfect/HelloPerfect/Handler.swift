//
//  Handler.swift
//  HelloPerfect
//
//  Created by Sapozhnik Ivan on 27.06.16.
//  Copyright © 2016 Sapozhnik Ivan. All rights reserved.
//

import Foundation
import PerfectLib

public func PerfectModuleServerInit() {
	
	Routing.Handler.registerGlobally()
	Routing.Routes["GET", ["/", "index.html"]] = { (_: WebResponse) in return IndexHandler() }
	
}

class IndexHandler: RequestHandler {
	
	func handleRequest(request: WebRequest, response: WebResponse) {
		
		response.appendBodyString("Hello perfect")
		response.requestCompletedCallback()
		
	}
	
}
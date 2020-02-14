//
//  Detals.swift
//  NavigationView in PageView
//
//  Created by Igor on 15.02.2020.
//  Copyright © 2020 i96.dev. All rights reserved.
//

import SwiftUI

struct Detals: View {
	private var desc: String
	
	init(_ str: String = "Hello, World!") {
		self.desc = str
	}
	
    var body: some View {
        Text(self.desc)
    }
}

struct Detals_Previews: PreviewProvider {
    static var previews: some View {
        Detals()
    }
}

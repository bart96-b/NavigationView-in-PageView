//
//  PageView.swift
//  NavigationView in PageView
//
//  Created by Igor on 15.02.2020.
//  Copyright © 2020 i96.dev. All rights reserved.
//

import SwiftUI

struct PageView<Page: View>: View {
    var viewControllers: [UIHostingController<Page>]
    @State var currentPage = 0

    init(_ views: [Page]) {
        self.viewControllers = views.map { UIHostingController(rootView: $0) }
    }

    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            PageViewController(controllers: viewControllers, currentPage: $currentPage)
			// PageControl(numberOfPages: viewControllers.count, currentPage: $currentPage)
                // .padding(.trailing)
        }
    }
}

struct PageView_Preview: PreviewProvider {
    static var previews: some View {
        PageView([
			Text("First"),
			Text("Second"),
			Text("Third")
		])
    }
}

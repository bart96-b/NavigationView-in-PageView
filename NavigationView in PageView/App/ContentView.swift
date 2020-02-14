//
//  ContentView.swift
//  NavigationView in PageView
//
//  Created by Igor on 15.02.2020.
//  Copyright © 2020 i96.dev. All rights reserved.
//

import SwiftUI

struct ContentView: View {
	var body: some View {
		BigContent()
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		PageView([
			AnyView(BigContent()),
			AnyView(LittleContent())
		])
	}
}


struct BigContent: View {
	var body: some View {
		NavigationView {
			List(0..<25, id: \.self) { index in
				NavigationLink(destination: Detals("Text \(index)")) {
					Text("Text \(index)").font(.largeTitle).padding()
				}
					
				.navigationBarTitle("Big content")
			}
		}
	}
}

struct LittleContent: View {
	var body: some View {
		NavigationView {
			List(0..<3, id: \.self) { index in
				NavigationLink(destination: Detals("Text \(index)")) {
					Text("Text \(index)").font(.largeTitle).padding()
				}
					
				.navigationBarTitle("Little content")
			}
		}
	}
}

//
//  AppDelegate.swift
//  clock
//
//  Created by 種村司 on 2019/12/25.
//  Copyright © 2019 tnmr. All rights reserved.
//

import Cocoa
import SwiftUI

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var window: NSWindow!


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Create the SwiftUI view that provides the window contents.
        let contentView = ContentView()

        // Create the window and set the content view. 
        window = NSWindow(
            contentRect: NSRect(x: 0, y: 0, width: 480, height: 300),
            styleMask: [.utilityWindow],
            backing: .buffered, defer: false)
        window.setFrameAutosaveName("Main Window")
        window.contentView = NSHostingView(rootView: contentView)
        window.makeKeyAndOrderFront(nil)
        window.backgroundColor = NSColor.clear
        window.isOpaque = false
        window.hasShadow = false
        window.isMovable = true
        window.level = NSWindow.Level(rawValue: Int(CGWindowLevelForKey(CGWindowLevelKey.screenSaverWindow)))
        window.makeKeyAndOrderFront(self)
        window.setFrameOrigin(CGPoint(x: 0, y: 0))
        window.ignoresMouseEvents = true
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}


//
//  ContentView.swift
//  clock
//
//  Created by 種村司 on 2019/12/25.
//  Copyright © 2019 tnmr. All rights reserved.
//

import SwiftUI



struct ContentView: View {
    var t: Timer.TimerPublisher {
        let t = Timer.TimerPublisher(interval: 0.1, runLoop: .main, mode: .default)
        let _ = t.connect()
        return t
    }
    @State var date = Date()
    
    func now() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEE, k:mm ss"
        return formatter.string(from: date)
    }

    var body: some View {
        Text(now())
            .frame(width: 100, height: 20, alignment: .leading)
            .foregroundColor(Color.pink)
            .onReceive(t) { date in
                self.date = date
        }
    }
}

struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


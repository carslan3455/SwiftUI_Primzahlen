//
//  ContentView.swift
//  W3T1_Uebung_Primzahlen_SwiftUI_Ca
//
//  Created by alfa on 20.11.23.
//

import SwiftUI

struct ContentView: View
{
    @State private var von = ""
    @State private var bis = ""
    @State private var zahlen: [Int] = []
    
    
    var body: some View
    {
        VStack
        {
            TextField("von", text:$von)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.numberPad)
            
            TextField("bis", text:$bis)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.numberPad)
            
            Button(action: {berechnen() },
                   label: {
                Text("berechnen")
                    .padding(7)
                    .background(Color.blue)
                    .foregroundColor(.white)
                .cornerRadius(13)})
            
            
            List(0 ..< zahlen.count, id: \.self)
            {
                zahl in Text("\(zahlen[zahl])")
                
            }
        }
        .padding()
    }

// --------------------------------------------------

    private func berechnen()
    {
        zahlen = []
        let v = Int(von)!
        let b = Int(bis)!
        
        for p in v ... b{
            if istPrimzahl(p)
            {
                zahlen.append(p)
            }
        }
    }
  // --------------------------------------------------

    private func istPrimzahl(_ p: Int) -> Bool
    {
        var istPrim: Bool = true
        
        if (p >= 2)
        {
            var anzahlTeiler: Int = 0
            
            for teiler in 1 ... p
            {
                if (p % teiler == 0)
                {
                    anzahlTeiler += 1
                }
            }
            
            if (anzahlTeiler != 2)
            {
                istPrim = false
            }
        }
        else
        {
            istPrim = false
        }
        
        return istPrim
    }
    // --------------------------------------------------


}
// --------------------------------------------------

// --------------------------------------------------
 /*
  struct ContentView_Previews: PreviewProvider
    {
        static var previews: some View
        {
            ContentView()
        }
    }

*/

#Preview {
    ContentView()
}


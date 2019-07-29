//
//  ContentView.swift
//  Ratings & Reviews
//
//  Created by Frank Bara on 7/27/19.
//  Copyright © 2019 BaraLabs. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
    
        HStack(alignment: .top) {
            NumberRatingView()
            .padding(.trailing)
            
            StarView()
            .padding(.trailing)
            
            VStack {
                RatingLineView()
                    .padding(.bottom, 4)
                RatingLineView()
                    .padding(.bottom, 4)
                RatingLineView()
                    .padding(.bottom, 4)
                RatingLineView()
                    .padding(.bottom, 4)
                RatingLineView()
                    .padding(.bottom, 4)
            }
                .padding(.top, 6)
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

// TODO: Make a new .swift file!
struct NumberRatingView: View {
    var body: some View {
        VStack {
            Text("4.8")
                .font(Font.system(size: 72))
                .fontWeight(.heavy)
                
                Text("out of 5")
                    .font(.title)
                    .fontWeight(.heavy)
            }
        }
    }
    
// TODO: Make a new .swift file!
    struct StarView: View {
        var body: some View {
            VStack(alignment: .trailing) {
                Text("⭐️⭐️⭐️⭐️⭐️")
                Text("⭐️⭐️⭐️⭐️")
                Text("⭐️⭐️⭐️")
                Text("⭐️⭐️")
                Text("⭐️")
            }
        }
    }

// TODO: Make a new .swift file!
    struct BottomLineView: View {
        var body: some View {
            Path { path in
                path.move(to: CGPoint(x: 0, y: 0))
                path.addRect(CGRect(x: 0, y: 0, width: 136, height: 10))
            }
            .fill(Color.secondary)
            .cornerRadius(12)
    }
}

// TODO: Make a new .swift file!
    struct RatingLineView: View {
        var rating = [8, 12, 27, 42, 72, 87, 112, 120, 133]
        
        var body: some View {
            ZStack {
                BottomLineView()
                
                Path { path in
                    path.move(to: CGPoint(x: 0, y: 0))
                    path.addRect(CGRect(x: 0, y: 0, width: rating.randomElement()!, height: 10))
                }
                    .cornerRadius(12)
                    .frame(width: 136.0)
            }
            .frame(height: 10.0)
    }
}



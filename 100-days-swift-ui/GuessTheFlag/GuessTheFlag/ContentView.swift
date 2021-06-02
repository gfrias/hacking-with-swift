//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Guillermo Frias on 30/05/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
    
    @State private var correctAnswer = Int.random(in:0...2)
    
    @State private var showingScore = false
    @State private var scoreTitle = ""
    
    @State private var score = 0
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            VStack(spacing: 30) {
                VStack {
                    Text("Tap the flag of")
                        .foregroundColor(.white)
                    
                    Text(countries[correctAnswer]).foregroundColor(.white)
                        .font(.largeTitle)
                        .fontWeight(.black)
                    
                    Text("Score: \(score)")
                        .foregroundColor(.white)
                }
                Spacer()
                VStack(spacing:20){
                    ForEach(0 ..< 3) { number in
                        Button(action: {
                            self.flagTapped(number)
                        }) {
                            FlagImage(country: self.countries[number])
                        }
                    }
                }
                Spacer()
            }
        }.alert(isPresented: $showingScore) {
            Alert(title: Text(scoreTitle), message: Text("Your score is \(score)"), dismissButton: .default(Text("Continue")) {
                self.askQuestion()
            })
        }
        
    }
    
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
            score += 1
        } else {
            scoreTitle = "Wrong, that is the flag of \(countries[number])"
        }
        showingScore = true
    }
    
    func askQuestion() {
        countries = countries.shuffled()
        correctAnswer = Int.random(in: 0...2)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct FlagImage: View {
    var country: String
    
    var body: some View {
        Image(self.country).renderingMode(.original).clipShape(Capsule())
            .overlay(Capsule().stroke(Color.black, lineWidth: 1)).shadow(color:. black, radius: 2)
    }
}

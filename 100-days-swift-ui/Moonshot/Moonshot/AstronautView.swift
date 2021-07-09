//
//  AstronautView.swift
//  Moonshot
//
//  Created by Guillermo Frias on 25/06/2021.
//

import SwiftUI

struct AstronautView: View {
    let astronaut: Astronaut
    let missions: [Mission]
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView(.vertical) {
                VStack {
                    Image(self.astronaut.id)
                        .resizable()
                        .scaledToFit()
                        .frame(width: geometry.size.width)
                    
                    Text(self.astronaut.description).padding().layoutPriority(1)
                    
                    HStack {
                        Text("Missions").font(.headline)
                        Spacer()
                    }.padding(.horizontal)
                    
                    ForEach(missions) { mission in
                        NavigationLink(destination: MissionView(mission: mission)) {
                            HStack {
                                Image(mission.image)
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                        .overlay(Circle()
                                                    .stroke(Color.primary, lineWidth: 1))
                                VStack(alignment: .leading) {
                                    Text(mission.displayName).font(.headline)
                                    Text(mission.formattedLaunchDate).foregroundColor(.secondary)
                                }
                                Spacer()
                            }.padding(.horizontal)
                        }.buttonStyle(PlainButtonStyle())
                    }
                }
            }
        }.navigationBarTitle(Text(astronaut.name), displayMode: .inline)
    }
    
    init(astronaut: Astronaut) {
        let allMissions:[Mission] = Bundle.main.decode("missions.json")
        
        self.astronaut = astronaut
        self.missions = allMissions.filter({
                                            $0.crew.first(where: {$0.name == astronaut.id}) != nil
        })
    }
}

struct AstronautView_Previews: PreviewProvider {
    static let astronauts: [Astronaut] = Bundle.main.decode("astronauts.json")
    
    static var previews: some View {
        AstronautView(astronaut: astronauts[0])
    }
}

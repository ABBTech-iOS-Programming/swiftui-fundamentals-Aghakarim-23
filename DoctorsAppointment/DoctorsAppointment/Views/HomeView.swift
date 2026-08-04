//
//  HomeView.swift
//  DoctorsAppointment
//
//  Created by Agakerim Hemidzade on 05.08.26.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Text("Upcoming Appointments")
            HStack {
                VStack {
                    Text("Box 1")

                }
                VStack {
                    Text("Box 2")

                }
            }
            VStack {
                Text("Box 3")
            }
          
        }
    }
}

#Preview {
    HomeView()
}


//
//  HomeView.swift
//  DoctorsAppointment
//
//  Created by Agakerim Hemidzade on 05.08.26.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color(uiColor: .systemGray6)
                .ignoresSafeArea()

            ScrollView {
                VStack {
                    UpcomingAppointmentsView()
                    AppointmentCard()
                    DoctorAppointmentCard()
                }
            }
        }
    }
}

#Preview {
    HomeView()
}

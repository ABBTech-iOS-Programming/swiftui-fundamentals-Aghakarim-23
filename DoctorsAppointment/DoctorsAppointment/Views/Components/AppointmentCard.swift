//
//  AppointmentCard.swift
//  DoctorsAppointment
//
//  Created by Agakerim Hemidzade on 05.08.26.
//

import SwiftUI

struct AppointmentCard: View {
    // Title
    var titleView: some View {
        Text("Appointment Card")

    }

    // imageSection
    var imageSection: some View {
        ZStack(alignment: .topLeading) {

            Image(.doctorWoman)
                .resizable()
                .scaledToFit()
                .frame(width: 280, height: 180)

            HStack {
                Circle()
                    .fill(.green)
                    .frame(width: 10, height: 10)

                Text("Available")
                    .font(.system(size: 12, weight: .semibold))
                    .foregroundStyle(.green)

            }
            .padding(.horizontal, 8)
            .padding(.vertical, 3)
            .background(Color.green.opacity(0.15))
            .clipShape(Capsule())
            .padding(.top, 16)
            .padding(.leading, 16)

        }

        .background(.womanBackground)
        .padding(.top, 16)

    }

    var hospitalSection: some View {
        HStack {
            Text("Madelyn Hospital")
            Spacer()
            Image(systemName: "cross.case")

        }
        .padding(.vertical, 12)
        .padding(.horizontal, 20)
        .background(Color(uiColor: .hospitalSectionBackground))
        .foregroundStyle(.white)

    }

    // infosection

    var infoSection: some View {
        VStack (alignment: .leading, spacing: 0){
            
            HStack {
                VStack (alignment: .leading){
                    Text("Dr. Marci Maiden")
                    Text("Internist Specialist ")
                }
                Spacer()
                HStack {
                    Image(systemName: "star.fill")
                    Text("4.5")
                }
                .foregroundStyle(.orange)
            }
            .padding(20)
        
            HStack  {
                Text("Rp 240.000")
                    .foregroundStyle(.red)
                Text("/hours")
            }
            .padding(.bottom, 16)
            .padding(.horizontal, 20)
            
        }
        .background(.white)

    }

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            titleView
            imageSection
            hospitalSection
            infoSection
        }

        .padding(.top, 16)

        .frame(width: 280)

        .clipShape(RoundedRectangle(cornerRadius: 24))

    }
}

#Preview {
    AppointmentCard()
}

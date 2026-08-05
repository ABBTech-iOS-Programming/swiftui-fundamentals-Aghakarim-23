//
//  DoctorAppointmentCard.swift
//  DoctorsAppointment
//
//  Created by Agakerim Hemidzade on 05.08.26.
//

import SwiftUI

struct DoctorAppointmentCard: View {
    var body: some View {
        VStack {
            HStack {
                Image(.doctorMan)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 120)
                    .background(
                        .womanBackground
                    )
                    .clipShape(
                        .rect(
                            topLeadingRadius: 0,
                            bottomLeadingRadius: 24,
                            bottomTrailingRadius: 0,
                            topTrailingRadius: 24
                        )
                    )
                VStack(alignment: .leading) {
                    Text("Radiant Hospital")
                        .foregroundStyle(.hospitalSectionBackground)
                        .bold()
                    Text("Dr. Raze Invoker")
                        .bold()
                    Text("Internist Specialist ")
                }
            }
            .padding(.top, 20)

            HStack(spacing: 12) {
                VStack {
                    HStack(spacing: 2) {
                        Image(.verified)
                        Text("Verify")
                            .bold()
                    }
                    Text("Certified")
                }

                Image(.line)

                VStack {
                    HStack(spacing: 2) {
                        Image(.verified)
                        Text("5 years")
                            .bold()
                    }
                    Text("Experience")
                }

                Image(.line)

                VStack {
                    HStack(spacing: 2) {
                        Image(.verified)
                        Text("4.5")
                            .bold()
                    }
                    Text("Rating")
                }
            }
            .padding(16)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 20))

            HStack {
                VStack {
                    Text("Rp 240.000")
                        .foregroundStyle(.red)
                    Text("/hour")
                }
                Spacer()
                Button {
                    print("Button tapped")
                } label: {
                    Text("Book Now")
                        .bold()
                        .foregroundStyle(.hospitalSectionBackground)
                        .frame(width: 180, height: 52)
                        .background(.hospitalSectionBackground.opacity(0.2))
                        .clipShape(RoundedRectangle(cornerRadius: 26))
                        .overlay {
                            RoundedRectangle(cornerRadius: 26)
                                .stroke(.hospitalSectionBackground, lineWidth: 1)
                        }

                }
            }
            .padding(.horizontal, 16)
            .padding(.top, 20)
            .padding(.bottom, 16)

        }
        .frame(maxWidth: .infinity)
        .clipShape(RoundedRectangle(cornerRadius: 24))
        .padding(.top, 84)
        .padding(.horizontal, 46)
    }
    
}

#Preview {
    DoctorAppointmentCard()
}

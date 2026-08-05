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
                    .background(.womanBackground
                    )
                    .clipShape(
                        .rect(
                            topLeadingRadius: 0,
                            bottomLeadingRadius: 24,
                            bottomTrailingRadius: 0,
                            topTrailingRadius: 24
                        )
                    )
                VStack (alignment: .leading) {
                    Text("Radiant Hospital")
                        .foregroundStyle(.hospitalSectionBackground)
                        .bold()
                    Text("Dr. Raze Invoker")
                        .bold()
                    Text("Internist Specialist ")
                }
            }
            .padding(.top, 20)

        }
        .frame(maxWidth: .infinity)
        .background(.gray)
        .padding(.horizontal, 46)
        .clipShape(RoundedRectangle(cornerRadius: 24))
    }
}

#Preview {
    DoctorAppointmentCard()
}

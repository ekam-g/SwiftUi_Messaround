//
//  CRAAPTEST.swift
//  MessAround
//
//  Created by Ekam Ghai
//

import SwiftUI

struct CRAAPTEST: View {
    //All Vars
    @State var isChecked1: Bool = false
    @State var isChecked2: Bool = false
    @State var isChecked3: Bool = false
    @State var isChecked4: Bool = false
    @State var isChecked5: Bool = false
    @State var isChecked6: Bool = false
    @State var isChecked7: Bool = false
    @State var isChecked8: Bool = false
    @State var isChecked9: Bool = false
    @State var isChecked10: Bool = false
    @State var isChecked11: Bool = false
    @State var isChecked12: Bool = false
    @State var isChecked13: Bool = false
    @State var isChecked14: Bool = false
    @State var isChecked15: Bool = false
    @State var isChecked16: Bool = false
    @State var isChecked17: Bool = false
    @State var isChecked18: Bool = false
    @State var isChecked19: Bool = false
    @State var isChecked20: Bool = false
    @State var Score: Int = 0
    @State var Currency: Int = 0
    @State var Relevance: Int = 0
    @State var Authority: Int = 0
    @State var Accuracy: Int = 0
    @State var Purpose: Int = 0

    //Backend Code

    func toggle1() {
        isChecked1 = !isChecked1
        Calculate()
    }

    func toggle2() {
        isChecked2 = !isChecked2
        Calculate()

    }

    func toggle3() {
        isChecked3 = !isChecked3
        Calculate()

    }

    func toggle4() {
        isChecked4 = !isChecked4
        Calculate()

    }

    func toggle5() {
        isChecked5 = !isChecked5
        Calculate()

    }

    func toggle6() {
        isChecked6 = !isChecked6
        Calculate()

    }

    func toggle7() {
        isChecked7 = !isChecked7
        Calculate()

    }

    func toggle8() {
        isChecked8 = !isChecked8
        Calculate()

    }

    func toggle9() {
        isChecked9 = !isChecked9
        Calculate()

    }

    func toggle10() {
        isChecked10 = !isChecked10
        Calculate()

    }

    func toggle11() {
        isChecked11 = !isChecked11
        Calculate()

    }

    func toggle12() {
        isChecked12 = !isChecked12
        Calculate()

    }

    func toggle13() {
        isChecked13 = !isChecked13
        Calculate()

    }

    func toggle14() {
        isChecked14 = !isChecked14
        Calculate()

    }

    func toggle15() {
        isChecked15 = !isChecked15
        Calculate()

    }

    func toggle16() {
        isChecked16 = !isChecked16
        Calculate()

    }

    func toggle17() {
        isChecked17 = !isChecked17
        Calculate()

    }

    func toggle18() {
        isChecked18 = !isChecked18
        Calculate()

    }

    func toggle19() {
        isChecked19 = !isChecked19
        Calculate()

    }

    func toggle20() {
        isChecked20 = !isChecked20
        Calculate()

    }

    func Calculate() {
        Score = 0
        Currency = 0
        Relevance = 0
        Authority = 0
        Accuracy = 0
        Purpose = 0

        if (isChecked1) == true {
            Score += 1
            Currency += 1
        }
        if (isChecked2) == true {
            Score += 1
            Currency += 1

        }
        if (isChecked3) == true {
            Score += 1
            Currency += 1

        }
        if (isChecked4) == true {
            Score += 1
            Relevance += 1
        }
        if (isChecked5) == true {
            Score += 1
            Relevance += 1

        }
        if (isChecked6) == true {
            Score += 1
            Relevance += 1

        }
        if (isChecked7) == true {
            Score += 1
            Authority += 1
        }
        if (isChecked8) == true {
            Score += 1
            Authority += 1

        }
        if (isChecked9) == true {
            Score += 1
            Authority += 1

        }
        if (isChecked10) == true {
            Score += 1
            Authority += 1

        }
        if (isChecked11) == true {
            Score += 1
            Authority += 1

        }
        if (isChecked12) == true {
            Score += 1
            Accuracy += 1
        }
        if (isChecked13) == true {
            Score += 1
            Accuracy += 1

        }
        if (isChecked14) == true {
            Score += 1
            Accuracy += 1

        }
        if (isChecked15) == true {
            Score += 1
            Accuracy += 1

        }
        if (isChecked16) == true {
            Score += 1
            Accuracy += 1

        }
        if (isChecked17) == true {
            Score += 1
            Accuracy += 1
        }
        if (isChecked18) == true {
            Score += 1
            Purpose += 1

        }
        if (isChecked19) == true {
            Score += 1
            Purpose += 1

        }
        if (isChecked20) == true {
            Score += 1
            Purpose += 1

        }
    }

//UI Code Starts here

    var body: some View {
        VStack {
            VStack {
                HStack {
                    Text("Currency:")
                    if Currency == 0 {
                        Text("Score  \(Currency)/3").foregroundColor(Color.red)
                    }
                    if Currency == 1 {
                        Text("Score  \(Currency)/3").foregroundColor(Color.orange)
                    }
                    if Currency == 2 {
                        Text("Score  \(Currency)/3").foregroundColor(Color.yellow)
                    }
                    if Currency == 3 {
                        Text("Score  \(Currency)/3").foregroundColor(Color.green)
                    }

                }

            }
            Button(action: toggle1) {
                HStack {
                    Image(systemName: isChecked1 ? "checkmark.square" : "square")
                    Text("Information has been published/posted recently?")
                            .font(.system(size: 12))
                }

            }
            Button(action: toggle2) {
                HStack {
                    Image(systemName: isChecked2 ? "checkmark.square" : "square")
                    Text("Information has been updated within the last year?")
                            .font(.system(size: 12))

                }

            }
            Button(action: toggle3) {
                HStack {
                    Image(systemName: isChecked3 ? "checkmark.square" : "square")
                    Text("Links work when clicked?")
                            .font(.system(size: 12))

                }

            }
        }
        VStack {
            HStack {
                Text("Relevance")
                if Relevance == 0 {
                    Text("Score  \(Relevance)/3").foregroundColor(Color.red)
                }
                if Relevance == 1 {
                    Text("Score  \(Relevance)/3").foregroundColor(Color.orange)
                }
                if Relevance == 2 {
                    Text("Score  \(Relevance)/3").foregroundColor(Color.yellow)
                }
                if Relevance == 3 {
                    Text("Score  \(Relevance)/3").foregroundColor(Color.green)
                }
            }

            Button(action: toggle4) {
                HStack {
                    Image(systemName: isChecked4 ? "checkmark.square" : "square")
                    Text("Information relates to your topic or answers your  question?")
                            .font(.system(size: 12))


                }

            }
            Button(action: toggle5) {
                HStack {
                    Image(systemName: isChecked5 ? "checkmark.square" : "square")
                    Text("Information is at an appropriate level?")
                            .font(.system(size: 12))

                }

            }
            Button(action: toggle6) {
                HStack {
                    Image(systemName: isChecked6 ? "checkmark.square" : "square")
                    Text("Information is worthy of citation for your research?")
                            .font(.system(size: 12))

                }

            }
        }
        VStack {
            HStack {
                Text("Authority:")
                if Authority == 0 {
                    Text("Score  \(Authority)/5").foregroundColor(Color.red)
                }
                if Authority >= 1 && Authority < 3 {
                    Text("Score  \(Authority)/5").foregroundColor(Color.orange)
                }
                if Authority >= 3 && Authority < 5 {
                    Text("Score  \(Authority)/5").foregroundColor(Color.yellow)
                }
                if Authority == 5 {
                    Text("Score  \(Authority)/5").foregroundColor(Color.green)
                }
            }

            Button(action: toggle7) {
                HStack {
                    Image(systemName: isChecked7 ? "checkmark.square" : "square")
                    Text("An author/publisher/source/sponsor can be found on the  site?")
                            .font(.system(size: 12))


                }

            }
            Button(action: toggle8) {
                HStack {
                    Image(systemName: isChecked8 ? "checkmark.square" : "square")
                    Text("Author’s credentials or organizational connections are visible?")
                            .font(.system(size: 12))

                }

            }
            Button(action: toggle9) {
                HStack {
                    Image(systemName: isChecked9 ? "checkmark.square" : "square")
                    Text("The author is an expert and qualified to write about the  subject?")
                            .font(.system(size: 12))

                }

            }
            Button(action: toggle10) {
                HStack {
                    Image(systemName: isChecked10 ? "checkmark.square" : "square")
                    Text("Contact information is available?")
                            .font(.system(size: 12))

                }

            }
            Button(action: toggle11) {
                HStack {
                    Image(systemName: isChecked11 ? "checkmark.square" : "square")
                    Text("The URL ends in a .gov or .edu?")
                            .font(.system(size: 12))

                }

            }

        }
        VStack {
            HStack {
                Text("Accuracy:")
                if Accuracy == 0 {
                    Text("Score  \(Accuracy)/6").foregroundColor(Color.red)
                }
                if Accuracy >= 1 && Accuracy < 4 {
                    Text("Score  \(Accuracy)/6").foregroundColor(Color.orange)
                }
                if Accuracy >= 4 && Accuracy < 6 {
                    Text("Score  \(Accuracy)/6").foregroundColor(Color.yellow)
                }
                if Accuracy == 6 {
                    Text("Score  \(Accuracy)/6").foregroundColor(Color.green)
                }
            }

            Button(action: toggle12) {
                HStack {
                    Image(systemName: isChecked12 ? "checkmark.square" : "square")
                    Text("Information comes from a reliable source?")
                            .font(.system(size: 12))

                }

            }
            Button(action: toggle13) {
                HStack {
                    Image(systemName: isChecked13 ? "checkmark.square" : "square")
                    Text("Information is supported by other evidence?")
                            .font(.system(size: 12))

                }

            }
            Button(action: toggle14) {
                HStack {
                    Image(systemName: isChecked14 ? "checkmark.square" : "square")
                    Text("Information has been reviewed by other experts in the  field?")
                            .font(.system(size: 12))


                }

            }
            Button(action: toggle15) {
                HStack {
                    Image(systemName: isChecked15 ? "checkmark.square" : "square")
                    Text("Information can be verified by another source or by  personal knowledge?")
                            .font(.system(size: 12))

                }

            }
            Button(action: toggle16) {
                HStack {
                    Image(systemName: isChecked16 ? "checkmark.square" : "square")
                    Text("Information doesn’t show bias towards a specific opinion  or point of view?")
                            .font(.system(size: 12))

                }

            }
            Button(action: toggle17) {
                HStack {
                    Image(systemName: isChecked17 ? "checkmark.square" : "square")
                    Text("Information doesn’t contain spelling, grammar, or  typographical errors?")
                            .font(.system(size: 12))

                }

            }

        }
        VStack {
            HStack {
                Text("Purpose")
                if Purpose == 0 {
                    Text("Score  \(Purpose)/3").foregroundColor(Color.red)
                }
                if Purpose == 1 {
                    Text("Score  \(Purpose)/3").foregroundColor(Color.orange)
                }
                if Purpose == 2 {
                    Text("Score  \(Purpose)/3").foregroundColor(Color.yellow)
                }
                if Purpose == 3 {
                    Text("Score  \(Purpose)/3").foregroundColor(Color.green)
                }
            }


            Button(action: toggle18) {
                HStack {
                    Image(systemName: isChecked18 ? "checkmark.square" : "square")
                    Text("Information is meant to inform or teach?")
                            .font(.system(size: 12))

                }

            }
            Button(action: toggle19) {
                HStack {
                    Image(systemName: isChecked19 ? "checkmark.square" : "square")
                    Text("Information is fact, not opinion or propaganda?")
                            .font(.system(size: 12))

                }

            }
            Button(action: toggle20) {
                HStack {
                    Image(systemName: isChecked20 ? "checkmark.square" : "square")
                    Text("Information is free from political, ideological, cultural,  religious, institutional or personal bias?")
                            .font(.system(size: 12))

                }

            }
        }
        HStack {
            if Score < 10 {
                Text("Total Score  \(Score)/20").foregroundColor(Color.red)
            }
            if Score < 15 && Score >= 10 {
                Text("Total Score  \(Score)/20").foregroundColor(Color.orange)
            }
            if Score < 18 && Score >= 15 {
                Text("Total Score  \(Score)/20").foregroundColor(Color.yellow)
            }
            if Score >= 18 {
                Text("Total Score  \(Score)/20").foregroundColor(Color.green)
            }


            if Score < 10 {
                Text("  Bad Source")
                        .foregroundColor(Color.red)
            }
            if Score < 15 && Score >= 10 {
                Text("  Decent Source")
                        .foregroundColor(Color.orange)
            }
            if Score < 18 && Score >= 15 {
                Text("  Good Source")
                        .foregroundColor(Color.yellow)
            }
            if Score >= 18 {
                Text("  Great Source")
                        .foregroundColor(Color.green)
            }

        }

    }
}


struct CRAAPTEST_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CRAAPTEST()
        }
    }
}

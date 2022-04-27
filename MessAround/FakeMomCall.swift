//
//  FakeMomCall.swift
//  MessAround
//
//  Created by Ekam Ghai on 4/22/22.
//

import SwiftUI
import AVFoundation


struct FakeMomCall: View {
    @State var Accept: Int = 0

    @State var player: AVAudioPlayer?

    func playSoundRing() {
        guard let url = Bundle.main.url(forResource: "Apple_iphone_6_Original_Ringtone_S_(getmp3.pro)", withExtension: "mp3") else {
            return
        }

        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)

            /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)

            /* iOS 10 and earlier require the following line:
        player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */

            guard let player = player else {
                return
            }

            player.play()

        } catch let error {
            print(error.localizedDescription)
        }
    }

    func accept() {
        Accept = 1
        player?.stop()
    }

    func decline() {
        Accept = 0
    }

    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
                .blur(radius: 20)
                        
            VStack {
                Text("Mom")
                        .font(.title)
                        .foregroundColor(Color.white)
                Text("iPhone")
                        .foregroundColor(Color.white)
                        .font(.subheadline)

                //intial code
                if Accept == 0 {

                    Text("")
                            .padding(.all, 140)
                    HStack {
                        VStack {
                            Button {
                                print("ues")
                            } label: {
                                Image(systemName: "deskclock.fill")
                                        .foregroundColor(Color.white)
                            }
                            Text("Remind Me")
                                    .foregroundColor(Color.white)
                        }
                        Text("")
                                .padding(.horizontal, 45)
                        VStack {
                            Button {
                                print("YOU FUCKING SHIT HOLE")
                            } label: {
                                Image(systemName: "message.fill")
                                        .foregroundColor(Color.white)
                            }
                            Text("Message")
                                    .foregroundColor(Color.white)
                        }
                    }
                    HStack {
                        VStack {
                            Button {
                                playSoundRing()
                            } label: {
                                Image(systemName: "phone.down.fill")
                                        .frame(width: 75, height: 75)
                                        .foregroundColor(Color.white)
                                        .background(Color.red)
                                        .cornerRadius(40)


                            }
                            Text("Decline")
                                    .foregroundColor(Color.white)
                        }
                        Text("")
                                .padding(.horizontal, 45)
                        VStack {
                            Button() {
                                accept()
                            } label: {
                                Image(systemName: "phone.fill")
                                        .frame(width: 75, height: 75)
                                        .foregroundColor(Color.white)
                                        .background(Color.green)
                                        .cornerRadius(40)


                            }
                            Text("Accept")
                                    .foregroundColor(Color.white)
                        }
                    }
                }
                ///when accepted code
                if Accept == 1 {
                    VStack {
                        Text("")
                                .padding(.vertical, 20)
                        HStack {
                            VStack {
                                Button {
                                    print("YOU FUCKING SHIT HOLE")
                                } label: {
                                    Image(systemName: "mic.slash.fill")
                                            .frame(width: 75, height: 75)
                                            .foregroundColor(Color.white)
                                            .background(Circle().fill(Color.gray).blur(radius: 30)).cornerRadius(40)
                                            .padding(.horizontal, 5)


                                }
                                Text("mute")
                                        .foregroundColor(Color.white)
                                        .padding(.bottom, 20)
                            }
                            VStack {
                                Button {
                                    print("YOU FUCKING SHIT HOLE")
                                } label: {
                                    Image(systemName: "keyboard.onehanded.left")
                                            .frame(width: 75, height: 75)
                                            .foregroundColor(Color.white)
                                            .background(Circle().fill(Color.gray).blur(radius: 30)).cornerRadius(40)
                                            .cornerRadius(40)
                                            .padding(.horizontal, 5)


                                }
                                Text("keyboard")
                                        .foregroundColor(Color.white)
                                        .padding(.bottom, 20)

                            }
                            VStack {
                                Button {
                                    print("YOU FUCKING SHIT HOLE")
                                } label: {
                                    Image(systemName: "speaker.wave.3.fill")
                                            .frame(width: 75, height: 75)
                                            .foregroundColor(Color.white)
                                            .background(Circle().fill(Color.gray).blur(radius: 30)).cornerRadius(40)
                                            .cornerRadius(40)
                                            .padding(.horizontal, 5)


                                }
                                Text("Speaker")
                                        .foregroundColor(Color.white)
                                        .padding(.bottom, 20)

                            }
                        }
                        HStack {
                            VStack {
                                Button {
                                    print("plus.circle.fill")
                                } label: {
                                    Image(systemName: "plus.circle.fill")
                                            .frame(width: 75, height: 75)
                                            .foregroundColor(Color.white)
                                            .background(Circle().fill(Color.gray).blur(radius: 30)).cornerRadius(40)
                                            .cornerRadius(40)
                                            .padding(.horizontal, 5)


                                }
                                Text("Add Call")
                                        .foregroundColor(Color.white)
                            }
                            VStack {
                                Button {
                                    print("YOU FUCKING SHIT HOLE")
                                } label: {
                                    Image(systemName: "camera.fill")
                                            .frame(width: 75, height: 75)
                                            .foregroundColor(Color.white)
                                            .background(Circle().fill(Color.gray).blur(radius: 30)).cornerRadius(40)
                                            .cornerRadius(40)
                                            .padding(.horizontal, 5)


                                }
                                Text("facetime")
                                        .foregroundColor(Color.white)
                            }
                            VStack {
                                Button {
                                    print("YOU FUCKING SHIT HOLE")
                                } label: {
                                    Image(systemName: "person.fill")
                                            .frame(width: 75, height: 75)
                                            .foregroundColor(Color.white)
                                            .background(Circle().fill(Color.gray).blur(radius: 30)).cornerRadius(40)
                                            .cornerRadius(40)
                                            .padding(.horizontal, 5)


                                }
                                Text("contacts")
                                        .foregroundColor(Color.white)
                            }
                        }
                        Text("")
                                .padding(.all, 20)

                        Button {
                            decline()
                        } label: {
                            Image(systemName: "phone.down.fill")
                                    .frame(width: 75, height: 75)
                                    .foregroundColor(Color.white)
                                    .background(Color.red)
                                    .cornerRadius(40)


                        }

                    }

                }
            }
        }
    }
}

struct FakeMomCall_Previews: PreviewProvider {
    static var previews: some View {
        FakeMomCall()
    }
}

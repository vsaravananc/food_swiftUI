//
//  SearchRecentRestaruntView.swift
//  foodelivery
//
//  Created by Saravanan V on 09/06/26.
//

import SwiftUI


struct SearchRecentRestaruntView: View {
    var body: some View {
        VStack(alignment:.leading,spacing: 15){
            Text("Recent Restarunt")
                .font(.title2)
                .fontWeight(.medium)
            
            VStack(alignment:.leading){
                
                HStack{
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.gray.opacity(0.3))
                        .frame(width: 95, height: 80)
                    
                    VStack(alignment:.leading,spacing: 5){
                        Text("Cafe Coffee Day")
                            .font(.title3)
                        
                        Spacer()
                        
                        HStack(spacing: 8){
                            Image(systemName: "star")
                                .foregroundStyle(.orange)
                                .fontWeight(.medium)
                            Text("4.7")
                            
                        }
                        
                        
                    }
                    .padding(.vertical,8)
                    .frame(maxHeight:80)
                        
                }
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color.gray.opacity(0.5))
                    .frame(width: .infinity, height: 1)
                    .padding(.top,5)
                    .padding(.bottom,10)
                
                HStack{
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.gray.opacity(0.3))
                        .frame(width: 95, height: 80)
                    
                    VStack(alignment:.leading,spacing: 5){
                        Text("Cafe Coffee Day")
                            .font(.title3)
                        
                        Spacer()
                        
                        HStack(spacing: 8){
                            Image(systemName: "star")
                                .foregroundStyle(.orange)
                                .fontWeight(.medium)
                            Text("4.7")
                            
                        }
                        
                        
                    }
                    .padding(.vertical,8)
                    .frame(maxHeight:80)
                        
                }
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color.gray.opacity(0.5))
                    .frame(width: .infinity, height: 1)
                    .padding(.top,5)
                    .padding(.bottom,10)
                
                HStack{
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.gray.opacity(0.3))
                        .frame(width: 95, height: 80)
                    
                    VStack(alignment:.leading,spacing: 5){
                        Text("Cafe Coffee Day")
                            .font(.title3)
                        
                        Spacer()
                        
                        HStack(spacing: 8){
                            Image(systemName: "star")
                                .foregroundStyle(.orange)
                                .fontWeight(.medium)
                            Text("4.7")
                            
                        }
                        
                        
                    }
                    .padding(.vertical,8)
                    .frame(maxHeight:80)
                        
                }
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color.gray.opacity(0.5))
                    .frame(width: .infinity, height: 1)
                    .padding(.top,5)
                    .padding(.bottom,10)
            }
        }.padding(.horizontal,20)
    }
}


#Preview {
    SearchRecentRestaruntView()
}

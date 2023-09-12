//
//  PokeListViewCellView.swift
//  Pokedex
//
//  Created by Carson Gross on 9/10/23.
//

import SwiftUI
import Kingfisher

struct PokeListViewCellView: View {
    @ObservedObject var viewModel: PokeListViewCellViewViewModel
    
    var body: some View {
        HStack {
            KFAnimatedImage(viewModel.pokemonAnimatedSpriteURL != nil ?
                            viewModel.pokemonAnimatedSpriteURL :
                                viewModel.pokemonSpriteURL
            )
            .scaledToFit()
            .frame(width: 50)
            .shadow(color: .secondary, radius: 2, x: 1, y: -1)
            
            Text("\(viewModel.id)")
            
            Text(viewModel.pokemonName)
            
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(.thinMaterial)
        .cornerRadius(10)
    }
}

struct PokeListViewCellView_Previews: PreviewProvider {
    static var previews: some View {
        PokeListViewCellView(
            viewModel:
                    .init(
                        id: 502,
                        pokemonName: "Dewott",
                        pokemonSpriteURL: URL(string: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/502.png"),
                        pokemonAnimatedSpriteURL: URL(string: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/502.gif"),
                        types: [
                            PokemonResponseType(
                                slot: 0,
                                type: Species(
                                    name: "water",
                                    url: ""
                                )
                            )
                        ]
                    )
        )
    }
}

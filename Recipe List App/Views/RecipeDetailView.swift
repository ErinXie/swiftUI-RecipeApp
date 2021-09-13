//
//  RecipeDetailView.swift
//  Recipe List App
//
//  Created by 谢雨晨 on 9/11/21.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe: Recipe
    var body: some View {
        ScrollView{
            VStack(alignment:.leading){
                Image(recipe.image)
                    .resizable()
                    .scaledToFit()
                //MARK:Ingredients
                VStack(alignment:.leading){
                    Text("ingredients")
                        .font(.headline)
                        .padding([.bottom,.top],5)
                    
                    ForEach(recipe.ingredients,id:\.self)
                    {item in Text("-" + item)
                        .padding(.bottom,1)
                        
                    }
                }
                //MARK: Directions
                VStack(alignment:.leading){
                    Text("Directions")
                        .font(.headline)
                        .padding([.bottom,.top],5)
                    ForEach(recipe.directions,id:\.self)
                    {item in Text(item)}
                        .padding(.bottom,5)
                }
                }
            .navigationBarTitle(recipe.name)
            }
            //MARK:recipe image
            
        }
    }


struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        //Create a dummy recipe and pass it into the detail view so that we can see a preview
        let model = RecipeModel()
        RecipeDetailView(recipe:model.recipes[0])
    }
}

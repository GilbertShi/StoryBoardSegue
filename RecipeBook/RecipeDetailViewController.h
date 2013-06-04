//
//  RecipeDetailViewController.h
//  RecipeBook
//
//  Created by Gilbert on 6/4/13.
//  Copyright (c) 2013 Gilbert. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RecipeDetailViewController : UIViewController

@property (nonatomic , strong) IBOutlet UILabel *recipeLabel;
@property (nonatomic , strong) NSString *recipeName;

@end

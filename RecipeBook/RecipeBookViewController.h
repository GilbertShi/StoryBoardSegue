//
//  RecipeBookViewController.h
//  RecipeBook
//
//  Created by Gilbert on 6/4/13.
//  Copyright (c) 2013 Gilbert. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RecipeBookViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) IBOutlet UITableView *tableView;
@end

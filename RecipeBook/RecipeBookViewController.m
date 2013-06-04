//
//  RecipeBookViewController.m
//  RecipeBook
//
//  Created by Gilbert on 6/4/13.
//  Copyright (c) 2013 Gilbert. All rights reserved.
//

#import "RecipeBookViewController.h"
#import "RecipeDetailViewController.h"

@interface RecipeBookViewController ()

@end

@implementation RecipeBookViewController {
    NSArray *recipes;
}
@synthesize tableView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    recipes = [NSArray arrayWithObjects:@"Egg Benedict", @"Mushroom Risotto",nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// implement 2 methods to populate the table data:
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return  [recipes count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString  *simpleTableIdentifier = @"RecipeCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    cell.textLabel.text = [recipes objectAtIndex:indexPath.row];
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showRecipeDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        RecipeDetailViewController *destViewController = segue.destinationViewController;
        destViewController.recipeName = [recipes objectAtIndex:indexPath.row];
    }
}
@end

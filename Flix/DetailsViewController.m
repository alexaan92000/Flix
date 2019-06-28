//
//  DetailsViewController.m
//  Flix
//
//  Created by alexamorales on 6/27/19.
//  Copyright © 2019 alexamorales. All rights reserved.
//

#import "DetailsViewController.h"
#import "UIImageView+AFNetworking.h"

@interface DetailsViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *backDropView;
@property (weak, nonatomic) IBOutlet UIImageView *posterImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *synopsisLabel;

@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSString *baseURLString= @"https://image.tmdb.org/t/p/w500";
    NSString *posterURLString=self.movie[@"poster_path"];
    NSString *fullPosterURLString=[baseURLString stringByAppendingString:posterURLString];
    NSURL *posterURL= [NSURL URLWithString:fullPosterURLString];
   [self.posterImageView setImageWithURL:posterURL];
    
    
    NSString *backdropViewURL = self.movie[@"backdrop_path"];
    NSString *fullBackdropViewURLString =[baseURLString stringByAppendingString:backdropViewURL];
   
    NSURL *backdropURL= [NSURL URLWithString:fullBackdropViewURLString];
    [self.backDropView setImageWithURL:backdropURL];
   self.titleLabel.text =self.movie[@"title"];
    self.synopsisLabel.text=self.movie[@"overview"];
   [self.titleLabel sizeToFit];
    [self.synopsisLabel sizeToFit];
    
}

//#pragma mark - Navigation
//
//// In a storyboard-based application, you will often want to do a little preparation before navigation
//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    // Get the new view controller using [segue destinationViewController].
//    // Pass the selected object to the new view controller.
//    UITableViewCell *tappedCell = sender;
//    NSIndexPath *indexPath = [self.tableView indexPathForCell:tappedCell];
//    NSDictionary*movie = self.movie[indexPath.row];
//    DetailsViewController *detailsViewController = [segue destinationViewController];
//    detailsViewController.movie=movie;
//    NSLog(@"Tapping on a movie!");

    
//}


@end

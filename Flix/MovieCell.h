//
//  MovieCell.h
//  Flix
//
//  Created by alexamorales on 6/27/19.
//  Copyright © 2019 alexamorales. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MovieCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *posterImageView;

@property (weak, nonatomic) IBOutlet UILabel *synopsisLabel;

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@end

NS_ASSUME_NONNULL_END

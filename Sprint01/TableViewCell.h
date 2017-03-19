//
//  TableViewCell.h
//  Sprint01
//
//  Created by iLya Tkachev on 3/17/17.
//  Copyright © 2017 iLya Tkachev. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell

@property (nonatomic, retain) UILabel *myTitleLabel;
@property (nonatomic, retain) UILabel *mySubtitleLabel;
@property (nonatomic, retain) UIImageView *myImageView;

-(id)initCell;

@end

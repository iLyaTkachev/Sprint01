//
//  TableViewCell.m
//  Sprint01
//
//  Created by iLya Tkachev on 3/17/17.
//  Copyright © 2017 iLya Tkachev. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self){
        [self initCell];
    }
    
    return self;
}
-(void)initCell
{
        self.myTitleLabel=[[[UILabel alloc]initWithFrame:CGRectMake(100.0f, 0.0f, 200.0f, 25.0f)]autorelease];
        self.mySubtitleLabel=[[[UILabel alloc]initWithFrame:CGRectMake(100.0f, 25.0f, 200.0f, 25.0f)]autorelease];
        self.myImageView=[[[UIImageView alloc] initWithFrame:CGRectMake(25.0f,1.0f, 48.0f, 48.0f)]autorelease];
        [self.mySubtitleLabel setTextColor:[UIColor grayColor]];
        [self addSubview:self.myTitleLabel];
        [self addSubview:self.mySubtitleLabel];
        [self addSubview:self.myImageView];
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
-(void) dealloc{
    [super dealloc];
}

@end

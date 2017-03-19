//
//  TableViewCell.m
//  Sprint01
//
//  Created by iLya Tkachev on 3/17/17.
//  Copyright © 2017 iLya Tkachev. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

-(id)initCell
{
    self=[super init];
    if(self)
    {
        _myTitleLabel=[[UILabel alloc]initWithFrame:CGRectMake(100.0f, 0.0f, 200.0f, 25.0f)];
        _mySubtitleLabel=[[UILabel alloc]initWithFrame:CGRectMake(100.0f, 25.0f, 200.0f, 25.0f)];
        _myImageView=[[UIImageView alloc] initWithFrame:CGRectMake(25.0f,1.0f, 48.0f, 48.0f)];
        [_mySubtitleLabel setTextColor:[UIColor grayColor]];
        [self addSubview:_myTitleLabel];
        [self addSubview:_mySubtitleLabel];
        [self addSubview:_myImageView];
    }
    
    return self;
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
    [_myTitleLabel release];
    [_mySubtitleLabel release];
    [_myImageView release];
}

@end

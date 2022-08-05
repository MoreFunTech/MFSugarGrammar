//
// Created by Administer on 2022/8/5.
// Copyright (c) 2022 NealWills. All rights reserved.
//

#import <Expecta/Expecta.h>
#import <Specta/Specta.h>

@import MFSugarGrammar;


SpecBegin(FrameInitialSpecs)

    describe(@"This Point Test will pass", ^{
        it(@"show equal", ^{
            CGFloat x = arc4random_uniform(100) / 1.0f;
            CGFloat y = arc4random_uniform(100) / 1.0f;
            CGFloat width = arc4random_uniform(200) / 1.0f;
            CGFloat height = arc4random_uniform(200) / 1.0f;
            CGRect rect = MFRect.initWithXYWidthHeight(x, y, width, height);
            expect(rect.origin.x).to.equal(x);
            expect(rect.origin.y).to.equal(y);
            expect(rect.size.width).to.equal(width);
            expect(rect.size.height).to.equal(height);
        });
    });

SpecEnd
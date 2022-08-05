//
//  MFSugarGrammarTests.m
//  MFSugarGrammarTests
//
//  Created by NealWills on 08/05/2022.
//  Copyright (c) 2022 NealWills. All rights reserved.
//

// https://github.com/Specta/Specta

@import MFSugarGrammar;

SpecBegin(InitialSpecs)

//describe(@"these will fail", ^{
//
//    it(@"can do maths", ^{
//        expect(1).to.equal(2);
//    });
//
//    it(@"can read", ^{
//        expect(@"number").to.equal(@"string");
//    });
//
//    it(@"will wait for 10 seconds and fail", ^{
//        waitUntil(^(DoneCallback done) {
//
//        });
//    });
//});

    describe(@"these will pass", ^{

//    it(@"can do maths", ^{
//        expect(1).beLessThan(23);
//    });
//
//    it(@"can read", ^{
//        expect(@"team").toNot.contain(@"I");
//    });
//
//    it(@"will wait and succeed", ^{
//        waitUntil(^(DoneCallback done) {
//            done();
//        });
//    });

        it(@"can do match", ^{
            CGFloat x = arc4random_uniform(100) / 1.0f;
            CGFloat y = arc4random_uniform(100) / 1.0f;
            CGFloat width = arc4random_uniform(200) / 1.0f;
            CGFloat height = arc4random_uniform(200) / 1.0f;
            CGRect rect = MFRect.initWithXYWidthHeight(x, y, width, height);
            expect(rect.origin.x).equal(x);
            expect(rect.origin.y).equal(y);
            expect(rect.size.width).equal(width);
            expect(rect.size.height).equal(height);
        });
    });

SpecEnd


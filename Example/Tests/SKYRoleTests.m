//
//  SKYRoleTests.m
//  SKYKit
//
//  Copyright 2015 Oursky Ltd.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

#import <Foundation/Foundation.h>
#import <SKYKit/SKYKit.h>

SpecBegin(SKYRole)

    describe(@"SKYRole", ^{
        it(@"defines correctly", ^{
            NSString *roleName = @"Developer";
            SKYRole *developerRole = [SKYRole roleWithName:roleName];

            expect(developerRole).to.beKindOf([SKYRole class]);
            expect(developerRole.name).to.equal(roleName);
        });

        it(@"will not duplicated define", ^{
            SKYRole *testerRole = [SKYRole roleWithName:@"Tester"];
            SKYRole *alsoTesterRole = [SKYRole roleWithName:@"Tester"];

            expect(testerRole).to.beIdenticalTo(alsoTesterRole);
        });

        it(@"can be compared using isEqual", ^{
            SKYRole *developerRole = [SKYRole roleWithName:@"Developer"];
            SKYRole *testerRole = [SKYRole roleWithName:@"Tester"];
            SKYRole *alsoTesterRole = [SKYRole roleWithName:@"Tester"];

            expect([developerRole isEqual:testerRole]).to.equal(NO);
            expect([testerRole isEqual:alsoTesterRole]).to.equal(YES);
        });
    });

SpecEnd

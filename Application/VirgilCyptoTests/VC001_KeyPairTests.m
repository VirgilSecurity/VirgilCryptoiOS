//
//  VCKeyPairTests.m
//  VirgilCypto
//
//  Created by Pavel Gorb on 9/23/15.
//  Copyright (c) 2015 VirgilSecurity. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <XCTest/XCTest.h>

#import "VSCKeyPair.h"

@interface VC001_KeyPairTests : XCTestCase

@end

@implementation VC001_KeyPairTests

- (void)test001_createKeyPair {
    VSCKeyPair *keyPair = [[VSCKeyPair alloc] init];
    XCTAssertNotNil(keyPair, @"VSCKeyPair instance should be created.");
    XCTAssertTrue(keyPair.publicKey.length > 0, @"Public key should be generated for the new key pair.");
    XCTAssertTrue(keyPair.privateKey.length > 0, @"Private key should be generated for the new key pair.");
    
    NSString *privateKeyString = [[NSString alloc] initWithData:keyPair.privateKey encoding:NSUTF8StringEncoding];
    NSRange range = [privateKeyString rangeOfString:@"ENCRYPTED" options:NSLiteralSearch | NSCaseInsensitiveSearch];
    XCTAssertTrue(range.length == 0, @"Private key should be generated in plain form.");
}

- (void)test002_createKeyPairWithPassword {
//    NSString *password = @"secret";
//    VSCKeyPair *keyPair = [[VSCKeyPair alloc] initWithPassword:password];
//    XCTAssertNotNil(keyPair, @"VSCKeyPair instance should be created.");
//    XCTAssertTrue(keyPair.publicKey.length > 0, @"Public key should be generated for the new key pair.");
//    XCTAssertTrue(keyPair.privateKey.length > 0, @"Private key should be generated for the new key pair.");
//    
//    NSString *privateKeyString = [[NSString alloc] initWithData:keyPair.privateKey encoding:NSUTF8StringEncoding];
//    NSRange range = [privateKeyString rangeOfString:@"ENCRYPTED" options:NSLiteralSearch | NSCaseInsensitiveSearch];
//    XCTAssertTrue(range.length != 0, @"Private key should be generated protected by the password provided to initializer.");
}

@end

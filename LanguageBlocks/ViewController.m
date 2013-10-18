//
//  ViewController.m
//  LanguageBlocks
//
//  Created by Ty Lacock on 10/18/13.
//  Copyright (c) 2013 Ty Lacock. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>
#import <AVFoundation/AVSpeechSynthesis.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)speak:(id)sender {
    
    NSString *code = [[NSString alloc] init];
    
    if ([sender viewWithTag:1]) {
        code = @"en-us";
    } else if ([sender viewWithTag:2]) {
        code = @"es-MX";
    } else if ([sender viewWithTag:3]) {
        code = @"fr-CA";
    } else {
        code = @"en-AU";
    }
    
    
    
    AVSpeechUtterance *utterance = [AVSpeechUtterance speechUtteranceWithString: @"Where is the bathroom?"];
    AVSpeechSynthesizer *synth = [[AVSpeechSynthesizer alloc] init];
    
    utterance.rate = AVSpeechUtteranceMinimumSpeechRate; // Speech Rate
    utterance.voice = [AVSpeechSynthesisVoice voiceWithLanguage: code];
    
    [synth speakUtterance:utterance];

}

@end

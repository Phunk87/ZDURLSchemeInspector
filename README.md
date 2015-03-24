# ZDURLSchemeInspector

A delightful URL Scheme inspector for iOS in Objective-C. This inspector can help you to find out the apps who are hacking your URL Scheme.

## Usage

```Objective-C
# Check if your URL Scheme is hacked.
if ([ZDURLSchemeInspector isURLSchemeHacked:@"YOUR_URL_SCHEME"]) {
	// Hacked
}
```

```Objective-C
# Find out who are hacking your URL Scheme.
NSArray *who = [ZDURLSchemeInspector whoCanHandleURLScheme:@"YOUR_URL_SCHEME"];
```

## Install

Add this

```
pod 'ZDURLSchemeInspector'
```

to your Podfile.

## Lincense

The MIT License (MIT)

Copyright (c) 2015 0dayZh

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
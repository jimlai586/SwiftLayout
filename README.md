# SwiftLayout
Swiftier PureLayout

PureLayout is great, but it can be Swiftier.

This repo is a Swift wrapper on top of PureLayout to be used as a framework in iOS-Swift projects.

## Example
```label1 -- v |> .cx(nil) -- .cy(nil) -- .wh(300, 200) |> .text("label1") -- .textColor(.red) -- .bdw(5.0) -- .bdc(.brown) -- .bgc(.gray) -- .textAlign(.center)```

This line does: 
* adds a UILabel to a superview
* sets 4 constraints of center-x, center-y, width, and height
* sets  label text, text color, border width, border color, background color and text alignment

Also the framework can be easily extended to support whatever functionalities you need.


## Features

To keep things succinct, the framework is built on supporting the following:

* speed up the most frequent usages, with additional support for setting text, border width ... etc. 

* more functional than imperative, so one can unify constraints setup and view setup in a pipeline.

* less verbose than PureLayout, I'd rather spend 10 mins to introduce short-hands to all team member for consensus, than 
typing autoPinEdgesToSuperview and parameters for 200 times in a project. 


## Installation

### Carthage 

Add to Cartfile, note this depends on PureLayout

```github "jimlai586/SwiftLayout"```


### drag to Xcode 

Pull the repo as one Xcode project, in which it contains SwiftLayout as framework target.

This way you can easily add functionalities tailored for specific project. 


## Usage

Start with a UIView or its subclass, say a but1: UIButton.

First add it to some superview v using operator |>

``` but1 |> v```

Then setup constraints by specifying respected enum, e.g.; case .le(let constant, let view)

``` but1 |> v |> .le(20, v)```

This adds a constraint between but1 leading edge and v trailing edge with constant 20.

There are of course .tr for trailing, .top for top, .bot for bottom constraints. 

For a non-ambiguous auto-layout, add a top edge constraint connected by -- oeprator. 

``` but1 |> v |> .le(20, v) -- .top(20, nil)```, where nil means using superview 

No need to set dimension because button usually comes with intrinsic content size.

Then one can even chain another stage for further view setup, e.g.; button title text, color ... etc.

Separate different stages again by |> operator.

``` but1 |> v |> .le(20, v) -- .top(20, nil) |> -- .title("This is a button") -- .titleColor(.red)```

OK. This is now 5 lines in 1 and you can preview it using @IBDesignable, which is shown as an example in 
SwiftLayout/Mirror.storyboard.

## Limitations 

Only intended to support a subset of PureLayout functions that are most freqently used.

Not intended to be verbose, verbosing something that you use so many times just becomes tedious.

Note that once you put efforts in, you may never go back to Obj-C imperative style auto-layout and view setup.

## Feedbacks and pull requests are welcome!


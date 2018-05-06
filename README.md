# LayerMTB
Understanding UIView And CALayer Properties clipsToBound and masksToBound

UIView is backed by a Core Animation CALayer where
UIViews provide over CALayers is built-in support for user interaction

You will often need to access the underlying layers for a UIView when performing more complex animations than the base UIView class allows.

UIView is a container for CALayers. Using UIKit.
CALayer where we draw the contents. Using CoreGraphics

CALayers are simply classes representing a rectangle on the screen with visual content. often

clipsToBounds work directly on UIView but at the end it does the same what masksToBounds does

In order to understand the difference between both of this we can think of the problem where a view needs a property called shadow and rounded corner both.

now here we can not set a shadow to the view if we need it to be rounded corner and also can not do the vice versa. this is the contradiction. both properties does the same. you can go through the link and see yourself.

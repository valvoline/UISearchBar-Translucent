UISearchBar+Translucent
=======================

UISearchBar+Translucent is a very tiny and nifty extension that allows you to use the translucent features within the standard UISearchBar component.

The proposed solution is really simple. It involves the use of two extensions (one for UIImage and one for UISearchBar). The first one is used to create fake UIImage of 1x1 px starting from a UIColor. We take advantage of this technique to inject a fake transparent background inside the UISearchBar backgroundImage and scopeBarBackgroundImage property. The second extension allows you to use a convenience init method to take full advantage of this system within your working code.

As you can see, the tableview rows will scroll behind the UINavigationBar and UISearchBar and both of the components react in the same way by offering a graceful translucent effect.

<p align="center">
	<img src="https://github.com/valvoline/UISearchBar-Translucent/blob/master/gifanimation.gif" width="306" height=549>
</p>

Requirements
------------
- iOS 6+


Why?
---
Some of us was in search of a UIButton with this capabilities during a challenge here on iOS developer Academy. This is what we need.


Manual Installation
------------------

Just drag the Extension file on your project.

How to use
----------
No special use. The UIButton just inherits the required capabilities. That's it.


The BSD-3 License

Copyright (c) Costantino Pistagna 2017


 
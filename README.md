# UIStackView-Dynamic-Width
Example for adding two UILabels in a horizontal stack view with dynamic width. http://stackoverflow.com/questions/44095213/dynamic-width-with-stack-views

---

# Solutions

A brief (steps) of what I did to resolve the exercises.

## Exercise 1:

> 1. Clone the ios-exercises repo to your computer.

Achieved it by `git clone` command.

> 2. Fix any runtime errors and console warnings.

- Updated the pods (`pod update`).
- Since the project uses the `SwiftLint`, I removed the unnecessary white spaces -that causes warnings- in the **AppDelegate.swift** file.
- Used the `if let` pattern (*optional binding*) to unwrap the `imageUrl` optional variable in **ViewController.swift** file.

> 3. Consume the following endpoint and deserialize the JSON response:

Added a *network layer* to the project (applying the *MVC-N* pattern), which divided as follows:

- Implemented a `Networking` protocol which is a representation for the Networking Abstraction layer.
- Implemented `APIHelper` to be used for any needed API Manager (a concrete type of `Networking`).
- For the purpose of bundling the functionality for each part of APIs, I translated it as `ContentAPIManager` which a manager for handling the prasing of the returned data, as well as pass it to the ViewController; It uses an `APIHelper` instance (has a relationship/ composition).

#### Aside Bar:
As another example of how we could group up the APIs functionality, we could also consider that there is an `AuthenticationAPIManager` which should handle any authentication API, such as signup, signing, edit profile, etc...

> 4. With the data from this endpoint, display the title and image of each object in the response. You can use any UIView or UIControl to do this.

Because there is a list of objects to be displayed, it would be sensible to use a *table view* or a *collection view*, I just choosed the table view.

> 5. Run the application in the Simulator or on an iOS device.

Done, without any problem (0 warnings, 0 errors).

> 6. Ensure the app displays correctly when the orientation changes.

Actaully, it does without doing any extra effort so far.

> 7. Submit your completed updates to the ios-exercises repo using a pull request.

As per my discussion with the tech manager, adding "AhmadFayyas" branch is enough so far, without the need of the pull request.


## Exercise 2:

> - Clone the ios-exercises repo, if you haven't already.

Already done (from Exercise 1).

> - Open Exercise2.playground in Xcode. Fix compilation errors.

Achieved, as follows:

- Added `{ get set }` for `Person` protocol properties.
- Conformed `Teacher` struct to `Person` protocol, by declaring `firstName` and `age` properties.
- Conformed `Teacher` to `Teaching` protocol, by implementing `addStudents` method.

> - Assign the teacher the name "Alice" and an age of 31.

Achieved, as:

```
var teacher = Teacher()
teacher.firstName = "Alice"
teacher.age = 31
```

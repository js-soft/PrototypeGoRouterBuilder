# simple_app_playground

A Flutter project to demonstrate the usage of the go_router_builder, which ensures typesave navigation in a Flutter app.

## What are the examples?

- Simple Page is a simply receives two integer parameters.
  $\Rightarrow$ showcase typesafety

- The dog pages show how to handle complex data types as path parameters.
  -> two options exist:

  - a version, which parses the dog objects variables as unbundled parameters and then creates the dog object during routing. This version also uses the shellNavigation key.
  - an alternate version, which uses the '$extra' notation (not yet supported by web) and takes a dog object as a parameter. This version however uses the rootNavigation key. This leads to the BottomNavigationBar not being visible.

- Foo and Bar are two shellPages in between which the user can navigate. They use the shellRouting key.

- Lastly the cat pages are meant to show a deeper navigation structure, where the home cat and wild cat are subpages which add
  to the cat object they themselves receive as a parameter.

## What are the most important code changes

- navigating to a page is done by calling <br>
  `RoutingData(<Data to pass into>).go(context)`

- Navigator.pop(context) is still available

- The structure of the different views is managed in one single annotation. This annotation defines the structure as well as names the paths. These names are now however rather unnecessary, as they are not required in navigating to a page.

- All code to add parameters to a path is auto generated by the go_router_builder. The command to do is called:<br> `dart run build_runner build`

## Inserting a new view

1. Create your view
2. Create a ViewRouterData class in the routes.dart file
   - Decide wether to use $extra or a list od strings, integers and enums(natively supported data types)
3. Add the new view to the annotation 'HomeRoute'-annotation
4. Run `dart run build_runner build` to generate the new code
5. Call the view with `RoutingData(<Data to pass into>).go(context)`
6. (Optional) By setting the navigation key in the GoRouteData class determine the interaction with the shell navigation

## Pros

- Typesafety is ensured by the go_router_builder (the older solution had more points of failure: i.e. `context.push('/account/$accountId/contacts/${contact.id}')`)

- The routing is done in a single file, which separates the routing logic from the view logic

- All routes are configured compactly in a single annotation

## Cons

- The go_router_builder is not very well documented yet, but the community seems rather active and i got a reply to my question within a day.

- The extra notation is a bit confusing especially since no good error message is given when a complex datatype is named differently.
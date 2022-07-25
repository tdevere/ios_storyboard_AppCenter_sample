# App Center Sample - iOS Storyboard Sample

## Setup Instructions

1. Install the App Center CLI
[See setup instructions](https://www.npmjs.com/package/appcenter-cli)

``` npm install -g appcenter-cli ```

2. Create an App Center Account (or log into your existing account)
See [Creating New Account](https://docs.microsoft.com/en-us/appcenter/quickstarts/#creating-an-app-center-account)

3. Create an App Center token 
Log into App Center via the [AppCenter CLI](https://docs.microsoft.com/en-us/appcenter/cli/#logging-in)

``` appcenter login --token ****** ```

4. Create a New App Center app

``` appcenter apps create -p Objective-C-Swift -o iOS -r Alpha -d iOS_AppCenterDemo ```

5. Fork This Repo
From command line / terminal navigate to a directory of your chioce and run
This step requires a GitHub account. The instructions our beyond the scope of this doc. After your account is setup, please [fork this repo](https://github.com/tdevere/ios_storyboard_AppCenter_sample/fork). Fill in any required details. 

6. Connect the Forked Repo
From the the [App Center Portat](https://appcenter.ms) [link](https://docs.microsoft.com/en-us/appcenter/build/connect#connecting-to-a-source-repository) the forked repo to your newly created app 

7. Configure the build configuration
From the the [App Center Portat](https://appcenter.ms) [configure the branch build configuration](https://docs.microsoft.com/en-us/appcenter/build/branches) for the new app and then click "Save and Build". See this example: 

![image](https://user-images.githubusercontent.com/24923679/180891519-3b074c58-cfe4-47d8-ac6f-bf2a9437df19.png)

8. If All Is Right In The World
You should kick off an App Center build which succeeds. The proof will be a completed build which looks like:

![image](https://user-images.githubusercontent.com/24923679/180891648-9e15ab3f-8a1a-4760-a8db-df415815275e.png)

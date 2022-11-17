
#  investment.desktop

#  My Stock Plug

## Overview

Individuals interested in stock investments find it difficult to know at a glance what stocks to buy or invest in that will in turn yield a positive return on investment (ROI). Our web app helps to simplify that process by making it easy to know the best companies to invest in based on several metrics.

  

NB: Always contact Team leads before attempting any task **Except** assigned too.

  

- _All Team member must adhere to the follow procedure while working on this project._

- _Make sure you understand the project Architecture before proceeding with any tasks_

  

**i. Naming Convention**

  

|Object Types|Effective Style|Example|

|-----------------|---------------|-------|

|Classes, enum types,typedefs,and type parameters,etensions|PascalCase^1|An example is StartupView|

|Libraries, packages, directories, and source files, import prefixes|snake_case|An example is startup_view|

|Class members, top-level definitions, variables, parameters, and named parameters, constants|camelCase|An example is startupViewProvider|

  

  

  

**ii. Style Rule**

* Always declare return types in your methods.

* Put required named parameters first.

* Always require non-null named parameters (@required).

* Indent your code where appropriate `(e.g Use two-space indentation.)`

Click [Here](https://docs.google.com/document/d/1kgVwGVgKrMXKgxuMowgqsBkFXsJdli-4Zl-oP_NZFoI/edit "Github home") to know more

## State Management Strategy
We will be making use of River Pod 2.0 for this project. River Pod is a state management and caching strategy. It is a follow up to the popular SM, Provider. However, it fixes most of the issues that is present within provider. To learn more about the core mechanics of this SM, click [here](https://codewithandrea.com/articles/flutter-state-management-riverpod/) and [here](https://docs.google.com/document/d/1jk_VbyC9BQw0dr34u6litmwCsezbABk_-p-yXnmc4Zc/edit) to know more.

## Project Architecture
We will be making use of MVVM (Model View View-Model) architecture. 


## Contribution Guide

**_Steps to collaborate on the Repository for Team Members._**

### Cloning Repo

* Click on the "Code" button on the Repo page.

* Copy the URL under Git hub CLI "https://github.com/your-github-username/zc_app.git"

* Open your Code Editor and run `git clone` "https://github.com/your-github-username/zc_app.git" in terminal in you preferred folder.

### IMPORTANT
* It is very important to understand how uploading your code works.
* They are two main branches in the code base
	* main
	* dev
* The main branch contains code in production while the dev branch contains code in staging.
* In order to contribute effectively, **CREATE ANOTHER BRANCH FROM THE DEV BRANCH**
* This new (task) branch, will contain all the code you write to complete your task. Once done, **INFORM THE TEAM LEAD.**
* The Team Lead will guide you step by step in how to make  Pull Request **PR** to the dev branch.

## MAKING A PULL REQUEST
*	The steps to making a pull request are important, but not complicated. Regardless, please inform the Team Lead before you attempt to ensure multiple parties are aware of what is going on as the consequences of an improper pull request is the **DELETION OF THE PROJECT**.
	*	Step 1: Push your task branch to the github project. Details on how to do this is found below.
	*	Step 2: Contact your team lead
	*	Step 3: Your team lead and yourself will create the pull request on github, **REQUESTING REVIEW FROM MENTOR ETERNITY**
	*	His email is -   [isaacadariku05@gmail.com](mailto:isaacadariku05@gmail.com) and git hub name is isaacadariku.
	*	Once the PR has been made, we await review from Eternity 
  

  

###  Complete assigned Task/ Issue

- Open the project in your IDE or Code Editor.

- Complete your assigned task.
- You will receieve your task from either Slack or Linear, so please be constantly online on these platforms

  

  

###  Create and Commit Guides

When your task is completed

* Create a new branch with your task name e.g "feat- Startup view".

* run: `git checkout -b feat/yourTask`

**Push to github;**

* `git add .`

* `git commit -m "feat: Inplemented yourTask"`

  

###  Push New Branch to "Origin" Repository

- To make sure there are no conflict, Pull from upstream using `git pull upstream feautre`

- Push your branch changes to the Repo using `git push origin "feat/yourTask"` note how it end with a branch.

  


# Deploy LINE Login Starter Application on Render

This repo can be used to deploy LINE Login Starter Application in the [line-login-starter](https://github.com/line/line-login-starter) on [Render](https://render.com/). Render doesn't natively support Java. A Dockerfile with Maven and JDK image is used to deploy the Java samples.

## Prerequisites
Make sure you have the following:
- A LINE Login channel with the "WEB" app type. To create a channel, please check the [document](https://developers.line.biz/en/docs/line-login/getting-started/#step-1-create-channel).
- A [Render account](https://dashboard.render.com/register) that doesn't require credit card to sign up.

## Deployment
1. Fork this repo.
   > Besides `git clone` to clone this repo, you also need to execute `git submodule  update --init` to clone the `line-login-starter` submodule.
2. Cieck to deploy
   
   [![Deploy to Render](http://render.com/images/deploy-to-render-button.svg)](https://render.com/deploy)

3. You will be prompted to input LINE channel ID and channel secret. You can find them on the [LINE Developers Console](https://developers.line.biz/console/). Both of them are on the channel's `Basic settings` tab.
4. Once the bot servcie is live, find the service `onrender` URL (e.g., `https://line-login-starter-<something unique>.onrender.com`) on the Dashboard. Append `/auth` to the service URL to build the callback URL (e.g., `https://line-login-starter-<something unique>.onrender.com/auth`). Paste the callback URL to the `Web app` section on the LINE channel's `LINE Login` tab on the [LINE Developers Console](https://developers.line.biz/console/). 
5. That's it. Go to the URL of your app service (e.g., `https://line-login-starter-<something unique>.onrender.com`) to open up the LINE Login dialog. Log in to LINE and agree to grant the required permissions to the app. When you successfully log in with your LINE credentials, the app displays your LINE user profile image, display name, and status message

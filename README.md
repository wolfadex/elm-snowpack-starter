# elm-snowpack-starter

A simple setup for making [Elm](https://elm-lang.org/) apps.

***NOTE:*** This is designed to work for [browsers that support web modules via script tags](https://caniuse.com/#feat=es6-module), which is most browsers. 

## Dev

- run `git clone https://github.com/wolfadex/elm-snowpack-starter.git`
- run `npm install` or `yarn` or `pnpm` 
- run `npm run dev` or `yarn run dev` or `pnpm run dev` to start the dev server
- a browser tab will open at `localhost:1234`
- edit code and watch it update!

## Prod

- run `npm run build` or `yarn build` or `pnpm run build`
- production files will end up in `dist/*`
- host wherever you like, such as [Netlify](https://www.netlify.com/)

## Styles

I prefer to use [mdgriffith/elm-ui](https://package.elm-lang.org/packages/mdgriffith/elm-ui/latest/) for my layout and styling so it's included by default. If you prefer to use vanilla css, [sass](https://sass-lang.com/), [less](http://lesscss.org/), or something else entirely it should be easy to setup. If you need assistance, please file an issue and I'll help.

## Credits

Built using [pnpm](https://pnpm.js.org/) for package management, [Snowpack](https://www.snowpack.dev/) for managing modules, and [es-dev-server](https://github.com/open-wc/open-wc/tree/master/packages/es-dev-server) for serving files.

This has only been tested on Linux so far. If you run into any issues, please let me know and I'll help you get it working.
## Containarized Nodejs with MongoDB

<img src="https://i.imgur.com/QwgdHKk.png" alt="Swagger Page" title="Swagger Page"/>

### Requirements

- Node.js v10+
- MongoDB running on local instance

#### Environment Variables

- PORT: 3000
- MONGO_URL: localhost:27017

### Docker runnig 
See run.sh

### Local Running

- Install dependencies - `npm i`
- Build typescript - `npm run build`
- Run project - `npm start`
- Go to swagger page - `localhost:3000/`

### Development with Watch Compiler

- Run once - `npm run dev`
- Run and watch files - `npm run dev:watch`

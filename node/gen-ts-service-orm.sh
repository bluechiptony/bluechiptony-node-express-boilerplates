#! /bin/sh



mkdir $1 &&

cd $1 &&


touch README.md &&
touch .env &&
touch dot-env-sample &&

mkdir src &&
touch src/app.ts &&
mkdir src/apidoc &&
mkdir src/config &&
touch src/config/database.ts &&
touch src/config/cache.ts &&
mkdir src/authorization &&
touch src/authorization/passage.ts &&
mkdir src/handlers &&
mkdir src/routes &&
mkdir src/tests &&
mkdir src/utilities &&
mkdir src/utilities/helpers &&
mkdir src/utilities/logging &&
touch src/utilities/logging/logger.ts &&
mkdir src/utilities/environment &&
touch src/utilities/environment/envitonment.ts &&

npm init -y &&

npm install --save express cors body-parser jsonwebtoken bcrypt dotenv axios keys-to-camelcase uuid nanoid nanoid nanoid-dictionary redis winston winston-mongodb mongodb mongoose typeorm reflect-metadata pg &&

npm install --save-dev @types/jest @types/node @types/cors ts-node jest ts-jest  typescript nodemon @babel/preset-typescript @types/express @types/bcrypt @types/nanoid @types/cors @types/mongoose &&

touch .gitignore &&

echo "/node_modules\n.env\n.DS_Store\ndist\nnode_modules\njspm_packages/\n# TypeScript v1 declaration files\ntypings/ " >> .gitignore &&

touch Dockerfile &&

touch Jenkinsfile &&

touch jest.config.js &&

touch tsconfig.json &&

echo '{
   "compilerOptions": {
    "emitDecoratorMetadata": true,
    "experimentalDecorators": true,
    "target": "es6",
    "module": "commonjs",
    "strict": true,
    "outDir": "./dist",
    "allowJs": true /* Allow javascript files to be compiled. */,
    "declaration": true /* Generates corresponding .d.ts file. */,
    "sourceMap": true /* Generates corresponding .map file. */,
    "rootDir": "./src",
    "esModuleInterop": true /* Enables emit interoperability between CommonJS and ES Modules via creation of namespace objects for all imports. Implies allowSyntheticDefaultImports. */,
    "forceConsistentCasingInFileNames": true /* Disallow inconsistently-cased references to the same file. */
  },
  "include": ["./src/**/*.ts"],
  "exclude": ["node_modules", "**/*.spec.ts"]
}' > tsconfig.json &&

touch ormconfig.json &&

echo '{
   "type": "postgres",
   "host": "localhost",
   "port": 5432,
   "username": "bluechiptony",
   "password": "",
   "database": "dadaa",
   "synchronize": true,
   "logging": false,
   "entities": [
      "src/entity/**/*.ts"
   ],
   "migrations": [
      "src/migration/**/*.ts"
   ],
   "subscribers": [
      "src/subscriber/**/*.ts"
   ]
}' > ormconfig.json &&



touch ormconfig.ts &&

echo 'import * as dotenv from "dotenv";
dotenv.config();
export default {
   "type": "postgres",
   "host": "localhost",
   "port": 5432,
   "username": "bluechiptony",
   "password": "",
   "database": "dadaa",
   "synchronize": true,
   "logging": false,
   "entities": [
      "src/entity/**/*.ts"
   ],
   "migrations": [
      "src/migration/**/*.ts"
   ],
   "subscribers": [
      "src/subscriber/**/*.ts"
   ]
}' > ormconfig.ts &&




echo 'import express, { Application } from "express";
import "reflect-metadata";
import * as dotenv from "dotenv";
dotenv.config();
import cors from "cors";
import bodyParser from "body-parser";

const app: Application = express();

const applicationName = process.env.APPLICATION_NAME;
const port = process.env.APPLICATION_PORT;
app.use(express.json());
app.use(cors());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

app.listen(port, async () => {
  console.log(`${applicationName} started and runnning on port ${port}`);
});'> src/app.ts &&


touch create-app-object.sh &&

echo 'touch src/apidoc/$1.js &&
mkdir src/handlers/$1 &&
mkdir src/handlers/$1/__tests__ &&
mkdir src/handlers/$1/__mocks__ &&
touch src/routes/$1.ts &&
touch src/handlers/$1/$1-data-access.ts &&
touch src/handlers/$1/$1-use-cases.ts &&
touch src/handlers/$1/$1-adapter.ts &&
touch src/handlers/$1/$1-model.ts &&
touch src/handlers/$1/$1-validator.ts &&
touch src/handlers/$1/__mocks__/$1-data-access.test.ts &&
touch src/handlers/$1/__tests__/$1-data-access.test.ts &&
touch src/handlers/$1/__tests__/$1-use-cases.test.ts &&
touch src/handlers/$1/__tests__/$1-adapter.test.ts &&
touch src/handlers/$1/__tests__/$1-validator.test.ts'> create-app-object.sh &&

echo 'APPLICATION_NAME=\nAPPLICATION_PORT=\nDATABASE_HOST=\nDATABASE_NAME=\nDATABASE_USER=\nDATABASE_PASSWORD=\n' >.env

git init



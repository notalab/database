import {createDb, migrate} from "postgres-migrations";
import config from './config.json';

(async () => {
  const dbConfig = {
    database: config.database,
    user: config.user,
    password: config.password,
    host: config.host,
    port: Number(config.port),
  }
 
  await createDb(config.database, {
    ...dbConfig,
    defaultDatabase: config.database,
  });

  console.log('Migrating...');

  await migrate(dbConfig, "./schema");
})();
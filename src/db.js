const { Pool } = require('pg');

// One shared connection pool for the whole app
module.exports = new Pool({ connectionString: process.env.DATABASE_URL });

require('dotenv/config');

if (!process.env.JWT_SECRET || !process.env.DATABASE_URL) {
  console.error('Missing JWT_SECRET or DATABASE_URL in .env');
  process.exit(1);
}

const app = require('./app');
const port = process.env.PORT || 3000;
app.listen(port, () => console.log(`Medico API running on port ${port}`));

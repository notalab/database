const readline = require('readline');
const fs = require('fs');

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

rl.question('Migration Name: ', async (name) => {
    const time = Date.now()
    console.log(`Creating migration ${name}...`);

    try {
        await fs.writeFileSync(`./schema/${time}-${name}.up.sql`, '');
        await fs.writeFileSync(`./schema/${time}-${name}.down.sql`, '');

        console.log(`Created ${time}-${name}.up.sql`);
        console.log(`Created ${time}-${name}.down.sql`);
    } catch (e) {
        throw new Error(e);
    }

    process.exit();
});

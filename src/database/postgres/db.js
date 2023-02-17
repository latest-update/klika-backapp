import pg from 'pg';
import dotenv from 'dotenv'
const { Pool } = pg;
dotenv.config()

export default class db {
    pool
    connection = {
        user: process.env.user,
        host: process.env.host,
        database: process.env.database,
        password: process.env.password,
        port: 5432
    }
    constructor () {
        this.pool = new Pool(this.connection)
    }

    async fetch (a) {
        try {
            const result = await this.pool.query(a)
            return {
                status: 200,
                data: result.rows
            }
        } catch (error) {
            return {
                status: 400,
                data: null,
                error: error
            }
        }
    }
}
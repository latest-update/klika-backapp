import controller from "./default/controller.js";
import music from "../database/music.js";
import filter from "../database/filter.js";

export default class extends controller {

    musics = async (req, res) => {
        const musics = await this.database.fetch( music.all() )
        const count = await this.database.fetch( music.amount() )
        res.status(musics.status).json({
            amount: count.data[0].amount,
            musics: musics.data
        })
    }

    filters = async (req, res) => {
        const genres = await this.database.fetch( filter.genres() )
        const singers = await this.database.fetch( filter.singers() )
        const years = await this.database.fetch( filter.years() )

        res.json({
            genres: genres.data,
            singers: singers.data,
            year: years.data.map(obj => obj.year)
        })
    }

}

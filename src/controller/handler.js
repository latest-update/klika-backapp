import controller from "./default/controller.js";
import music from "../database/music.js";
import filter from "../database/filter.js";

export default class extends controller {

    musics = async (req, res) => {
        res.json( await this.database.fetch( music.all() ) )
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

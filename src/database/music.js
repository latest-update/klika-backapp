import {request} from "../request.js";

export default {
    _filters: {
        singer: 'singers.id',
        genre: 'genres.id',
        year: 'year'
    },
    filters () {
        const query = request._get
        const filterArr = Object.keys(query)
            .filter(key => this._filters[key])
            .map(key => `${this._filters[key]}=${query[key]}`)
        return filterArr.join( ' and ' ) !== '' ? 'where ' + filterArr.join( ' and ' ) : ''
    },
    page () {
        const page = request._get?.page || 1
        const amount = request._get?.amount || 5
        const start = (amount * ( page-1 ))
        return `limit ${amount} offset ${start}`
    },
    all () {
        if (!request._get) {
            return `select * from songs ${this.page()}`
        }

        const filters = this.filters()
        const page = this.page()

        return `
            select songs.id,
            songs.name,
            songs.year,
            genres.name as genre,
            singers.name as singer
                from songs
                    inner join genres on songs.genre_id = genres.id
                    inner join singers on songs.singer_id = singers.id 
            ${filters} ${page}
        `
    }
}
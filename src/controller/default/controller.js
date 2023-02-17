export default class {
    constructor (database) {
        this._database = database
    }
    get database () {
        return this._database
    }
    set database (database) {
        this._database = database
    }
}
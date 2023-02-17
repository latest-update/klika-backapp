export default {
    singers () {
        return `select * from singers`
    },
    genres () {
        return `select * from genres`
    },
    years () {
        return `select distinct year from songs`
    }
}
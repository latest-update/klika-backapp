export default {
    singers () {
        return `select id as key, name as text, id as value from singers`
    },
    genres () {
        return `select id as key, name as text, id as value from genres`
    },
    years () {
        return `select distinct year as key, year as text, year as value  from songs`
    }
}
import url from "url";

class request {
    static _get
    static init (url) {
        const parsedUrl = url.parse(url, true)
        return Object.assign({}, parsedUrl.query)
    }
}

const requestParse = (req, res, next) => {
    const parsedUrl = url.parse(req.url, true)
    request._get = Object.assign({}, parsedUrl.query)
    if (Object.keys(request._get).length === 0)
        request._get = null

    next()
}

export {
    request,
    requestParse
}
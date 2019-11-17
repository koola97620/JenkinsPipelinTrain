node() {
    def body = """ {
    "f1": "b?",
    "f2": "c"
    }"""

    stage("json") {
        def parser = new groovy.json.JsonSlurper()
        def data = parser.parseText(body)
        echo data.f1
        echo data.f2
    }
}




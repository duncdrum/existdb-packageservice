xquery version "3.1";

(:~
: User: joern
: Date: 07.04.17
: Time: 11:44
: To change this template use File | Settings | File Templates.
:)

import module namespace packages="http://exist-db.org/apps/existdb-packages" at "packages.xqm";
declare namespace output="http://www.w3.org/2010/xslt-xquery-serialization";
declare option output:method "json";
declare option output:media-type "application/json";


let $json := array{
    let $packages := packages:get-local-packages()
    return
        packages:packages-as-json($packages)
}

return $json
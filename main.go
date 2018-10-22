// Copyright 2018 hybris. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE.md file.

package main

import (
    "flag"
    "github.com/oevermod/serve-core"
)

var path = flag.String("f", "", "directory/file to be served")
var ip = flag.String("i", "", "desired ip address (default all)")
var port = flag.Int("p", 8080, "desired port")

func main() {
    flag.Parse()
    serve.Serve(*path,*ip,*port)
}

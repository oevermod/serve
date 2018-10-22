# serve

simple golang wrapper around [http.Fileserver](https://golang.org/pkg/net/http/#FileServer) and [http.ServeFile](https://golang.org/pkg/net/http/#ServeFile)

## Installing

Installation is simple. Just run the following command:
```
$ go get github.com/oevermod/serve
$ cd $GOPATH/src/github.com/oevermod/serve
$ make && make install clean
```

`make install` will copy `serve` to `/usr/local/bin/`

## Usage

```
$ serve --help
Usage of serve:
  -f string
        directory/file to be served
  -i string
        desired address (default all)
  -p int
        desired port (default 8080)
```

## Uninstalling

To uninstall just run:
```
$ make uninstall
```

## License

This project is licensed under the FreeBSD License - see the [LICENSE.md](LICENSE.md) file for details

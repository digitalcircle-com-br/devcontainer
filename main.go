package main

import (
	"log"
	"time"
)

func main() {
	for {
		log.Printf("Running")
		time.Sleep(time.Minute)
	}
}

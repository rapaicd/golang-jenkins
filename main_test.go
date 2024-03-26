// main_test.go

package main

import (
	"testing"
)

func TestMainFunction(t *testing.T) {
	result := helloWorld()
	expected := "Hello, world!"
	if result != expected {
		t.Errorf("Unexpected result: got %q want %q", result, expected)
	}
}

func helloWorld() string {
	return "Hello, world!"
}

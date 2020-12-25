// main_test.go
package main

import "testing"

func TestCalculation(t *testing.T) {
	if Calculate(2) != 4 {
		t.Fatal("Someone has goofed")
	}
}

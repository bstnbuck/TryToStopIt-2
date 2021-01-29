import os
import encoding.base64

// this helps to get the base64 string of the binary
fn main(){
	lines := os.read_file("endless.exe") ?
	os.write_file("endless.exe.txt", base64.encode(lines)) ?
}
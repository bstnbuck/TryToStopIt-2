
fn endless(){
	// endless iterate a int and print it
	mut i := 1
	for {
		println(i)
		i++
	}
}

fn main(){
	// do that in endless new threads :)
	for{
		go endless()
		
	}
}


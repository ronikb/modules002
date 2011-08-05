# This will execute git clone for database repository

class application::gitclone_db {        
	exec { "gitclone-db":
		command => "git clone $application_drupal_gitclone_db $application_drupal_gitclone_db_destination",
		timeout => 3600, 
        logoutput=> on_failure, 
		before => Class ["application::dbrestore"]
}
}




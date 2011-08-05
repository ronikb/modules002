# This will create symlink for drupal files folder
# Variables expected:
#   $symlink_files_folder_source
#   $symlink_files_folder_destination

class application::symlink {
	exec { "symlink-for-files-folder":
		command => "ln -s $application_drupal_symlink_files_folder_source $application_drupal_symlink_files_folder_destination",
		require => Class["application::gitclone_app"],
}
}



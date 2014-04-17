class { 'postgresql::server': }

postgresql::server::role { 'canlogin': 
    login => true
}
postgresql::server::role { 'cannotlogin': 
    login => false
}

postgresql::server::role { 'defaultlogin': }

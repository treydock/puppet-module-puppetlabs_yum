# Private class
class puppetlabs_yum::params (
  $urlbase = 'http://yum.puppetlabs.com',
) {

  # There are some URL manipulations that have to happen based on exact OS type
  if $::osfamily == 'RedHat' {
    if $::operatingsystem == 'Fedora' {
      $ostype = 'Fedora'
      $urlbit = "fedora/f${::operatingsystemmajrelease}"
    } else {
      $ostype = 'EL'
      $urlbit = "el/${::operatingsystemmajrelease}"
    }
  }

  $products_baseurl         = "${urlbase}/${urlbit}/products/\$basearch"
  $deps_baseurl             = "${urlbase}/${urlbit}/dependencies/\$basearch"
  $devel_baseurl            = "${urlbase}/${urlbit}/devel/\$basearch"
  $products_source_baseurl  = "${urlbase}/${urlbit}/products/SRPMS"
  $deps_source_baseurl      = "${urlbase}/${urlbit}/dependencies/SRPMS"
  $devel_source_baseurl     = "${urlbase}/${urlbit}/devel/SRPMS"
  $products_descr           = "Puppet Labs Products ${ostype} ${::operatingsystemmajrelease} - \$basearch"
  $deps_descr               = "Puppet Labs Dependencies ${ostype} ${::operatingsystemmajrelease} - \$basearch"
  $devel_descr              = "Puppet Labs Devel ${ostype} ${::operatingsystemmajrelease} - \$basearch"
  $products_source_descr    = "Puppet Labs Products ${ostype} ${::operatingsystemmajrelease} - \$basearch - Source"
  $deps_source_descr        = "Puppet Labs Dependencies ${ostype} ${::operatingsystemmajrelease} - \$basearch - Source"
  $devel_source_descr       = "Puppet Labs Devel ${ostype} ${::operatingsystemmajrelease} - \$basearch - Source"

}

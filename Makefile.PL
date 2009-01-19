use 5.008000;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME              => 'Acme::Fatal',
    VERSION_FROM      => 'lib/Acme/Fatal.pm', # finds $VERSION
    PREREQ_PM         => { 'Filter::Util::Call' => 0.0, }, # e.g., Module::Name => 1.1
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM  => 'lib/Acme/Fatal.pm', # retrieve abstract from module
       AUTHOR         => 'Scott Walters <scott@slowass.net>') : ()),
);

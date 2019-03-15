use ExtUtils::MakeMaker;
use strict;
use warnings;

# Call 'perldoc ExtUtils::MakeMaker' for details of how to influence
# the contents of the Makefile that is written.

my %WriteMakefileArgs = (
    NAME             => 'ExtUtils::ModuleMaker::Siffra',
    VERSION_FROM     => 'lib/ExtUtils/ModuleMaker/Siffra.pm',
    ABSTRACT_FROM    => 'lib/ExtUtils/ModuleMaker/Siffra.pm',
    AUTHOR           => 'Luiz Benevenuto (luiz@siffra.com.br)',
    MIN_PERL_VERSION => '5.014',
    LICENSE          => 'perl',
    INSTALLDIRS      => ($] < 5.011 ? 'perl' : 'site'),
    PREREQ_PM => {
        'strict'             => 0,
        'warnings'           => 0,
        'Test::Simple'       => 0.44,
        'Test::More'         => 0,
        'Test::Perl::Critic' => 0,
        'version'            => 0,
        'utf8'               => 0,
        'Log::Any'           => 0,
        'Scalar::Util'       => 0,
        'Data::Dumper'       => 0,
    },
    BUILD_REQUIRES => {
        'Test::More'          => 0,
        'ExtUtils::MakeMaker' => 0,
    },
    (
        eval { ExtUtils::MakeMaker->VERSION(6.46) }
        ? ()
        : (
            META_MERGE => {
                'meta-spec'    => { version => 2 },
                dynamic_config => 1,
                resources      => {
                    homepage   => 'https://siffra.com.br',
                    repository => {
                        url  => 'git@github.com:lbenevenuto/ExtUtils-ModuleMaker-Siffra.git',
                        web  => 'https://github.com/lbenevenuto/ExtUtils-ModuleMaker-Siffra',
                        type => 'git',
                    },
                    bugtracker => {
                        web => 'https://github.com/lbenevenuto/ExtUtils-ModuleMaker-Siffra/issues',
                    },
                },
            }
        )
    ),
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'ExtUtils-ModuleMaker-Siffra-* *.old *.bak' },
);

WriteMakefile(%WriteMakefileArgs);
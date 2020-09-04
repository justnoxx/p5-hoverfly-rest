use 5.006;
use strict;
use warnings FATAL => 'all';
use ExtUtils::MakeMaker;

my %make_params = (
    NAME             => 'Hoverfly::REST',
    AUTHOR           => 'Shamatrin Dmitriy',
    ABSTRACT         => 'Simple Hoverfly REST API integration',
    VERSION_FROM     => 'lib/Hoverfly/REST.pm',
    LICENSE          => 'perl',
    PL_FILES         => {},
    MIN_PERL_VERSION => 5.006,
    CONFIGURE_REQUIRES  => {
        'JSON'           => 0,
        'LWP::UserAgent' => 0,
        'HTTP::Request'  => 0,
    },
    BUILD_REQUIRES => {
        'Test::More'                => 0,
        'ExtUtils::MakeMaker'       => 0,
        'JSON'                      => 0,
        'LWP::UserAgent'            => 0,
        'HTTP::Request'             => 0,
    },
    PREREQ_PM => {
        'ExtUtils::MakeMaker'       => 0,
        'JSON'           => 0,
        'LWP::UserAgent' => 0,
        'HTTP::Request'  => 0,
    },
    TEST_REQUIRES   => {
        'ExtUtils::MakeMaker'       => 0,
        'Test::More'                => 0,
        'JSON'                      => 0,
        'LWP::UserAgent'            => 0,
        'HTTP::Request'             => 0,

    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'Data-Dir-*' },
    "test" => {
        "TESTS" => "t/*.t"
    }
);

# if so, ExtUtils::MakeMaker supports META_MERGE tag
if ($ExtUtils::MakeMaker::VERSION >= 6.46) {
    $make_params{META_MERGE} = {
        "meta-spec" => { version => 2 },
        resources => {
            repository => {
                type    => 'git',
                web     => 'https://github.com/justnoxx/p5-hoverfly-rest',
                url     => 'https://github.com/justnoxx/p5-hoverfly-rest.git',
            },
        },
    };
}

WriteMakefile(%make_params);

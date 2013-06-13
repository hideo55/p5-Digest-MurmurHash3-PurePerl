use strict;
use warnings;
use 5.008008;
use Module::Build::Pluggable qw(CPANfile GithubMeta);

my $builder = Module::Build::Pluggable->new(
    name                => 'Digest-MurmurHash3-PurePerl',
    module_name         => 'Digest::MurmurHash3::PurePerl',
    license             => 'perl',
    dist_author         => 'Hideaki Ohno <hide.o.j55 {at} gmail.com>',
    add_to_cleanup      => [ 'Digest-MurmurHash3-PurePerl-*' ],
    no_index       => { 'directory' => [ 't', 'xt', 'inc', 'eg' ] },
    test_files => ( -d '.git' || $ENV{RELEASE_TESTING} ) ? [qw(t/ xt/)] : ['t/'],
    create_readme  => 1,
    create_license => 1,
    meta_add => {
        keywords  => [qw//],
        resources => { bugtracker => 'https://github.com/hideo55/Digest-MurmurHash3-PurePerl/issues', },
    },
);

$builder->create_build_script();

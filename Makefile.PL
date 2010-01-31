
use strict;
use warnings;



use ExtUtils::MakeMaker 6.11;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'CSS::Selector::Parser',
                       'DISTNAME' => 'CSS-Selector-Parser',
                       'AUTHOR' => 'Hans Dieter Pearcey <hdp@cpan.org>',
                       'ABSTRACT' => 'parse CSS selectors to Perl data structures',
                       'EXE_FILES' => [],
                       'VERSION' => '0.002',
                       'LICENSE' => 'perl',
                       'PREREQ_PM' => {
                                        'Test::More' => '0.88',
                                        'ExtUtils::MakeMaker' => '6.11',
                                        'Sub::Exporter' => '0'
                                      }
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);




# Class tester. Tries to load all module to check their syntax

#########################

use Test::More tests => 23;

# Core modules
eval qq{use Locale::Po4a::Po};           ok(!$@, 'Po.pm loadable');
diag($@) if $@;
eval qq{use Locale::Po4a::TransTractor}; ok(!$@, 'TransTractor.pm loadable');
diag($@) if $@;
eval qq{use Locale::Po4a::Chooser};      ok(!$@, 'Chooser.pm loadable');
diag($@) if $@;
eval qq{use Locale::Po4a::Common};       ok(!$@, 'Common.pm loadable');
diag($@) if $@;

# File format modules
eval qq{use Locale::Po4a::AsciiDoc};     ok(!$@, 'AsciiDoc.pm loadable');
diag($@) if $@;
eval qq{use Locale::Po4a::BibTeX};       ok(!$@, 'BibTeX.pm loadable');
diag($@) if $@;
#eval qq{use Locale::Po4a::Debconf};      ok(!$@, 'Debconf.pm loadable');
#diag($@) if $@;
eval qq{use Locale::Po4a::Dia};          ok(!$@, 'Dia.pm loadable');
diag($@) if $@;
eval qq{use Locale::Po4a::Docbook};      ok(!$@, 'Docbook.pm loadable');
diag($@) if $@;
eval qq{use Locale::Po4a::Guide};        ok(!$@, 'Guide.pm loadable');
diag($@) if $@;
eval qq{use Locale::Po4a::Halibut};      ok(!$@, 'Halibut.pm loadable');
diag($@) if $@;
#eval qq{use Locale::Po4a::Html};         ok(!$@, 'Html.pm loadable');
#diag($@) if $@;
eval qq{use Locale::Po4a::Ini};          ok(!$@, 'Ini.pm loadable');
diag($@) if $@;
eval qq{use Locale::Po4a::KernelHelp};   ok(!$@, 'KernelHelp.pm loadable');
diag($@) if $@;
eval qq{use Locale::Po4a::LaTeX};        ok(!$@, 'LaTeX.pm loadable');
diag($@) if $@;
eval qq{use Locale::Po4a::Man};          ok(!$@, 'Man.pm loadable');
diag($@) if $@;
#eval qq{use Locale::Po4a::NewsDebian};   ok(!$@, 'NewsDebian.pm loadable');
#diag($@) if $@;
eval qq{use Locale::Po4a::Pod};          ok(!$@, 'Pod.pm loadable');
diag($@) if $@;
SKIP: {
    skip "SGMLS required for this test", 1
        unless eval 'require SGMLS';
    eval qq{use Locale::Po4a::Sgml};         ok(!$@, 'Sgml.pm loadable');
    diag($@) if $@;
}
eval qq{use Locale::Po4a::RubyDoc};      ok(!$@, 'RubyDoc.pm loadable');
diag($@) if $@;
eval qq{use Locale::Po4a::Texinfo};      ok(!$@, 'Texinfo.pm loadable');
diag($@) if $@;
eval qq{use Locale::Po4a::TeX};          ok(!$@, 'TeX.pm loadable');
diag($@) if $@;
eval qq{use Locale::Po4a::Text};         ok(!$@, 'Text.pm loadable');
diag($@) if $@;
eval qq{use Locale::Po4a::Wml};          ok(!$@, 'Wml.pm loadable');
diag($@) if $@;
eval qq{use Locale::Po4a::Xhtml};        ok(!$@, 'Xthml.pm loadable');
diag($@) if $@;
eval qq{use Locale::Po4a::Xml};          ok(!$@, 'Xml.pm loadable');
diag($@) if $@;

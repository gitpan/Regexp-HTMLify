# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl t/test.t'

#########################

use Test;
BEGIN { plan tests => 4, todo => [] };
use Regexp::HTMLify;
1 && ok(1); # If we made it this far, we're ok.

#########################

# Insert your test code below, the Test module is use()ed here so read
# its man page ( perldoc Test ) for help writing this test script.

2 && ok(HTMLifyGetColormapCSS() ne '');
3 && ok(HTMLifyRE(qr((.))) eq q[(?-xism:<span class="cDef0">(<span class="cDef14" >.</span>)</span>)]);

$_ = 'test';
$_ =~ m#(test)#;
ok(HTMLifyREmatches($_) eq q[<span class="cDef14" >test</span>]);

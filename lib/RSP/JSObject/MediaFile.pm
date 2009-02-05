package RSP::JSObject::MediaFile;

use strict;
use warnings;

use base 'RSP::JSObject';

sub new {
  my $class = shift;
  my $mog   = shift;
  my $tx    = shift;
  my $name  = shift;
  my $paths = shift;
  my $self  = { mog => $mog, tx => $tx, paths => $paths, name => $name };
  bless $self, $class;
}

sub jsclass {
  return 'MediaFile';
}

sub properties {
  my $class = shift;
  return {
	  filename => {
		       'getter' => $class . '::filename', #. 'RSP::JSObject::MediaFile::filename',
		      },
	  mimetype => {
		       'getter' => $class . '::mimetype', #'RSP::JSObject::MediaFile::mimetype'
		      },
	  size     => {
		       'getter' => $class . '::size', # 'RSP::JSObject::MediaFile::size',
		      },
	  length   => {
		       'getter' => $class . '::size', # 'RSP::JSObject::MediaFile::size',
		      },
	  digest   => {
		       'getter' => $class . '::md5', # 'RSP::JSObject::MediaFile::md5',
		      },
	 };
}

sub methods {
  my $class = shift;
  return {
	  'remove' => $class . '::remove', #'RSP::JSObject::MediaFile::remove'
	 };
}

sub clearcache {
  die "clearcache must be implemented in the subclass";
}

1;

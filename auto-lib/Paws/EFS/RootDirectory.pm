package Paws::EFS::RootDirectory;
  use Moose;
  has CreationInfo => (is => 'ro', isa => 'Paws::EFS::CreationInfo');
  has Path => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EFS::RootDirectory

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EFS::RootDirectory object:

  $service_obj->Method(Att1 => { CreationInfo => $value, ..., Path => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EFS::RootDirectory object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationInfo

=head1 DESCRIPTION

Specifies the directory on the Amazon EFS file system that the access
point provides access to. The access point exposes the specified file
system path as the root directory of your file system to applications
using the access point. NFS clients using the access point can only
access data in the access point's C<RootDirectory> and it's
subdirectories.

=head1 ATTRIBUTES


=head2 CreationInfo => L<Paws::EFS::CreationInfo>

  (Optional) Specifies the POSIX IDs and permissions to apply to the
access point's C<RootDirectory>. If the C<RootDirectory> E<gt> C<Path>
specified does not exist, EFS creates the root directory using the
C<CreationInfo> settings when a client connects to an access point.
When specifying the C<CreationInfo>, you must provide values for all
properties.

If you do not provide C<CreationInfo> and the specified
C<RootDirectory> E<gt> C<Path> does not exist, attempts to mount the
file system using the access point will fail.


=head2 Path => Str

  Specifies the path on the EFS file system to expose as the root
directory to NFS clients using the access point to access the EFS file
system. A path can have up to four subdirectories. If the specified
path does not exist, you are required to provide the C<CreationInfo>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EFS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


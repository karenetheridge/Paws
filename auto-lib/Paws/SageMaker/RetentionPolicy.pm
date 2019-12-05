package Paws::SageMaker::RetentionPolicy;
  use Moose;
  has HomeEfsFileSystem => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::RetentionPolicy

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::RetentionPolicy object:

  $service_obj->Method(Att1 => { HomeEfsFileSystem => $value, ..., HomeEfsFileSystem => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::RetentionPolicy object:

  $result = $service_obj->Method(...);
  $result->Att1->HomeEfsFileSystem

=head1 DESCRIPTION

The retention policy.

=head1 ATTRIBUTES


=head2 HomeEfsFileSystem => Str

  The home Amazon Elastic File System (EFS).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


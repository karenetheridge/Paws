package Paws::Glue::TransformParameters;
  use Moose;
  has FindMatchesParameters => (is => 'ro', isa => 'Paws::Glue::FindMatchesParameters');
  has TransformType => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::TransformParameters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::TransformParameters object:

  $service_obj->Method(Att1 => { FindMatchesParameters => $value, ..., TransformType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::TransformParameters object:

  $result = $service_obj->Method(...);
  $result->Att1->FindMatchesParameters

=head1 DESCRIPTION

The algorithm-specific parameters that are associated with the machine
learning transform.

=head1 ATTRIBUTES


=head2 FindMatchesParameters => L<Paws::Glue::FindMatchesParameters>

  The parameters for the find matches algorithm.


=head2 B<REQUIRED> TransformType => Str

  The type of machine learning transform.

For information about the types of machine learning transforms, see
Creating Machine Learning Transforms
(http://docs.aws.amazon.com/glue/latest/dg/add-job-machine-learning-transform.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

package Paws::Glue::ConfusionMatrix;
  use Moose;
  has NumFalseNegatives => (is => 'ro', isa => 'Int');
  has NumFalsePositives => (is => 'ro', isa => 'Int');
  has NumTrueNegatives => (is => 'ro', isa => 'Int');
  has NumTruePositives => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::ConfusionMatrix

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::ConfusionMatrix object:

  $service_obj->Method(Att1 => { NumFalseNegatives => $value, ..., NumTruePositives => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::ConfusionMatrix object:

  $result = $service_obj->Method(...);
  $result->Att1->NumFalseNegatives

=head1 DESCRIPTION

The confusion matrix shows you what your transform is predicting
accurately and what types of errors it is making.

For more information, see Confusion matrix
(https://en.wikipedia.org/wiki/Confusion_matrix) in Wikipedia.

=head1 ATTRIBUTES


=head2 NumFalseNegatives => Int

  The number of matches in the data that the transform didn't find, in
the confusion matrix for your transform.


=head2 NumFalsePositives => Int

  The number of nonmatches in the data that the transform incorrectly
classified as a match, in the confusion matrix for your transform.


=head2 NumTrueNegatives => Int

  The number of nonmatches in the data that the transform correctly
rejected, in the confusion matrix for your transform.


=head2 NumTruePositives => Int

  The number of matches in the data that the transform correctly found,
in the confusion matrix for your transform.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

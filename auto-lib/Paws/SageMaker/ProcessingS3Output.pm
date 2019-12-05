package Paws::SageMaker::ProcessingS3Output;
  use Moose;
  has LocalPath => (is => 'ro', isa => 'Str', required => 1);
  has S3UploadMode => (is => 'ro', isa => 'Str', required => 1);
  has S3Uri => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ProcessingS3Output

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::ProcessingS3Output object:

  $service_obj->Method(Att1 => { LocalPath => $value, ..., S3Uri => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::ProcessingS3Output object:

  $result = $service_obj->Method(...);
  $result->Att1->LocalPath

=head1 DESCRIPTION

Information about where and how you want to store the results of an
processing job.

=head1 ATTRIBUTES


=head2 B<REQUIRED> LocalPath => Str

  The local path to the Amazon S3 bucket where you want Amazon SageMaker
to save the results of an processing job. C<LocalPath> is an absolute
path to the input data.


=head2 B<REQUIRED> S3UploadMode => Str

  Whether to upload the results of the processing job continuously or
after the job completes.


=head2 B<REQUIRED> S3Uri => Str

  A URI that identifies the Amazon S3 bucket where you want Amazon
SageMaker to save the results of a processing job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


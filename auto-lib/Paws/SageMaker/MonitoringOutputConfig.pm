package Paws::SageMaker::MonitoringOutputConfig;
  use Moose;
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has MonitoringOutputs => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::MonitoringOutput]', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::MonitoringOutputConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::MonitoringOutputConfig object:

  $service_obj->Method(Att1 => { KmsKeyId => $value, ..., MonitoringOutputs => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::MonitoringOutputConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->KmsKeyId

=head1 DESCRIPTION

The output configuration for monitoring jobs.

=head1 ATTRIBUTES


=head2 KmsKeyId => Str

  The AWS Key Management Service (AWS KMS) key that Amazon SageMaker uses
to encrypt the model artifacts at rest using Amazon S3 server-side
encryption.


=head2 B<REQUIRED> MonitoringOutputs => ArrayRef[L<Paws::SageMaker::MonitoringOutput>]

  Monitoring outputs for monitoring jobs. This is where the output of the
periodic monitoring jobs is uploaded.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


package Paws::SageMaker::HumanLoopActivationConditionsConfig;
  use Moose;
  has HumanLoopActivationConditions => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::HumanLoopActivationConditionsConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::HumanLoopActivationConditionsConfig object:

  $service_obj->Method(Att1 => { HumanLoopActivationConditions => $value, ..., HumanLoopActivationConditions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::HumanLoopActivationConditionsConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->HumanLoopActivationConditions

=head1 DESCRIPTION

Defines under what conditions SageMaker creates a human loop.

=head1 ATTRIBUTES


=head2 B<REQUIRED> HumanLoopActivationConditions => Str

  JSON expressing use-case specific conditions declaratively. If any
condition is matched, atomic tasks are created against the configured
work team. The set of conditions is different for Rekognition and
Textract.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


package Paws::SageMaker::TrialComponentParameterValue;
  use Moose;
  has NumberValue => (is => 'ro', isa => 'Num');
  has StringValue => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::TrialComponentParameterValue

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::TrialComponentParameterValue object:

  $service_obj->Method(Att1 => { NumberValue => $value, ..., StringValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::TrialComponentParameterValue object:

  $result = $service_obj->Method(...);
  $result->Att1->NumberValue

=head1 DESCRIPTION

The value of a hyperparameter. Only one of C<NumberValue> or
C<StringValue> can be specified.

This object is specified in the CreateTrialComponent request.

=head1 ATTRIBUTES


=head2 NumberValue => Num

  The numeric value of a numeric hyperparameter. If you specify a value
for this parameter, you can't specify the C<StringValue> parameter.


=head2 StringValue => Str

  The string value of a categorical hyperparameter. If you specify a
value for this parameter, you can't specify the C<NumberValue>
parameter.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::CloudWatchEvents::PutTargets;
  use Moose;
  has Rule => (is => 'ro', isa => 'Str', required => 1);
  has Targets => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchEvents::Target]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutTargets');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchEvents::PutTargetsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::PutTargets - Arguments for method PutTargets on Paws::CloudWatchEvents

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutTargets on the 
Amazon CloudWatch Events service. Use the attributes of this class
as arguments to method PutTargets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutTargets.

As an example:

  $service_obj->PutTargets(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Rule => Str

The name of the rule.



=head2 B<REQUIRED> Targets => ArrayRef[L<Paws::CloudWatchEvents::Target>]

The targets to update or add to the rule.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutTargets in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut


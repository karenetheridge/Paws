
package Paws::EC2::CreateVpcEndpointServiceConfiguration;
  use Moose;
  has AcceptanceRequired => (is => 'ro', isa => 'Bool');
  has ClientToken => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has NetworkLoadBalancerArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'NetworkLoadBalancerArn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVpcEndpointServiceConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CreateVpcEndpointServiceConfigurationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateVpcEndpointServiceConfiguration - Arguments for method CreateVpcEndpointServiceConfiguration on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateVpcEndpointServiceConfiguration on the 
Amazon Elastic Compute Cloud service. Use the attributes of this class
as arguments to method CreateVpcEndpointServiceConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateVpcEndpointServiceConfiguration.

As an example:

  $service_obj->CreateVpcEndpointServiceConfiguration(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AcceptanceRequired => Bool

Indicate whether requests from service consumers to create an endpoint
to your service must be accepted. To accept a request, use
AcceptVpcEndpointConnections.



=head2 ClientToken => Str

Unique, case-sensitive identifier you provide to ensure the idempotency
of the request. For more information, see How to Ensure Idempotency
(http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html).



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> NetworkLoadBalancerArns => ArrayRef[Str|Undef]

The Amazon Resource Names (ARNs) of one or more Network Load Balancers
for your service.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateVpcEndpointServiceConfiguration in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

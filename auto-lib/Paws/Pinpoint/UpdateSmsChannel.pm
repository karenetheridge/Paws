
package Paws::Pinpoint::UpdateSmsChannel;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'application-id' , required => 1);
  has SMSChannelRequest => (is => 'ro', isa => 'Paws::Pinpoint::SMSChannelRequest', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'SMSChannelRequest');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSmsChannel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apps/{application-id}/channels/sms');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pinpoint::UpdateSmsChannelResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::UpdateSmsChannel - Arguments for method UpdateSmsChannel on Paws::Pinpoint

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSmsChannel on the 
Amazon Pinpoint service. Use the attributes of this class
as arguments to method UpdateSmsChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSmsChannel.

As an example:

  $service_obj->UpdateSmsChannel(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str





=head2 B<REQUIRED> SMSChannelRequest => L<Paws::Pinpoint::SMSChannelRequest>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSmsChannel in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut


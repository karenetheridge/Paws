
package Paws::ACMPCA::ListTags;
  use Moose;
  has CertificateAuthorityArn => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTags');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ACMPCA::ListTagsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ACMPCA::ListTags - Arguments for method ListTags on L<Paws::ACMPCA>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTags on the 
L<AWS Certificate Manager Private Certificate Authority|Paws::ACMPCA> service. Use the attributes of this class
as arguments to method ListTags.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTags.

As an example:

  $service_obj->ListTags(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateAuthorityArn => Str

The Amazon Resource Name (ARN) that was returned when you called the
CreateCertificateAuthority function. This must be of the form:

C<arn:aws:acm:I<region>:I<account>:certificate-authority/I<12345678-1234-1234-1234-123456789012>>



=head2 MaxResults => Int

Use this parameter when paginating results to specify the maximum
number of items to return in the response. If additional items exist
beyond the number you specify, the B<NextToken> element is sent in the
response. Use this B<NextToken> value in a subsequent request to
retrieve additional items.



=head2 NextToken => Str

Use this parameter when paginating results in a subsequent request
after you receive a response with truncated results. Set it to the
value of B<NextToken> from the response you just received.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTags in L<Paws::ACMPCA>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

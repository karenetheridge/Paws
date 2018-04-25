
package Paws::ACMPCA::DescribeCertificateAuthorityAuditReport;
  use Moose;
  has AuditReportId => (is => 'ro', isa => 'Str', required => 1);
  has CertificateAuthorityArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCertificateAuthorityAuditReport');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ACMPCA::DescribeCertificateAuthorityAuditReportResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ACMPCA::DescribeCertificateAuthorityAuditReport - Arguments for method DescribeCertificateAuthorityAuditReport on L<Paws::ACMPCA>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeCertificateAuthorityAuditReport on the 
L<AWS Certificate Manager Private Certificate Authority|Paws::ACMPCA> service. Use the attributes of this class
as arguments to method DescribeCertificateAuthorityAuditReport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeCertificateAuthorityAuditReport.

As an example:

  $service_obj->DescribeCertificateAuthorityAuditReport(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AuditReportId => Str

The report ID returned by calling the
CreateCertificateAuthorityAuditReport function.



=head2 B<REQUIRED> CertificateAuthorityArn => Str

The Amazon Resource Name (ARN) of the private CA. This must be of the
form:

C<arn:aws:acm:I<region>:I<account>:certificate-authority/I<12345678-1234-1234-1234-123456789012>
>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeCertificateAuthorityAuditReport in L<Paws::ACMPCA>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

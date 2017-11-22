
package Paws::Rekognition::DetectText;
  use Moose;
  has Image => (is => 'ro', isa => 'Paws::Rekognition::Image', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DetectText');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::DetectTextResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::DetectText - Arguments for method DetectText on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DetectText on the 
Amazon Rekognition service. Use the attributes of this class
as arguments to method DetectText.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DetectText.

As an example:

  $service_obj->DetectText(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Image => L<Paws::Rekognition::Image>

The input image as base64-encoded bytes or an Amazon S3 object. If you
use the AWS CLI to call Amazon Rekognition operations, you can't pass
image bytes.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DetectText in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


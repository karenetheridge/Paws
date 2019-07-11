package Paws::KinesisAnalyticsV2::ApplicationCodeConfigurationDescription;
  use Moose;
  has CodeContentDescription => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::CodeContentDescription');
  has CodeContentType => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::ApplicationCodeConfigurationDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalyticsV2::ApplicationCodeConfigurationDescription object:

  $service_obj->Method(Att1 => { CodeContentDescription => $value, ..., CodeContentType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalyticsV2::ApplicationCodeConfigurationDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->CodeContentDescription

=head1 DESCRIPTION

Describes code configuration for a Java-based Kinesis Data Analytics
application.

=head1 ATTRIBUTES


=head2 CodeContentDescription => L<Paws::KinesisAnalyticsV2::CodeContentDescription>

  Describes details about the location and format of the application
code.


=head2 B<REQUIRED> CodeContentType => Str

  Specifies whether the code content is in text or zip format.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

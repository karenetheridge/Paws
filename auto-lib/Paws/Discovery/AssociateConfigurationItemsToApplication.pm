
package Paws::Discovery::AssociateConfigurationItemsToApplication;
  use Moose;
  has ApplicationConfigurationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationConfigurationId' , required => 1);
  has ConfigurationIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'configurationIds' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateConfigurationItemsToApplication');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Discovery::AssociateConfigurationItemsToApplicationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::AssociateConfigurationItemsToApplication - Arguments for method AssociateConfigurationItemsToApplication on Paws::Discovery

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateConfigurationItemsToApplication on the 
AWS Application Discovery Service service. Use the attributes of this class
as arguments to method AssociateConfigurationItemsToApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateConfigurationItemsToApplication.

As an example:

  $service_obj->AssociateConfigurationItemsToApplication(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationConfigurationId => Str

The configuration ID of an application with which items are to be
associated.



=head2 B<REQUIRED> ConfigurationIds => ArrayRef[Str|Undef]

The ID of each configuration item to be associated with an application.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateConfigurationItemsToApplication in L<Paws::Discovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut


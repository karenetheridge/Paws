
package Paws::CodeStar::ListResources;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has ProjectId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListResources');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeStar::ListResourcesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStar::ListResources - Arguments for method ListResources on Paws::CodeStar

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListResources on the 
AWS CodeStar service. Use the attributes of this class
as arguments to method ListResources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListResources.

As an example:

  $service_obj->ListResources(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 MaxResults => Int

he maximum amount of data that can be contained in a single set of
results.



=head2 NextToken => Str

The continuation token for the next set of results, if the results
cannot be returned in one response.



=head2 B<REQUIRED> ProjectId => Str

The ID of the project.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListResources in L<Paws::CodeStar>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut


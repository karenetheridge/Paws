
package Paws::Organizations::ListOrganizationalUnitsForParent;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ParentId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListOrganizationalUnitsForParent');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Organizations::ListOrganizationalUnitsForParentResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::ListOrganizationalUnitsForParent - Arguments for method ListOrganizationalUnitsForParent on Paws::Organizations

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListOrganizationalUnitsForParent on the 
AWS Organizations service. Use the attributes of this class
as arguments to method ListOrganizationalUnitsForParent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListOrganizationalUnitsForParent.

As an example:

  $service_obj->ListOrganizationalUnitsForParent(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 MaxResults => Int

(Optional) Use this to limit the number of results you want included in
the response. If you do not include this parameter, it defaults to a
value that is specific to the operation. If additional items exist
beyond the maximum you specify, the C<NextToken> response element is
present and has a value (is not null). Include that value as the
C<NextToken> request parameter in the next call to the operation to get
the next part of the results. Note that Organizations might return
fewer results than the maximum even when there are more results
available. You should check C<NextToken> after every operation to
ensure that you receive all of the results.



=head2 NextToken => Str

Use this parameter if you receive a C<NextToken> response in a previous
request that indicates that there is more output available. Set it to
the value of the previous call's C<NextToken> response to indicate
where the output should continue from.



=head2 B<REQUIRED> ParentId => Str

The unique identifier (ID) of the root or OU whose child OUs you want
to list.

The regex pattern for a parent ID string requires one of the following:

=over

=item *

Root: a string that begins with "r-" followed by from 4 to 32
lower-case letters or digits.

=item *

Organizational unit (OU): a string that begins with "ou-" followed by
from 4 to 32 lower-case letters or digits (the ID of the root that the
OU is in) followed by a second "-" dash and from 8 to 32 additional
lower-case letters or digits.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListOrganizationalUnitsForParent in L<Paws::Organizations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut


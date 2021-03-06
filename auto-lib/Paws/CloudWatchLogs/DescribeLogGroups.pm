
package Paws::CloudWatchLogs::DescribeLogGroups;
  use Moose;
  has Limit => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'limit' );
  has LogGroupNamePrefix => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logGroupNamePrefix' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLogGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchLogs::DescribeLogGroupsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::DescribeLogGroups - Arguments for method DescribeLogGroups on Paws::CloudWatchLogs

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeLogGroups on the 
Amazon CloudWatch Logs service. Use the attributes of this class
as arguments to method DescribeLogGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeLogGroups.

As an example:

  $service_obj->DescribeLogGroups(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Limit => Int

The maximum number of items returned. If you don't specify a value, the
default is up to 50 items.



=head2 LogGroupNamePrefix => Str

The prefix to match.



=head2 NextToken => Str

The token for the next set of items to return. (You received this token
from a previous call.)




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeLogGroups in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut


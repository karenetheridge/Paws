
package Paws::CodeGuruProfiler::DeleteProfilingGroup;
  use Moose;
  has ProfilingGroupName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'profilingGroupName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteProfilingGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/profilingGroups/{profilingGroupName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeGuruProfiler::DeleteProfilingGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruProfiler::DeleteProfilingGroup - Arguments for method DeleteProfilingGroup on L<Paws::CodeGuruProfiler>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteProfilingGroup on the
L<Amazon CodeGuru Profiler|Paws::CodeGuruProfiler> service. Use the attributes of this class
as arguments to method DeleteProfilingGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteProfilingGroup.

=head1 SYNOPSIS

    my $codeguru-profiler = Paws->service('CodeGuruProfiler');
    my $DeleteProfilingGroupResponse =
      $codeguru -profiler->DeleteProfilingGroup(
      ProfilingGroupName => 'MyProfilingGroupName',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeguru-profiler/DeleteProfilingGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProfilingGroupName => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteProfilingGroup in L<Paws::CodeGuruProfiler>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


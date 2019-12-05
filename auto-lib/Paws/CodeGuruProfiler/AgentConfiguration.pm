package Paws::CodeGuruProfiler::AgentConfiguration;
  use Moose;
  has PeriodInSeconds => (is => 'ro', isa => 'Int', request_name => 'periodInSeconds', traits => ['NameInRequest'], required => 1);
  has ShouldProfile => (is => 'ro', isa => 'Bool', request_name => 'shouldProfile', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruProfiler::AgentConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeGuruProfiler::AgentConfiguration object:

  $service_obj->Method(Att1 => { PeriodInSeconds => $value, ..., ShouldProfile => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeGuruProfiler::AgentConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->PeriodInSeconds

=head1 DESCRIPTION

The configuration for the agent to use.

=head1 ATTRIBUTES


=head2 B<REQUIRED> PeriodInSeconds => Int

  Specifies the period to follow the configuration (to profile or not)
and call back to get a new configuration.


=head2 B<REQUIRED> ShouldProfile => Bool

  Specifies if the profiling should be enabled by the agent.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeGuruProfiler>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


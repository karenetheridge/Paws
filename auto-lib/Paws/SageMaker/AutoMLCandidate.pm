package Paws::SageMaker::AutoMLCandidate;
  use Moose;
  has CandidateName => (is => 'ro', isa => 'Str', required => 1);
  has CandidateStatus => (is => 'ro', isa => 'Str', required => 1);
  has CandidateSteps => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::AutoMLCandidateStep]', required => 1);
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has EndTime => (is => 'ro', isa => 'Str');
  has FailureReason => (is => 'ro', isa => 'Str');
  has FinalAutoMLJobObjectiveMetric => (is => 'ro', isa => 'Paws::SageMaker::FinalAutoMLJobObjectiveMetric');
  has InferenceContainers => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::AutoMLContainerDefinition]');
  has LastModifiedTime => (is => 'ro', isa => 'Str', required => 1);
  has ObjectiveStatus => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::AutoMLCandidate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::AutoMLCandidate object:

  $service_obj->Method(Att1 => { CandidateName => $value, ..., ObjectiveStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::AutoMLCandidate object:

  $result = $service_obj->Method(...);
  $result->Att1->CandidateName

=head1 DESCRIPTION

An AutoPilot job will return recommendations, or candidates. Each
candidate has futher details about the steps involed, and the status.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CandidateName => Str

  The candidate name.


=head2 B<REQUIRED> CandidateStatus => Str

  The candidate's status.


=head2 B<REQUIRED> CandidateSteps => ArrayRef[L<Paws::SageMaker::AutoMLCandidateStep>]

  The candidate's steps.


=head2 B<REQUIRED> CreationTime => Str

  The creation time.


=head2 EndTime => Str

  The end time.


=head2 FailureReason => Str

  The failure reason.


=head2 FinalAutoMLJobObjectiveMetric => L<Paws::SageMaker::FinalAutoMLJobObjectiveMetric>

  


=head2 InferenceContainers => ArrayRef[L<Paws::SageMaker::AutoMLContainerDefinition>]

  The inference containers.


=head2 B<REQUIRED> LastModifiedTime => Str

  The last modified time.


=head2 B<REQUIRED> ObjectiveStatus => Str

  The objective status.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


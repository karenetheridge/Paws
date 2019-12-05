package Paws::SageMaker::AutoMLCandidateStep;
  use Moose;
  has CandidateStepArn => (is => 'ro', isa => 'Str', required => 1);
  has CandidateStepName => (is => 'ro', isa => 'Str', required => 1);
  has CandidateStepType => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::AutoMLCandidateStep

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::AutoMLCandidateStep object:

  $service_obj->Method(Att1 => { CandidateStepArn => $value, ..., CandidateStepType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::AutoMLCandidateStep object:

  $result = $service_obj->Method(...);
  $result->Att1->CandidateStepArn

=head1 DESCRIPTION

Information about the steps for a Candidate, and what step it is
working on.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CandidateStepArn => Str

  The ARN for the Candidate's step.


=head2 B<REQUIRED> CandidateStepName => Str

  The name for the Candidate's step.


=head2 B<REQUIRED> CandidateStepType => Str

  Whether the Candidate is at the transform, training, or processing
step.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


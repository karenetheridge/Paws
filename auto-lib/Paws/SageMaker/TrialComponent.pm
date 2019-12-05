package Paws::SageMaker::TrialComponent;
  use Moose;
  has CreatedBy => (is => 'ro', isa => 'Paws::SageMaker::UserContext');
  has CreationTime => (is => 'ro', isa => 'Str');
  has DisplayName => (is => 'ro', isa => 'Str');
  has EndTime => (is => 'ro', isa => 'Str');
  has InputArtifacts => (is => 'ro', isa => 'Paws::SageMaker::TrialComponentArtifacts');
  has LastModifiedBy => (is => 'ro', isa => 'Paws::SageMaker::UserContext');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has Metrics => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::TrialComponentMetricSummary]');
  has OutputArtifacts => (is => 'ro', isa => 'Paws::SageMaker::TrialComponentArtifacts');
  has Parameters => (is => 'ro', isa => 'Paws::SageMaker::TrialComponentParameters');
  has Parents => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Parent]');
  has Source => (is => 'ro', isa => 'Paws::SageMaker::TrialComponentSource');
  has SourceDetail => (is => 'ro', isa => 'Paws::SageMaker::TrialComponentSourceDetail');
  has StartTime => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Paws::SageMaker::TrialComponentStatus');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');
  has TrialComponentArn => (is => 'ro', isa => 'Str');
  has TrialComponentName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::TrialComponent

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::TrialComponent object:

  $service_obj->Method(Att1 => { CreatedBy => $value, ..., TrialComponentName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::TrialComponent object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedBy

=head1 DESCRIPTION

A summary of the properties of a trial component as returned by the
Search API.

=head1 ATTRIBUTES


=head2 CreatedBy => L<Paws::SageMaker::UserContext>

  


=head2 CreationTime => Str

  When the component was created.


=head2 DisplayName => Str

  The name of the component as displayed. If C<DisplayName> isn't
specified, C<TrialComponentName> is displayed.


=head2 EndTime => Str

  When the component ended.


=head2 InputArtifacts => L<Paws::SageMaker::TrialComponentArtifacts>

  The input artifacts of the component.


=head2 LastModifiedBy => L<Paws::SageMaker::UserContext>

  


=head2 LastModifiedTime => Str

  When the component was last modified.


=head2 Metrics => ArrayRef[L<Paws::SageMaker::TrialComponentMetricSummary>]

  The metrics for the component.


=head2 OutputArtifacts => L<Paws::SageMaker::TrialComponentArtifacts>

  The output artifacts of the component.


=head2 Parameters => L<Paws::SageMaker::TrialComponentParameters>

  The hyperparameters of the component.


=head2 Parents => ArrayRef[L<Paws::SageMaker::Parent>]

  An array of the parents of the component. A parent is a trial the
component is associated with and the experiment the trial is part of. A
component might not have any parents.


=head2 Source => L<Paws::SageMaker::TrialComponentSource>

  


=head2 SourceDetail => L<Paws::SageMaker::TrialComponentSourceDetail>

  The source of the trial component.E<gt>


=head2 StartTime => Str

  When the component started.


=head2 Status => L<Paws::SageMaker::TrialComponentStatus>

  


=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

  The list of tags that are associated with the component. You can use
Search API to search on the tags.


=head2 TrialComponentArn => Str

  The Amazon Resource Name (ARN) of the trial component.


=head2 TrialComponentName => Str

  The name of the trial component.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


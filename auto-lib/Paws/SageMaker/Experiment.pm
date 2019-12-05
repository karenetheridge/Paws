package Paws::SageMaker::Experiment;
  use Moose;
  has CreatedBy => (is => 'ro', isa => 'Paws::SageMaker::UserContext');
  has CreationTime => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DisplayName => (is => 'ro', isa => 'Str');
  has ExperimentArn => (is => 'ro', isa => 'Str');
  has ExperimentName => (is => 'ro', isa => 'Str');
  has LastModifiedBy => (is => 'ro', isa => 'Paws::SageMaker::UserContext');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has Source => (is => 'ro', isa => 'Paws::SageMaker::ExperimentSource');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::Experiment

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::Experiment object:

  $service_obj->Method(Att1 => { CreatedBy => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::Experiment object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedBy

=head1 DESCRIPTION

A summary of the properties of an experiment as returned by the Search
API.

=head1 ATTRIBUTES


=head2 CreatedBy => L<Paws::SageMaker::UserContext>

  


=head2 CreationTime => Str

  When the experiment was created.


=head2 Description => Str

  The description of the experiment.


=head2 DisplayName => Str

  The name of the experiment as displayed. If C<DisplayName> isn't
specified, C<ExperimentName> is displayed.


=head2 ExperimentArn => Str

  The Amazon Resource Name (ARN) of the experiment.


=head2 ExperimentName => Str

  The name of the experiment.


=head2 LastModifiedBy => L<Paws::SageMaker::UserContext>

  


=head2 LastModifiedTime => Str

  When the experiment was last modified.


=head2 Source => L<Paws::SageMaker::ExperimentSource>

  


=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

  The list of tags that are associated with the experiment. You can use
Search API to search on the tags.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


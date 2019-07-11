package Paws::Personalize::AutoMLConfig;
  use Moose;
  has MetricName => (is => 'ro', isa => 'Str', request_name => 'metricName', traits => ['NameInRequest']);
  has RecipeList => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'recipeList', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::AutoMLConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Personalize::AutoMLConfig object:

  $service_obj->Method(Att1 => { MetricName => $value, ..., RecipeList => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Personalize::AutoMLConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->MetricName

=head1 DESCRIPTION

When the solution performs AutoML (C<performAutoML> is true in
CreateSolution), Amazon Personalize determines which recipe, from the
specified list, optimizes the given metric. Amazon Personalize then
uses that recipe for the solution.

=head1 ATTRIBUTES


=head2 MetricName => Str

  The metric to optimize.


=head2 RecipeList => ArrayRef[Str|Undef]

  The list of candidate recipes.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

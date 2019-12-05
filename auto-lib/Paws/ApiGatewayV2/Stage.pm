package Paws::ApiGatewayV2::Stage;
  use Moose;
  has AccessLogSettings => (is => 'ro', isa => 'Paws::ApiGatewayV2::AccessLogSettings', request_name => 'accessLogSettings', traits => ['NameInRequest']);
  has ApiGatewayManaged => (is => 'ro', isa => 'Bool', request_name => 'apiGatewayManaged', traits => ['NameInRequest']);
  has AutoDeploy => (is => 'ro', isa => 'Bool', request_name => 'autoDeploy', traits => ['NameInRequest']);
  has ClientCertificateId => (is => 'ro', isa => 'Str', request_name => 'clientCertificateId', traits => ['NameInRequest']);
  has CreatedDate => (is => 'ro', isa => 'Str', request_name => 'createdDate', traits => ['NameInRequest']);
  has DefaultRouteSettings => (is => 'ro', isa => 'Paws::ApiGatewayV2::RouteSettings', request_name => 'defaultRouteSettings', traits => ['NameInRequest']);
  has DeploymentId => (is => 'ro', isa => 'Str', request_name => 'deploymentId', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has LastDeploymentStatusMessage => (is => 'ro', isa => 'Str', request_name => 'lastDeploymentStatusMessage', traits => ['NameInRequest']);
  has LastUpdatedDate => (is => 'ro', isa => 'Str', request_name => 'lastUpdatedDate', traits => ['NameInRequest']);
  has RouteSettings => (is => 'ro', isa => 'Paws::ApiGatewayV2::RouteSettingsMap', request_name => 'routeSettings', traits => ['NameInRequest']);
  has StageName => (is => 'ro', isa => 'Str', request_name => 'stageName', traits => ['NameInRequest'], required => 1);
  has StageVariables => (is => 'ro', isa => 'Paws::ApiGatewayV2::StageVariablesMap', request_name => 'stageVariables', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'Paws::ApiGatewayV2::Tags', request_name => 'tags', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::Stage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApiGatewayV2::Stage object:

  $service_obj->Method(Att1 => { AccessLogSettings => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApiGatewayV2::Stage object:

  $result = $service_obj->Method(...);
  $result->Att1->AccessLogSettings

=head1 DESCRIPTION

Represents an API stage.

=head1 ATTRIBUTES


=head2 AccessLogSettings => L<Paws::ApiGatewayV2::AccessLogSettings>

  Settings for logging access in this stage.


=head2 ApiGatewayManaged => Bool

  Specifies whether a stage is managed by API Gateway. If you created an
API using quick create, the $default stage is managed by API Gateway.
You can't modify the $default stage.


=head2 AutoDeploy => Bool

  Specifies whether updates to an API automatically trigger a new
deployment. The default value is false.


=head2 ClientCertificateId => Str

  The identifier of a client certificate for a Stage. Supported only for
WebSocket APIs.


=head2 CreatedDate => Str

  The timestamp when the stage was created.


=head2 DefaultRouteSettings => L<Paws::ApiGatewayV2::RouteSettings>

  Default route settings for the stage.


=head2 DeploymentId => Str

  The identifier of the Deployment that the Stage is associated with.
Can't be updated if autoDeploy is enabled.


=head2 Description => Str

  The description of the stage.


=head2 LastDeploymentStatusMessage => Str

  Describes the status of the last deployment of a stage. Supported only
for stages with autoDeploy enabled.


=head2 LastUpdatedDate => Str

  The timestamp when the stage was last updated.


=head2 RouteSettings => L<Paws::ApiGatewayV2::RouteSettingsMap>

  Route settings for the stage, by routeKey.


=head2 B<REQUIRED> StageName => Str

  The name of the stage.


=head2 StageVariables => L<Paws::ApiGatewayV2::StageVariablesMap>

  A map that defines the stage variables for a stage resource. Variable
names can have alphanumeric and underscore characters, and the values
must match [A-Za-z0-9-._~:/?#&=,]+. Supported only for WebSocket APIs.


=head2 Tags => L<Paws::ApiGatewayV2::Tags>

  The collection of tags. Each tag element is associated with a given
resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


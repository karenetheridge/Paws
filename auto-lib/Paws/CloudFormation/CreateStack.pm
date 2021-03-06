
package Paws::CloudFormation::CreateStack;
  use Moose;
  has Capabilities => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has DisableRollback => (is => 'ro', isa => 'Bool');
  has NotificationARNs => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has OnFailure => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::Parameter]');
  has ResourceTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has RoleARN => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str', required => 1);
  has StackPolicyBody => (is => 'ro', isa => 'Str');
  has StackPolicyURL => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::Tag]');
  has TemplateBody => (is => 'ro', isa => 'Str');
  has TemplateURL => (is => 'ro', isa => 'Str');
  has TimeoutInMinutes => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStack');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::CreateStackOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateStackResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::CreateStack - Arguments for method CreateStack on Paws::CloudFormation

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateStack on the 
AWS CloudFormation service. Use the attributes of this class
as arguments to method CreateStack.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateStack.

As an example:

  $service_obj->CreateStack(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Capabilities => ArrayRef[Str|Undef]

A list of values that you must specify before AWS CloudFormation can
create certain stacks. Some stack templates might include resources
that can affect permissions in your AWS account, for example, by
creating new AWS Identity and Access Management (IAM) users. For those
stacks, you must explicitly acknowledge their capabilities by
specifying this parameter.

The only valid values are C<CAPABILITY_IAM> and
C<CAPABILITY_NAMED_IAM>. The following resources require you to specify
this parameter: AWS::IAM::AccessKey, AWS::IAM::Group,
AWS::IAM::InstanceProfile, AWS::IAM::Policy, AWS::IAM::Role,
AWS::IAM::User, and AWS::IAM::UserToGroupAddition. If your stack
template contains these resources, we recommend that you review all
permissions associated with them and edit their permissions if
necessary.

If you have IAM resources, you can specify either capability. If you
have IAM resources with custom names, you must specify
C<CAPABILITY_NAMED_IAM>. If you don't specify this parameter, this
action returns an C<InsufficientCapabilities> error.

For more information, see Acknowledging IAM Resources in AWS
CloudFormation Templates.



=head2 ClientRequestToken => Str

A unique identifier for this C<CreateStack> request. Specify this token
if you plan to retry requests so that AWS CloudFormation knows that
you're not attempting to create a stack with the same name. You might
retry C<CreateStack> requests to ensure that AWS CloudFormation
successfully received them.



=head2 DisableRollback => Bool

Set to C<true> to disable rollback of the stack if stack creation
failed. You can specify either C<DisableRollback> or C<OnFailure>, but
not both.

Default: C<false>



=head2 NotificationARNs => ArrayRef[Str|Undef]

The Simple Notification Service (SNS) topic ARNs to publish stack
related events. You can find your SNS topic ARNs using the SNS console
or your Command Line Interface (CLI).



=head2 OnFailure => Str

Determines what action will be taken if stack creation fails. This must
be one of: DO_NOTHING, ROLLBACK, or DELETE. You can specify either
C<OnFailure> or C<DisableRollback>, but not both.

Default: C<ROLLBACK>

Valid values are: C<"DO_NOTHING">, C<"ROLLBACK">, C<"DELETE">

=head2 Parameters => ArrayRef[L<Paws::CloudFormation::Parameter>]

A list of C<Parameter> structures that specify input parameters for the
stack. For more information, see the Parameter data type.



=head2 ResourceTypes => ArrayRef[Str|Undef]

The template resource types that you have permissions to work with for
this create stack action, such as C<AWS::EC2::Instance>,
C<AWS::EC2::*>, or C<Custom::MyCustomInstance>. Use the following
syntax to describe template resource types: C<AWS::*> (for all AWS
resource), C<Custom::*> (for all custom resources),
C<Custom::I<logical_ID> > (for a specific custom resource),
C<AWS::I<service_name>::*> (for all resources of a particular AWS
service), and C<AWS::I<service_name>::I<resource_logical_ID> > (for a
specific AWS resource).

If the list of resource types doesn't include a resource that you're
creating, the stack creation fails. By default, AWS CloudFormation
grants permissions to all resource types. AWS Identity and Access
Management (IAM) uses this parameter for AWS CloudFormation-specific
condition keys in IAM policies. For more information, see Controlling
Access with AWS Identity and Access Management.



=head2 RoleARN => Str

The Amazon Resource Name (ARN) of an AWS Identity and Access Management
(IAM) role that AWS CloudFormation assumes to create the stack. AWS
CloudFormation uses the role's credentials to make calls on your
behalf. AWS CloudFormation always uses this role for all future
operations on the stack. As long as users have permission to operate on
the stack, AWS CloudFormation uses this role even if the users don't
have permission to pass it. Ensure that the role grants least
privilege.

If you don't specify a value, AWS CloudFormation uses the role that was
previously associated with the stack. If no role is available, AWS
CloudFormation uses a temporary session that is generated from your
user credentials.



=head2 B<REQUIRED> StackName => Str

The name that is associated with the stack. The name must be unique in
the region in which you are creating the stack.

A stack name can contain only alphanumeric characters (case sensitive)
and hyphens. It must start with an alphabetic character and cannot be
longer than 128 characters.



=head2 StackPolicyBody => Str

Structure containing the stack policy body. For more information, go to
Prevent Updates to Stack Resources in the I<AWS CloudFormation User
Guide>. You can specify either the C<StackPolicyBody> or the
C<StackPolicyURL> parameter, but not both.



=head2 StackPolicyURL => Str

Location of a file containing the stack policy. The URL must point to a
policy (maximum size: 16 KB) located in an S3 bucket in the same region
as the stack. You can specify either the C<StackPolicyBody> or the
C<StackPolicyURL> parameter, but not both.



=head2 Tags => ArrayRef[L<Paws::CloudFormation::Tag>]

Key-value pairs to associate with this stack. AWS CloudFormation also
propagates these tags to the resources created in the stack. A maximum
number of 10 tags can be specified.



=head2 TemplateBody => Str

Structure containing the template body with a minimum length of 1 byte
and a maximum length of 51,200 bytes. For more information, go to
Template Anatomy in the AWS CloudFormation User Guide.

Conditional: You must specify either the C<TemplateBody> or the
C<TemplateURL> parameter, but not both.



=head2 TemplateURL => Str

Location of file containing the template body. The URL must point to a
template (max size: 460,800 bytes) that is located in an Amazon S3
bucket. For more information, go to the Template Anatomy in the AWS
CloudFormation User Guide.

Conditional: You must specify either the C<TemplateBody> or the
C<TemplateURL> parameter, but not both.



=head2 TimeoutInMinutes => Int

The amount of time that can pass before the stack status becomes
CREATE_FAILED; if C<DisableRollback> is not set or is set to C<false>,
the stack will be rolled back.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateStack in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut


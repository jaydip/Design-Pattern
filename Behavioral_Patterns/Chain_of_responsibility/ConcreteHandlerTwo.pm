# Concrete Handler
package ConcreteHandlerTwo;
use strict;
use warnings;
use Handler;
@ConcreteHandlerTwo::ISA = qw / Handler /;

sub new {
    my ($class) = @_;
    return bless {}, $class;
}

sub handleRequest {
    my ($self, $request) = @_;
    if ($request->get_value < 0) {
        print "Negative values are handled by ConcreteHandlerOne:";
        print "\tConcreteHandlerTwo.HandleRequest : " + $request.get_desc() + $request.get_value();
    }
    else {
        $self->SUPER::handleRequest($request);
    }
}
1;


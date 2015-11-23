# Concrete Handler
package ConcreteHandlerOne;
use strict;
use warnings;
use Handler;
use Request;
@ConcreteHandlerOne::ISA = qw / Handler/;

sub new {
    my ($class) = @_;
    return bless {}, $class;
}

sub handleRequest {
    my ($self, $request) = @_;
    if ($request->get_value < 0) {
        print "Negative values are handled by ConcreteHandlerOne: ";
        print 'ConcreteHandlerOne->HandleRequest : ',$request->get_desc(),$request->get_value(),"\n";
    }
    else {
        $self->SUPER::handleRequest($request);
    }
}
1;

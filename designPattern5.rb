class Observable
    @observersList = nil
    @state = nil
    # attr_accessor :state

    def initialize
        @state = 'pending'
        @observersList = []
    end

    def assign(observer)
        @observersList.push(observer)
    end

    # getter
    def state
        @state
    end
    # setter
    def state=(newState)
        @state = newState
        notifyObservers
    end

    def notifyObservers
        @observersList.each do |x|
            x.notify
        end
    end

    def show
        # puts "List of observers..."
        @observersList.each do |x|
            # puts x
        end
        puts "State: #{@state}"
    end
end



class Observer
    def subscribe(observable)
        @observable = observable
        observable.assign(self)
    end

    def notify
        puts "notified #{self} observer of state change"
    end

    def getState
        puts "\nCurrent observable state: #{@observable.state}"
    end
end

observable = Observable.new

observer1 = Observer.new()
observer1.subscribe(observable)

observer2 = Observer.new()
observer2.subscribe(observable)

puts "--initially--"
observable.show
# Current state
observer1.getState
observer2.getState


# Change the state of the observable manually (exp)----------------------
puts "\nChanging observable state manually----\n"
# observable.changeState('success')
observable.state='success'



# observable.show
# observer1.getState
# observer2.getState



from observable import *
from observer import *


@value
struct ObservableInt(IObservable):
    fn subscribe(self, observer: IObserver) -> None:
        return None

    @staticmethod
    fn create[observer: fn (IObserver) -> None]() -> None:
        return None


@value
struct MonitorObserver(IObserver):
    """A observer that impl IObserver with writable to print value."""

    alias T: CollectionElement = Int

    fn on_next(self, value: Self.T):
        print(value)

    fn on_error(self, error: Error):
        print(error)

    fn on_completed(self):
        print("Completed")


fn make_seq(observer: MonitorObserver):
    for i in range(10):
        observer.on_next(i)
    observer.on_completed()


fn test(observer: IObserver) -> None:
    return None


def main():
    var con = MonitorObserver()
    make_seq(con)

    ObservableInt.create[test]()
    # var o = Observable.create()

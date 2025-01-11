from observer import *


trait IObservable:
    fn subscribe(self, observer: IObserver) -> None:
        ...

    @staticmethod
    fn create[observer: fn (IObserver) -> None]() -> None:
        ...



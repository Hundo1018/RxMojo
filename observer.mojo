trait IObserver:
    alias T: CollectionElement

    fn on_next(self, value: Self.T):
        ...

    fn on_error(self, error: Error):
        ...

    fn on_completed(self):
        ...




```
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working
```

```
As a system maintainer,
So that I can plan the distribution of bikes,
I want a docking station to have a default capacity of 20 bikes.
```


nouns: person, bike, docking station.

verbs: release, working.

Objects (Nouns)  | Messages (Verbs)
------------- | -------------
Person |
Bike | working?
DockingStation | release_bike

bike > working? > True/False
docking station > release bike > bike

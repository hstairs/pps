(define (domain RFIStation)
	(:requirements :strips :typing :fluents :time :negative-preconditions :timed-initial-literals)
	(:types train itinerary flag binBit endpoint stop)
	(:constants
		IW1 - itinerary
		IW2 - itinerary
		IW3 - itinerary
		IW4 - itinerary
		IW5 - itinerary
		I1E - itinerary
		I2E - itinerary
		I3E - itinerary
		I4E - itinerary
		I5E - itinerary
		IE1 - itinerary
		IE2 - itinerary
		IE3 - itinerary
		IE4 - itinerary
		IE5 - itinerary
		I1W - itinerary
		I2W - itinerary
		I3W - itinerary
		I4W - itinerary
		I5W - itinerary
		W_plus - endpoint
		W_minus - endpoint
		E_minus - endpoint
		E_plus - endpoint
		cdbaa - binBit
		cdbac - binBit
		cdbaf - binBit
		cdbai - binBit
		cdbap - binBit
		cdbau - binBit
		cdbaz - binBit
		cdbaj - binBit
		cdbal - binBit
		cdbaq - binBit
		cdbav - binBit
		cdbba - binBit
		cdbam - binBit
		cdbar - binBit
		cdbaw - binBit
		cdbbb - binBit
		cdbag - binBit
		cdbak - binBit
		cdban - binBit
		cdbas - binBit
		cdbax - binBit
		cdbbc - binBit
		cdbao - binBit
		cdbat - binBit
		cdbay - binBit
		cdbbd - binBit
		cdbbe - binBit
		cdbbl - binBit
		cdbbo - binBit
		cdbbr - binBit
		cdbbf - binBit
		cdbbj - binBit
		cdbbg - binBit
		cdbbh - binBit
		cdbbk - binBit
		cdbbm - binBit
		cdbbi - binBit
		cdbbs - binBit
		cdbbp - binBit
		cdbbq - binBit
		cdbbn - binBit
		cdbad - binBit
		cdbab - binBit
		cdbah - binBit
		cdbae - binBit
		F01 - flag
		F1R - flag
		F2R - flag
		F3R - flag
		F4R - flag
		F5R - flag
		F03 - flag
		F04 - flag
		F1L - flag
		F2L - flag
		F3L - flag
		F4L - flag
		F5L - flag
		F02 - flag
		T1 - train
		T2 - train
		T3 - train
		T4 - train
		T5 - train
		T6 - train
		T7 - train
		T8 - train
		T9 - train
		T10 - train
		T11 - train
		T12 - train
		T13 - train
		T14 - train
		T15 - train
		T16 - train
		T17 - train
		T18 - train
		T19 - train
		S_I - stop
		S_II - stop
		S_III - stop
		S_IV - stop
		S_V - stop
	)
	(:predicates
		(alwaysFalse )
		(trainEntersStationAt ?t - train ?f - flag)
		(trainExitsStationAt ?t - train ?f - flag)
		(trainHasEnteredStation ?t - train)
		(trainHasExitedStation ?t - train)
		(trainHasEndedVoy ?t - train)
		(trainInItinerary ?t - train ?i - itinerary)
		(trainIsAtEndpoint ?t - train ?e - endpoint)
		(trainIsOverlapping ?t - train)
		(trainIsStopping ?t - train)
		(trainIsStoppingAtStop ?t - train ?s - stop)
		(trainHasReachedTheStop ?t - train ?s - stop)
		(trainHasReachedAStop ?t - train)
		(trainHasStopped ?t - train)
		(trainHasArrivedAtStation ?t - train)
		(trainHasStoppedAtStop ?t - train ?s - stop)
		(trainHasCompletedItinerary ?t - train ?i - itinerary)
		(trainHasBegunVoy ?t - train)
		(itinerariesIntersects ?a - itinerary ?b - itinerary)
		(itineraryIsReserved ?i - itinerary)
		(itineraryIsBlockedDueToIntersection ?i - itinerary)
		(itineraryIsBlockedDueToIntersectionByTrain ?i - itinerary ?t - train)
		(flagIsBlockedDueToOverlap ?f - flag)
		(binBitIsBlocked ?b - binBit)
		(binBitWasCleared ?b - binBit)
		(stopIsOccupied ?s - stop)
	)
	(:functions
		(time )
		(timeElapsedReservedItinerary ?i - itinerary)
		(timeElapsedOverlappedFlag ?f - flag)
		(trainStayInStation ?t - train)
		(trainTimeFromArrival ?t - train)
		(trainStopTime ?t - train)
		(trainEntryIndex ?t - train)
		(trainsArrivedAtEndpoint ?e - endpoint)
		(trainsEnteredFromEndpoint ?e - endpoint)
	)
	(:action T1_exitsStation_I1W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T1 I1W)
			(not (trainHasExitedStation T1))
		)
		:effect (and
			(not (itineraryIsReserved I1W))
			(not (trainInItinerary T1 I1W))
			(trainExitsStationAt T1 F02)
			(assign (timeElapsedReservedItinerary I1W) 0 )
			(trainHasExitedStation T1)
			(not (binBitIsBlocked cdbab))
		)
	)
	(:action T1_exitsStation_I2W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T1 I2W)
			(not (trainHasExitedStation T1))
		)
		:effect (and
			(not (itineraryIsReserved I2W))
			(not (trainInItinerary T1 I2W))
			(trainExitsStationAt T1 F02)
			(assign (timeElapsedReservedItinerary I2W) 0 )
			(trainHasExitedStation T1)
			(not (binBitIsBlocked cdbab))
		)
	)
	(:action T1_exitsStation_I3W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T1 I3W)
			(not (trainHasExitedStation T1))
		)
		:effect (and
			(not (itineraryIsReserved I3W))
			(not (trainInItinerary T1 I3W))
			(trainExitsStationAt T1 F02)
			(assign (timeElapsedReservedItinerary I3W) 0 )
			(trainHasExitedStation T1)
			(not (binBitIsBlocked cdbab))
		)
	)
	(:action T1_exitsStation_I4W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T1 I4W)
			(not (trainHasExitedStation T1))
		)
		:effect (and
			(not (itineraryIsReserved I4W))
			(not (trainInItinerary T1 I4W))
			(trainExitsStationAt T1 F02)
			(assign (timeElapsedReservedItinerary I4W) 0 )
			(trainHasExitedStation T1)
			(not (binBitIsBlocked cdbab))
		)
	)
	(:action T1_exitsStation_I5W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T1 I5W)
			(not (trainHasExitedStation T1))
		)
		:effect (and
			(not (itineraryIsReserved I5W))
			(not (trainInItinerary T1 I5W))
			(trainExitsStationAt T1 F02)
			(assign (timeElapsedReservedItinerary I5W) 0 )
			(trainHasExitedStation T1)
			(not (binBitIsBlocked cdbab))
		)
	)
	(:event T1_arrivesAtEndpoint_E_plus
		:parameters()
		:precondition (and
			(>= time  1610 )
			(not (trainHasEnteredStation T1))
			(not (trainIsAtEndpoint T1 E_plus))
		)
		:effect (and
			(trainIsAtEndpoint T1 E_plus)
			(trainHasArrivedAtStation T1)
			(assign (trainEntryIndex T1) (trainsArrivedAtEndpoint E_plus))
			(increase (trainsArrivedAtEndpoint E_plus) 1 )
		)
	)
	(:action T1_entersStation_IE1
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T1 E_plus)
			(not (trainHasExitedStation T1))
			(not (trainHasEnteredStation T1))
			(= (trainEntryIndex T1) (trainsEnteredFromEndpoint E_plus))
			(not (binBitIsBlocked cdbbs))
			(not (binBitIsBlocked cdbbp))
			(not (binBitIsBlocked cdbbl))
			(not (binBitIsBlocked cdbbe))
			(not (binBitIsBlocked cdbaz))
			(not (binBitIsBlocked cdbau))
			(not (binBitIsBlocked cdbap))
		)
		:effect (and
			(not (trainIsAtEndpoint T1 E_plus))
			(itineraryIsReserved IE1)
			(not (trainEntersStationAt T1 F04))
			(trainInItinerary T1 IE1)
			(trainHasEnteredStation T1)
			(increase (trainsEnteredFromEndpoint E_plus) 1 )
			(binBitIsBlocked cdbbs)
			(binBitIsBlocked cdbbp)
			(binBitIsBlocked cdbbl)
			(binBitIsBlocked cdbbe)
			(binBitIsBlocked cdbaz)
			(binBitIsBlocked cdbau)
			(binBitIsBlocked cdbap)
		)
	)
	(:action T1_entersStation_IE2
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T1 E_plus)
			(not (trainHasExitedStation T1))
			(not (trainHasEnteredStation T1))
			(= (trainEntryIndex T1) (trainsEnteredFromEndpoint E_plus))
			(not (binBitIsBlocked cdbbs))
			(not (binBitIsBlocked cdbbp))
			(not (binBitIsBlocked cdbbl))
			(not (binBitIsBlocked cdbbj))
			(not (binBitIsBlocked cdbbf))
			(not (binBitIsBlocked cdbba))
			(not (binBitIsBlocked cdbav))
			(not (binBitIsBlocked cdbaq))
		)
		:effect (and
			(not (trainIsAtEndpoint T1 E_plus))
			(itineraryIsReserved IE2)
			(not (trainEntersStationAt T1 F04))
			(trainInItinerary T1 IE2)
			(trainHasEnteredStation T1)
			(increase (trainsEnteredFromEndpoint E_plus) 1 )
			(binBitIsBlocked cdbbs)
			(binBitIsBlocked cdbbp)
			(binBitIsBlocked cdbbl)
			(binBitIsBlocked cdbbj)
			(binBitIsBlocked cdbbf)
			(binBitIsBlocked cdbba)
			(binBitIsBlocked cdbav)
			(binBitIsBlocked cdbaq)
		)
	)
	(:action T1_entersStation_IE3
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T1 E_plus)
			(not (trainHasExitedStation T1))
			(not (trainHasEnteredStation T1))
			(= (trainEntryIndex T1) (trainsEnteredFromEndpoint E_plus))
			(not (binBitIsBlocked cdbbs))
			(not (binBitIsBlocked cdbbp))
			(not (binBitIsBlocked cdbbl))
			(not (binBitIsBlocked cdbbj))
			(not (binBitIsBlocked cdbbg))
			(not (binBitIsBlocked cdbbb))
			(not (binBitIsBlocked cdbaw))
			(not (binBitIsBlocked cdbar))
		)
		:effect (and
			(not (trainIsAtEndpoint T1 E_plus))
			(itineraryIsReserved IE3)
			(not (trainEntersStationAt T1 F04))
			(trainInItinerary T1 IE3)
			(trainHasEnteredStation T1)
			(increase (trainsEnteredFromEndpoint E_plus) 1 )
			(binBitIsBlocked cdbbs)
			(binBitIsBlocked cdbbp)
			(binBitIsBlocked cdbbl)
			(binBitIsBlocked cdbbj)
			(binBitIsBlocked cdbbg)
			(binBitIsBlocked cdbbb)
			(binBitIsBlocked cdbaw)
			(binBitIsBlocked cdbar)
		)
	)
	(:action T1_entersStation_IE4
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T1 E_plus)
			(not (trainHasExitedStation T1))
			(not (trainHasEnteredStation T1))
			(= (trainEntryIndex T1) (trainsEnteredFromEndpoint E_plus))
			(not (binBitIsBlocked cdbbs))
			(not (binBitIsBlocked cdbbq))
			(not (binBitIsBlocked cdbbn))
			(not (binBitIsBlocked cdbbk))
			(not (binBitIsBlocked cdbbh))
			(not (binBitIsBlocked cdbbc))
			(not (binBitIsBlocked cdbax))
			(not (binBitIsBlocked cdbas))
		)
		:effect (and
			(not (trainIsAtEndpoint T1 E_plus))
			(itineraryIsReserved IE4)
			(not (trainEntersStationAt T1 F04))
			(trainInItinerary T1 IE4)
			(trainHasEnteredStation T1)
			(increase (trainsEnteredFromEndpoint E_plus) 1 )
			(binBitIsBlocked cdbbs)
			(binBitIsBlocked cdbbq)
			(binBitIsBlocked cdbbn)
			(binBitIsBlocked cdbbk)
			(binBitIsBlocked cdbbh)
			(binBitIsBlocked cdbbc)
			(binBitIsBlocked cdbax)
			(binBitIsBlocked cdbas)
		)
	)
	(:action T1_entersStation_IE5
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T1 E_plus)
			(not (trainHasExitedStation T1))
			(not (trainHasEnteredStation T1))
			(= (trainEntryIndex T1) (trainsEnteredFromEndpoint E_plus))
			(not (binBitIsBlocked cdbbs))
			(not (binBitIsBlocked cdbbq))
			(not (binBitIsBlocked cdbbn))
			(not (binBitIsBlocked cdbbk))
			(not (binBitIsBlocked cdbbi))
			(not (binBitIsBlocked cdbbd))
			(not (binBitIsBlocked cdbay))
			(not (binBitIsBlocked cdbat))
		)
		:effect (and
			(not (trainIsAtEndpoint T1 E_plus))
			(itineraryIsReserved IE5)
			(not (trainEntersStationAt T1 F04))
			(trainInItinerary T1 IE5)
			(trainHasEnteredStation T1)
			(increase (trainsEnteredFromEndpoint E_plus) 1 )
			(binBitIsBlocked cdbbs)
			(binBitIsBlocked cdbbq)
			(binBitIsBlocked cdbbn)
			(binBitIsBlocked cdbbk)
			(binBitIsBlocked cdbbi)
			(binBitIsBlocked cdbbd)
			(binBitIsBlocked cdbay)
			(binBitIsBlocked cdbat)
		)
	)
	(:event T1_completeItinerary_IE1
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 60 )
			(itineraryIsReserved IE1)
			(trainInItinerary T1 IE1)
			(not (trainHasCompletedItinerary T1 IE1))
			(not (trainHasExitedStation T1))
		)
		:effect (and
			(trainHasCompletedItinerary T1 IE1)
		)
	)
	(:event T1_completeBinBit_IE1_cdbbs
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 8 )
			(trainInItinerary T1 IE1)
			(binBitIsBlocked cdbbs)
		)
		:effect (and
			(not (binBitIsBlocked cdbbs))
		)
	)
	(:event T1_completeBinBit_IE1_cdbbp
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 17 )
			(trainInItinerary T1 IE1)
			(binBitIsBlocked cdbbp)
		)
		:effect (and
			(not (binBitIsBlocked cdbbp))
		)
	)
	(:event T1_completeBinBit_IE1_cdbbl
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 25 )
			(trainInItinerary T1 IE1)
			(binBitIsBlocked cdbbl)
		)
		:effect (and
			(not (binBitIsBlocked cdbbl))
		)
	)
	(:event T1_completeBinBit_IE1_cdbbe
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 34 )
			(trainInItinerary T1 IE1)
			(binBitIsBlocked cdbbe)
		)
		:effect (and
			(not (binBitIsBlocked cdbbe))
		)
	)
	(:event T1_completeBinBit_IE1_cdbaz
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 42 )
			(trainInItinerary T1 IE1)
			(binBitIsBlocked cdbaz)
		)
		:effect (and
			(not (binBitIsBlocked cdbaz))
		)
	)
	(:event T1_completeBinBit_IE1_cdbau
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 51 )
			(trainInItinerary T1 IE1)
			(binBitIsBlocked cdbau)
		)
		:effect (and
			(not (binBitIsBlocked cdbau))
		)
	)
	(:event T1_completeItinerary_I1W
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1W) 60 )
			(itineraryIsReserved I1W)
			(trainInItinerary T1 I1W)
			(not (trainHasCompletedItinerary T1 I1W))
			(not (trainHasExitedStation T1))
		)
		:effect (and
			(trainHasCompletedItinerary T1 I1W)
		)
	)
	(:event T1_completeBinBit_I1W_cdbai
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1W) 15 )
			(trainInItinerary T1 I1W)
			(binBitIsBlocked cdbai)
		)
		:effect (and
			(not (binBitIsBlocked cdbai))
		)
	)
	(:event T1_completeBinBit_I1W_cdbaf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1W) 30 )
			(trainInItinerary T1 I1W)
			(binBitIsBlocked cdbaf)
		)
		:effect (and
			(not (binBitIsBlocked cdbaf))
		)
	)
	(:event T1_completeBinBit_I1W_cdbad
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1W) 45 )
			(trainInItinerary T1 I1W)
			(binBitIsBlocked cdbad)
		)
		:effect (and
			(not (binBitIsBlocked cdbad))
		)
	)
	(:event T1_completeItinerary_IE2
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 60 )
			(itineraryIsReserved IE2)
			(trainInItinerary T1 IE2)
			(not (trainHasCompletedItinerary T1 IE2))
			(not (trainHasExitedStation T1))
		)
		:effect (and
			(trainHasCompletedItinerary T1 IE2)
		)
	)
	(:event T1_completeBinBit_IE2_cdbbs
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 7 )
			(trainInItinerary T1 IE2)
			(binBitIsBlocked cdbbs)
		)
		:effect (and
			(not (binBitIsBlocked cdbbs))
		)
	)
	(:event T1_completeBinBit_IE2_cdbbp
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 15 )
			(trainInItinerary T1 IE2)
			(binBitIsBlocked cdbbp)
		)
		:effect (and
			(not (binBitIsBlocked cdbbp))
		)
	)
	(:event T1_completeBinBit_IE2_cdbbl
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 22 )
			(trainInItinerary T1 IE2)
			(binBitIsBlocked cdbbl)
		)
		:effect (and
			(not (binBitIsBlocked cdbbl))
		)
	)
	(:event T1_completeBinBit_IE2_cdbbj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 30 )
			(trainInItinerary T1 IE2)
			(binBitIsBlocked cdbbj)
		)
		:effect (and
			(not (binBitIsBlocked cdbbj))
		)
	)
	(:event T1_completeBinBit_IE2_cdbbf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 37 )
			(trainInItinerary T1 IE2)
			(binBitIsBlocked cdbbf)
		)
		:effect (and
			(not (binBitIsBlocked cdbbf))
		)
	)
	(:event T1_completeBinBit_IE2_cdbba
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 45 )
			(trainInItinerary T1 IE2)
			(binBitIsBlocked cdbba)
		)
		:effect (and
			(not (binBitIsBlocked cdbba))
		)
	)
	(:event T1_completeBinBit_IE2_cdbav
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 52 )
			(trainInItinerary T1 IE2)
			(binBitIsBlocked cdbav)
		)
		:effect (and
			(not (binBitIsBlocked cdbav))
		)
	)
	(:event T1_completeItinerary_I2W
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2W) 60 )
			(itineraryIsReserved I2W)
			(trainInItinerary T1 I2W)
			(not (trainHasCompletedItinerary T1 I2W))
			(not (trainHasExitedStation T1))
		)
		:effect (and
			(trainHasCompletedItinerary T1 I2W)
		)
	)
	(:event T1_completeBinBit_I2W_cdbal
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2W) 12 )
			(trainInItinerary T1 I2W)
			(binBitIsBlocked cdbal)
		)
		:effect (and
			(not (binBitIsBlocked cdbal))
		)
	)
	(:event T1_completeBinBit_I2W_cdbaj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2W) 24 )
			(trainInItinerary T1 I2W)
			(binBitIsBlocked cdbaj)
		)
		:effect (and
			(not (binBitIsBlocked cdbaj))
		)
	)
	(:event T1_completeBinBit_I2W_cdbaf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2W) 36 )
			(trainInItinerary T1 I2W)
			(binBitIsBlocked cdbaf)
		)
		:effect (and
			(not (binBitIsBlocked cdbaf))
		)
	)
	(:event T1_completeBinBit_I2W_cdbad
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2W) 48 )
			(trainInItinerary T1 I2W)
			(binBitIsBlocked cdbad)
		)
		:effect (and
			(not (binBitIsBlocked cdbad))
		)
	)
	(:event T1_completeItinerary_IE3
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 60 )
			(itineraryIsReserved IE3)
			(trainInItinerary T1 IE3)
			(not (trainHasCompletedItinerary T1 IE3))
			(not (trainHasExitedStation T1))
		)
		:effect (and
			(trainHasCompletedItinerary T1 IE3)
		)
	)
	(:event T1_completeBinBit_IE3_cdbbs
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 7 )
			(trainInItinerary T1 IE3)
			(binBitIsBlocked cdbbs)
		)
		:effect (and
			(not (binBitIsBlocked cdbbs))
		)
	)
	(:event T1_completeBinBit_IE3_cdbbp
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 15 )
			(trainInItinerary T1 IE3)
			(binBitIsBlocked cdbbp)
		)
		:effect (and
			(not (binBitIsBlocked cdbbp))
		)
	)
	(:event T1_completeBinBit_IE3_cdbbl
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 22 )
			(trainInItinerary T1 IE3)
			(binBitIsBlocked cdbbl)
		)
		:effect (and
			(not (binBitIsBlocked cdbbl))
		)
	)
	(:event T1_completeBinBit_IE3_cdbbj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 30 )
			(trainInItinerary T1 IE3)
			(binBitIsBlocked cdbbj)
		)
		:effect (and
			(not (binBitIsBlocked cdbbj))
		)
	)
	(:event T1_completeBinBit_IE3_cdbbg
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 37 )
			(trainInItinerary T1 IE3)
			(binBitIsBlocked cdbbg)
		)
		:effect (and
			(not (binBitIsBlocked cdbbg))
		)
	)
	(:event T1_completeBinBit_IE3_cdbbb
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 45 )
			(trainInItinerary T1 IE3)
			(binBitIsBlocked cdbbb)
		)
		:effect (and
			(not (binBitIsBlocked cdbbb))
		)
	)
	(:event T1_completeBinBit_IE3_cdbaw
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 52 )
			(trainInItinerary T1 IE3)
			(binBitIsBlocked cdbaw)
		)
		:effect (and
			(not (binBitIsBlocked cdbaw))
		)
	)
	(:event T1_completeItinerary_I3W
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3W) 60 )
			(itineraryIsReserved I3W)
			(trainInItinerary T1 I3W)
			(not (trainHasCompletedItinerary T1 I3W))
			(not (trainHasExitedStation T1))
		)
		:effect (and
			(trainHasCompletedItinerary T1 I3W)
		)
	)
	(:event T1_completeBinBit_I3W_cdbam
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3W) 12 )
			(trainInItinerary T1 I3W)
			(binBitIsBlocked cdbam)
		)
		:effect (and
			(not (binBitIsBlocked cdbam))
		)
	)
	(:event T1_completeBinBit_I3W_cdbaj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3W) 24 )
			(trainInItinerary T1 I3W)
			(binBitIsBlocked cdbaj)
		)
		:effect (and
			(not (binBitIsBlocked cdbaj))
		)
	)
	(:event T1_completeBinBit_I3W_cdbaf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3W) 36 )
			(trainInItinerary T1 I3W)
			(binBitIsBlocked cdbaf)
		)
		:effect (and
			(not (binBitIsBlocked cdbaf))
		)
	)
	(:event T1_completeBinBit_I3W_cdbad
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3W) 48 )
			(trainInItinerary T1 I3W)
			(binBitIsBlocked cdbad)
		)
		:effect (and
			(not (binBitIsBlocked cdbad))
		)
	)
	(:event T1_completeItinerary_IE4
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 60 )
			(itineraryIsReserved IE4)
			(trainInItinerary T1 IE4)
			(not (trainHasCompletedItinerary T1 IE4))
			(not (trainHasExitedStation T1))
		)
		:effect (and
			(trainHasCompletedItinerary T1 IE4)
		)
	)
	(:event T1_completeBinBit_IE4_cdbbs
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 7 )
			(trainInItinerary T1 IE4)
			(binBitIsBlocked cdbbs)
		)
		:effect (and
			(not (binBitIsBlocked cdbbs))
		)
	)
	(:event T1_completeBinBit_IE4_cdbbq
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 15 )
			(trainInItinerary T1 IE4)
			(binBitIsBlocked cdbbq)
		)
		:effect (and
			(not (binBitIsBlocked cdbbq))
		)
	)
	(:event T1_completeBinBit_IE4_cdbbn
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 22 )
			(trainInItinerary T1 IE4)
			(binBitIsBlocked cdbbn)
		)
		:effect (and
			(not (binBitIsBlocked cdbbn))
		)
	)
	(:event T1_completeBinBit_IE4_cdbbk
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 30 )
			(trainInItinerary T1 IE4)
			(binBitIsBlocked cdbbk)
		)
		:effect (and
			(not (binBitIsBlocked cdbbk))
		)
	)
	(:event T1_completeBinBit_IE4_cdbbh
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 37 )
			(trainInItinerary T1 IE4)
			(binBitIsBlocked cdbbh)
		)
		:effect (and
			(not (binBitIsBlocked cdbbh))
		)
	)
	(:event T1_completeBinBit_IE4_cdbbc
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 45 )
			(trainInItinerary T1 IE4)
			(binBitIsBlocked cdbbc)
		)
		:effect (and
			(not (binBitIsBlocked cdbbc))
		)
	)
	(:event T1_completeBinBit_IE4_cdbax
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 52 )
			(trainInItinerary T1 IE4)
			(binBitIsBlocked cdbax)
		)
		:effect (and
			(not (binBitIsBlocked cdbax))
		)
	)
	(:event T1_completeItinerary_I4W
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4W) 60 )
			(itineraryIsReserved I4W)
			(trainInItinerary T1 I4W)
			(not (trainHasCompletedItinerary T1 I4W))
			(not (trainHasExitedStation T1))
		)
		:effect (and
			(trainHasCompletedItinerary T1 I4W)
		)
	)
	(:event T1_completeBinBit_I4W_cdban
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4W) 12 )
			(trainInItinerary T1 I4W)
			(binBitIsBlocked cdban)
		)
		:effect (and
			(not (binBitIsBlocked cdban))
		)
	)
	(:event T1_completeBinBit_I4W_cdbak
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4W) 24 )
			(trainInItinerary T1 I4W)
			(binBitIsBlocked cdbak)
		)
		:effect (and
			(not (binBitIsBlocked cdbak))
		)
	)
	(:event T1_completeBinBit_I4W_cdbah
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4W) 36 )
			(trainInItinerary T1 I4W)
			(binBitIsBlocked cdbah)
		)
		:effect (and
			(not (binBitIsBlocked cdbah))
		)
	)
	(:event T1_completeBinBit_I4W_cdbae
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4W) 48 )
			(trainInItinerary T1 I4W)
			(binBitIsBlocked cdbae)
		)
		:effect (and
			(not (binBitIsBlocked cdbae))
		)
	)
	(:event T1_completeItinerary_IE5
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 60 )
			(itineraryIsReserved IE5)
			(trainInItinerary T1 IE5)
			(not (trainHasCompletedItinerary T1 IE5))
			(not (trainHasExitedStation T1))
		)
		:effect (and
			(trainHasCompletedItinerary T1 IE5)
		)
	)
	(:event T1_completeBinBit_IE5_cdbbs
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 7 )
			(trainInItinerary T1 IE5)
			(binBitIsBlocked cdbbs)
		)
		:effect (and
			(not (binBitIsBlocked cdbbs))
		)
	)
	(:event T1_completeBinBit_IE5_cdbbq
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 15 )
			(trainInItinerary T1 IE5)
			(binBitIsBlocked cdbbq)
		)
		:effect (and
			(not (binBitIsBlocked cdbbq))
		)
	)
	(:event T1_completeBinBit_IE5_cdbbn
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 22 )
			(trainInItinerary T1 IE5)
			(binBitIsBlocked cdbbn)
		)
		:effect (and
			(not (binBitIsBlocked cdbbn))
		)
	)
	(:event T1_completeBinBit_IE5_cdbbk
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 30 )
			(trainInItinerary T1 IE5)
			(binBitIsBlocked cdbbk)
		)
		:effect (and
			(not (binBitIsBlocked cdbbk))
		)
	)
	(:event T1_completeBinBit_IE5_cdbbi
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 37 )
			(trainInItinerary T1 IE5)
			(binBitIsBlocked cdbbi)
		)
		:effect (and
			(not (binBitIsBlocked cdbbi))
		)
	)
	(:event T1_completeBinBit_IE5_cdbbd
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 45 )
			(trainInItinerary T1 IE5)
			(binBitIsBlocked cdbbd)
		)
		:effect (and
			(not (binBitIsBlocked cdbbd))
		)
	)
	(:event T1_completeBinBit_IE5_cdbay
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 52 )
			(trainInItinerary T1 IE5)
			(binBitIsBlocked cdbay)
		)
		:effect (and
			(not (binBitIsBlocked cdbay))
		)
	)
	(:event T1_completeItinerary_I5W
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5W) 60 )
			(itineraryIsReserved I5W)
			(trainInItinerary T1 I5W)
			(not (trainHasCompletedItinerary T1 I5W))
			(not (trainHasExitedStation T1))
		)
		:effect (and
			(trainHasCompletedItinerary T1 I5W)
		)
	)
	(:event T1_completeBinBit_I5W_cdbao
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5W) 12 )
			(trainInItinerary T1 I5W)
			(binBitIsBlocked cdbao)
		)
		:effect (and
			(not (binBitIsBlocked cdbao))
		)
	)
	(:event T1_completeBinBit_I5W_cdbak
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5W) 24 )
			(trainInItinerary T1 I5W)
			(binBitIsBlocked cdbak)
		)
		:effect (and
			(not (binBitIsBlocked cdbak))
		)
	)
	(:event T1_completeBinBit_I5W_cdbah
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5W) 36 )
			(trainInItinerary T1 I5W)
			(binBitIsBlocked cdbah)
		)
		:effect (and
			(not (binBitIsBlocked cdbah))
		)
	)
	(:event T1_completeBinBit_I5W_cdbae
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5W) 48 )
			(trainInItinerary T1 I5W)
			(binBitIsBlocked cdbae)
		)
		:effect (and
			(not (binBitIsBlocked cdbae))
		)
	)
	(:action T1_overlaps_IE1_I1W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T1 IE1)
			(trainInItinerary T1 IE1)
			(not (trainIsStopping T1))
			(not (itineraryIsReserved I1W))
			(not (flagIsBlockedDueToOverlap F1L))
			(not (binBitIsBlocked cdbai))
			(not (binBitIsBlocked cdbaf))
			(not (binBitIsBlocked cdbad))
			(not (binBitIsBlocked cdbab))
		)
		:effect (and
			(itineraryIsReserved I1W)
			(trainInItinerary T1 I1W)
			(trainIsOverlapping T1)
			(flagIsBlockedDueToOverlap F1L)
			(binBitIsBlocked cdbai)
			(binBitIsBlocked cdbaf)
			(binBitIsBlocked cdbad)
			(binBitIsBlocked cdbab)
		)
	)
	(:event T1_endOverlap_IE1_I1W
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F1L) 1 )
			(flagIsBlockedDueToOverlap F1L)
			(trainInItinerary T1 IE1)
			(trainInItinerary T1 I1W)
		)
		:effect (and
			(not (itineraryIsReserved IE1))
			(not (trainIsOverlapping T1))
			(assign (timeElapsedReservedItinerary IE1) 0 )
			(not (trainInItinerary T1 IE1))
			(not (flagIsBlockedDueToOverlap F1L))
			(assign (timeElapsedOverlappedFlag F1L) 0 )
			(not (binBitIsBlocked cdbap))
		)
	)
	(:action T1_overlaps_IE2_I2W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T1 IE2)
			(trainInItinerary T1 IE2)
			(not (trainIsStopping T1))
			(not (itineraryIsReserved I2W))
			(not (flagIsBlockedDueToOverlap F2L))
			(not (binBitIsBlocked cdbal))
			(not (binBitIsBlocked cdbaj))
			(not (binBitIsBlocked cdbaf))
			(not (binBitIsBlocked cdbad))
			(not (binBitIsBlocked cdbab))
		)
		:effect (and
			(itineraryIsReserved I2W)
			(trainInItinerary T1 I2W)
			(trainIsOverlapping T1)
			(flagIsBlockedDueToOverlap F2L)
			(binBitIsBlocked cdbal)
			(binBitIsBlocked cdbaj)
			(binBitIsBlocked cdbaf)
			(binBitIsBlocked cdbad)
			(binBitIsBlocked cdbab)
		)
	)
	(:event T1_endOverlap_IE2_I2W
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F2L) 1 )
			(flagIsBlockedDueToOverlap F2L)
			(trainInItinerary T1 IE2)
			(trainInItinerary T1 I2W)
		)
		:effect (and
			(not (itineraryIsReserved IE2))
			(not (trainIsOverlapping T1))
			(assign (timeElapsedReservedItinerary IE2) 0 )
			(not (trainInItinerary T1 IE2))
			(not (flagIsBlockedDueToOverlap F2L))
			(assign (timeElapsedOverlappedFlag F2L) 0 )
			(not (binBitIsBlocked cdbaq))
		)
	)
	(:action T1_overlaps_IE3_I3W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T1 IE3)
			(trainInItinerary T1 IE3)
			(not (trainIsStopping T1))
			(not (itineraryIsReserved I3W))
			(not (flagIsBlockedDueToOverlap F3L))
			(not (binBitIsBlocked cdbam))
			(not (binBitIsBlocked cdbaj))
			(not (binBitIsBlocked cdbaf))
			(not (binBitIsBlocked cdbad))
			(not (binBitIsBlocked cdbab))
		)
		:effect (and
			(itineraryIsReserved I3W)
			(trainInItinerary T1 I3W)
			(trainIsOverlapping T1)
			(flagIsBlockedDueToOverlap F3L)
			(binBitIsBlocked cdbam)
			(binBitIsBlocked cdbaj)
			(binBitIsBlocked cdbaf)
			(binBitIsBlocked cdbad)
			(binBitIsBlocked cdbab)
		)
	)
	(:event T1_endOverlap_IE3_I3W
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F3L) 1 )
			(flagIsBlockedDueToOverlap F3L)
			(trainInItinerary T1 IE3)
			(trainInItinerary T1 I3W)
		)
		:effect (and
			(not (itineraryIsReserved IE3))
			(not (trainIsOverlapping T1))
			(assign (timeElapsedReservedItinerary IE3) 0 )
			(not (trainInItinerary T1 IE3))
			(not (flagIsBlockedDueToOverlap F3L))
			(assign (timeElapsedOverlappedFlag F3L) 0 )
			(not (binBitIsBlocked cdbar))
		)
	)
	(:action T1_overlaps_IE4_I4W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T1 IE4)
			(trainInItinerary T1 IE4)
			(not (trainIsStopping T1))
			(not (itineraryIsReserved I4W))
			(not (flagIsBlockedDueToOverlap F4L))
			(not (binBitIsBlocked cdban))
			(not (binBitIsBlocked cdbak))
			(not (binBitIsBlocked cdbah))
			(not (binBitIsBlocked cdbae))
			(not (binBitIsBlocked cdbab))
		)
		:effect (and
			(itineraryIsReserved I4W)
			(trainInItinerary T1 I4W)
			(trainIsOverlapping T1)
			(flagIsBlockedDueToOverlap F4L)
			(binBitIsBlocked cdban)
			(binBitIsBlocked cdbak)
			(binBitIsBlocked cdbah)
			(binBitIsBlocked cdbae)
			(binBitIsBlocked cdbab)
		)
	)
	(:event T1_endOverlap_IE4_I4W
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F4L) 1 )
			(flagIsBlockedDueToOverlap F4L)
			(trainInItinerary T1 IE4)
			(trainInItinerary T1 I4W)
		)
		:effect (and
			(not (itineraryIsReserved IE4))
			(not (trainIsOverlapping T1))
			(assign (timeElapsedReservedItinerary IE4) 0 )
			(not (trainInItinerary T1 IE4))
			(not (flagIsBlockedDueToOverlap F4L))
			(assign (timeElapsedOverlappedFlag F4L) 0 )
			(not (binBitIsBlocked cdbas))
		)
	)
	(:action T1_overlaps_IE5_I5W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T1 IE5)
			(trainInItinerary T1 IE5)
			(not (trainIsStopping T1))
			(not (itineraryIsReserved I5W))
			(not (flagIsBlockedDueToOverlap F5L))
			(not (binBitIsBlocked cdbao))
			(not (binBitIsBlocked cdbak))
			(not (binBitIsBlocked cdbah))
			(not (binBitIsBlocked cdbae))
			(not (binBitIsBlocked cdbab))
		)
		:effect (and
			(itineraryIsReserved I5W)
			(trainInItinerary T1 I5W)
			(trainIsOverlapping T1)
			(flagIsBlockedDueToOverlap F5L)
			(binBitIsBlocked cdbao)
			(binBitIsBlocked cdbak)
			(binBitIsBlocked cdbah)
			(binBitIsBlocked cdbae)
			(binBitIsBlocked cdbab)
		)
	)
	(:event T1_endOverlap_IE5_I5W
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F5L) 1 )
			(flagIsBlockedDueToOverlap F5L)
			(trainInItinerary T1 IE5)
			(trainInItinerary T1 I5W)
		)
		:effect (and
			(not (itineraryIsReserved IE5))
			(not (trainIsOverlapping T1))
			(assign (timeElapsedReservedItinerary IE5) 0 )
			(not (trainInItinerary T1 IE5))
			(not (flagIsBlockedDueToOverlap F5L))
			(assign (timeElapsedOverlappedFlag F5L) 0 )
			(not (binBitIsBlocked cdbat))
		)
	)
	(:event T2_arrivesAtEndpoint_E_plus
		:parameters()
		:precondition (and
			(>= time  2550 )
			(not (trainHasEnteredStation T2))
			(not (trainIsAtEndpoint T2 E_plus))
		)
		:effect (and
			(trainIsAtEndpoint T2 E_plus)
			(trainHasArrivedAtStation T2)
			(assign (trainEntryIndex T2) (trainsArrivedAtEndpoint E_plus))
			(increase (trainsArrivedAtEndpoint E_plus) 1 )
		)
	)
	(:action T2_entersStation_IE1
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T2 E_plus)
			(not (trainHasExitedStation T2))
			(not (trainHasEnteredStation T2))
			(= (trainEntryIndex T2) (trainsEnteredFromEndpoint E_plus))
			(not (binBitIsBlocked cdbbs))
			(not (binBitIsBlocked cdbbp))
			(not (binBitIsBlocked cdbbl))
			(not (binBitIsBlocked cdbbe))
			(not (binBitIsBlocked cdbaz))
			(not (binBitIsBlocked cdbau))
			(not (binBitIsBlocked cdbap))
		)
		:effect (and
			(not (trainIsAtEndpoint T2 E_plus))
			(itineraryIsReserved IE1)
			(not (trainEntersStationAt T2 F04))
			(trainInItinerary T2 IE1)
			(trainHasEnteredStation T2)
			(increase (trainsEnteredFromEndpoint E_plus) 1 )
			(binBitIsBlocked cdbbs)
			(binBitIsBlocked cdbbp)
			(binBitIsBlocked cdbbl)
			(binBitIsBlocked cdbbe)
			(binBitIsBlocked cdbaz)
			(binBitIsBlocked cdbau)
			(binBitIsBlocked cdbap)
		)
	)
	(:event T2_completeItinerary_IE1
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 60 )
			(itineraryIsReserved IE1)
			(trainInItinerary T2 IE1)
			(not (trainHasCompletedItinerary T2 IE1))
			(not (trainHasExitedStation T2))
		)
		:effect (and
			(trainHasCompletedItinerary T2 IE1)
		)
	)
	(:event T2_completeBinBit_IE1_cdbbs
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 8 )
			(trainInItinerary T2 IE1)
			(binBitIsBlocked cdbbs)
		)
		:effect (and
			(not (binBitIsBlocked cdbbs))
		)
	)
	(:event T2_completeBinBit_IE1_cdbbp
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 17 )
			(trainInItinerary T2 IE1)
			(binBitIsBlocked cdbbp)
		)
		:effect (and
			(not (binBitIsBlocked cdbbp))
		)
	)
	(:event T2_completeBinBit_IE1_cdbbl
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 25 )
			(trainInItinerary T2 IE1)
			(binBitIsBlocked cdbbl)
		)
		:effect (and
			(not (binBitIsBlocked cdbbl))
		)
	)
	(:event T2_completeBinBit_IE1_cdbbe
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 34 )
			(trainInItinerary T2 IE1)
			(binBitIsBlocked cdbbe)
		)
		:effect (and
			(not (binBitIsBlocked cdbbe))
		)
	)
	(:event T2_completeBinBit_IE1_cdbaz
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 42 )
			(trainInItinerary T2 IE1)
			(binBitIsBlocked cdbaz)
		)
		:effect (and
			(not (binBitIsBlocked cdbaz))
		)
	)
	(:event T2_completeBinBit_IE1_cdbau
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 51 )
			(trainInItinerary T2 IE1)
			(binBitIsBlocked cdbau)
		)
		:effect (and
			(not (binBitIsBlocked cdbau))
		)
	)
	(:action T2_beginStop_IE1_S_I
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T2 IE1)
			(trainInItinerary T2 IE1)
			(not (trainIsOverlapping T2))
			(not (stopIsOccupied S_I))
			(not (trainIsStopping T2))
			(not (trainHasStoppedAtStop T2 S_I))
		)
		:effect (and
			(trainIsStoppingAtStop T2 S_I)
			(trainHasReachedTheStop T2 S_I)
			(trainHasReachedAStop T2)
			(trainIsStopping T2)
			(assign (trainStopTime T2) 0 )
			(stopIsOccupied S_I)
			(not (itineraryIsReserved IE1))
		)
	)
	(:event T2_endStop_IE1_S_I
		:parameters()
		:precondition (and
			(>= (trainStopTime T2) 100 )
			(trainInItinerary T2 IE1)
			(trainIsStoppingAtStop T2 S_I)
			(stopIsOccupied S_I)
		)
		:effect (and
			(assign (trainStopTime T2) 0 )
			(not (trainIsStoppingAtStop T2 S_I))
			(not (trainIsStopping T2))
			(trainHasStoppedAtStop T2 S_I)
			(trainHasStopped T2)
			(not (stopIsOccupied S_I))
			(not (binBitIsBlocked cdbbs))
			(not (binBitIsBlocked cdbbp))
			(not (binBitIsBlocked cdbbl))
			(not (binBitIsBlocked cdbbe))
			(not (binBitIsBlocked cdbaz))
			(not (binBitIsBlocked cdbau))
			(not (binBitIsBlocked cdbap))
		)
	)
	(:action T2_trainEndsVoy_IE1_S_I
		:parameters()
		:precondition (and
			(trainInItinerary T2 IE1)
			(trainHasStopped T2)
			(trainHasStoppedAtStop T2 S_I)
			(not (trainHasEndedVoy T2))
		)
		:effect (and
			(not (trainInItinerary T2 IE1))
			(trainHasExitedStation T2)
			(trainHasEndedVoy T2)
			(assign (timeElapsedReservedItinerary IE1) 0 )
		)
	)
	(:event T3_arrivesAtEndpoint_W_plus
		:parameters()
		:precondition (and
			(>= time  473 )
			(not (trainHasEnteredStation T3))
			(not (trainIsAtEndpoint T3 W_plus))
		)
		:effect (and
			(trainIsAtEndpoint T3 W_plus)
			(trainHasArrivedAtStation T3)
			(assign (trainEntryIndex T3) (trainsArrivedAtEndpoint W_plus))
			(increase (trainsArrivedAtEndpoint W_plus) 1 )
		)
	)
	(:action T3_entersStation_IW1
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T3 W_plus)
			(not (trainHasExitedStation T3))
			(not (trainHasEnteredStation T3))
			(= (trainEntryIndex T3) (trainsEnteredFromEndpoint W_plus))
			(not (binBitIsBlocked cdbaa))
			(not (binBitIsBlocked cdbac))
			(not (binBitIsBlocked cdbaf))
			(not (binBitIsBlocked cdbai))
			(not (binBitIsBlocked cdbap))
			(not (binBitIsBlocked cdbau))
			(not (binBitIsBlocked cdbaz))
		)
		:effect (and
			(not (trainIsAtEndpoint T3 W_plus))
			(itineraryIsReserved IW1)
			(not (trainEntersStationAt T3 F01))
			(trainInItinerary T3 IW1)
			(trainHasEnteredStation T3)
			(increase (trainsEnteredFromEndpoint W_plus) 1 )
			(binBitIsBlocked cdbaa)
			(binBitIsBlocked cdbac)
			(binBitIsBlocked cdbaf)
			(binBitIsBlocked cdbai)
			(binBitIsBlocked cdbap)
			(binBitIsBlocked cdbau)
			(binBitIsBlocked cdbaz)
		)
	)
	(:action T3_entersStation_IW2
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T3 W_plus)
			(not (trainHasExitedStation T3))
			(not (trainHasEnteredStation T3))
			(= (trainEntryIndex T3) (trainsEnteredFromEndpoint W_plus))
			(not (binBitIsBlocked cdbaa))
			(not (binBitIsBlocked cdbac))
			(not (binBitIsBlocked cdbaf))
			(not (binBitIsBlocked cdbaj))
			(not (binBitIsBlocked cdbal))
			(not (binBitIsBlocked cdbaq))
			(not (binBitIsBlocked cdbav))
			(not (binBitIsBlocked cdbba))
		)
		:effect (and
			(not (trainIsAtEndpoint T3 W_plus))
			(itineraryIsReserved IW2)
			(not (trainEntersStationAt T3 F01))
			(trainInItinerary T3 IW2)
			(trainHasEnteredStation T3)
			(increase (trainsEnteredFromEndpoint W_plus) 1 )
			(binBitIsBlocked cdbaa)
			(binBitIsBlocked cdbac)
			(binBitIsBlocked cdbaf)
			(binBitIsBlocked cdbaj)
			(binBitIsBlocked cdbal)
			(binBitIsBlocked cdbaq)
			(binBitIsBlocked cdbav)
			(binBitIsBlocked cdbba)
		)
	)
	(:action T3_entersStation_IW3
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T3 W_plus)
			(not (trainHasExitedStation T3))
			(not (trainHasEnteredStation T3))
			(= (trainEntryIndex T3) (trainsEnteredFromEndpoint W_plus))
			(not (binBitIsBlocked cdbaa))
			(not (binBitIsBlocked cdbac))
			(not (binBitIsBlocked cdbaf))
			(not (binBitIsBlocked cdbaj))
			(not (binBitIsBlocked cdbam))
			(not (binBitIsBlocked cdbar))
			(not (binBitIsBlocked cdbaw))
			(not (binBitIsBlocked cdbbb))
		)
		:effect (and
			(not (trainIsAtEndpoint T3 W_plus))
			(itineraryIsReserved IW3)
			(not (trainEntersStationAt T3 F01))
			(trainInItinerary T3 IW3)
			(trainHasEnteredStation T3)
			(increase (trainsEnteredFromEndpoint W_plus) 1 )
			(binBitIsBlocked cdbaa)
			(binBitIsBlocked cdbac)
			(binBitIsBlocked cdbaf)
			(binBitIsBlocked cdbaj)
			(binBitIsBlocked cdbam)
			(binBitIsBlocked cdbar)
			(binBitIsBlocked cdbaw)
			(binBitIsBlocked cdbbb)
		)
	)
	(:action T3_entersStation_IW4
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T3 W_plus)
			(not (trainHasExitedStation T3))
			(not (trainHasEnteredStation T3))
			(= (trainEntryIndex T3) (trainsEnteredFromEndpoint W_plus))
			(not (binBitIsBlocked cdbaa))
			(not (binBitIsBlocked cdbac))
			(not (binBitIsBlocked cdbag))
			(not (binBitIsBlocked cdbak))
			(not (binBitIsBlocked cdban))
			(not (binBitIsBlocked cdbas))
			(not (binBitIsBlocked cdbax))
			(not (binBitIsBlocked cdbbc))
		)
		:effect (and
			(not (trainIsAtEndpoint T3 W_plus))
			(itineraryIsReserved IW4)
			(not (trainEntersStationAt T3 F01))
			(trainInItinerary T3 IW4)
			(trainHasEnteredStation T3)
			(increase (trainsEnteredFromEndpoint W_plus) 1 )
			(binBitIsBlocked cdbaa)
			(binBitIsBlocked cdbac)
			(binBitIsBlocked cdbag)
			(binBitIsBlocked cdbak)
			(binBitIsBlocked cdban)
			(binBitIsBlocked cdbas)
			(binBitIsBlocked cdbax)
			(binBitIsBlocked cdbbc)
		)
	)
	(:action T3_entersStation_IW5
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T3 W_plus)
			(not (trainHasExitedStation T3))
			(not (trainHasEnteredStation T3))
			(= (trainEntryIndex T3) (trainsEnteredFromEndpoint W_plus))
			(not (binBitIsBlocked cdbaa))
			(not (binBitIsBlocked cdbac))
			(not (binBitIsBlocked cdbag))
			(not (binBitIsBlocked cdbak))
			(not (binBitIsBlocked cdbao))
			(not (binBitIsBlocked cdbat))
			(not (binBitIsBlocked cdbay))
			(not (binBitIsBlocked cdbbd))
		)
		:effect (and
			(not (trainIsAtEndpoint T3 W_plus))
			(itineraryIsReserved IW5)
			(not (trainEntersStationAt T3 F01))
			(trainInItinerary T3 IW5)
			(trainHasEnteredStation T3)
			(increase (trainsEnteredFromEndpoint W_plus) 1 )
			(binBitIsBlocked cdbaa)
			(binBitIsBlocked cdbac)
			(binBitIsBlocked cdbag)
			(binBitIsBlocked cdbak)
			(binBitIsBlocked cdbao)
			(binBitIsBlocked cdbat)
			(binBitIsBlocked cdbay)
			(binBitIsBlocked cdbbd)
		)
	)
	(:action T3_exitsStation_I1E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T3 I1E)
			(not (trainHasExitedStation T3))
		)
		:effect (and
			(not (itineraryIsReserved I1E))
			(not (trainInItinerary T3 I1E))
			(trainExitsStationAt T3 F03)
			(assign (timeElapsedReservedItinerary I1E) 0 )
			(trainHasExitedStation T3)
			(not (binBitIsBlocked cdbbr))
		)
	)
	(:action T3_exitsStation_I2E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T3 I2E)
			(not (trainHasExitedStation T3))
		)
		:effect (and
			(not (itineraryIsReserved I2E))
			(not (trainInItinerary T3 I2E))
			(trainExitsStationAt T3 F03)
			(assign (timeElapsedReservedItinerary I2E) 0 )
			(trainHasExitedStation T3)
			(not (binBitIsBlocked cdbbr))
		)
	)
	(:action T3_exitsStation_I3E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T3 I3E)
			(not (trainHasExitedStation T3))
		)
		:effect (and
			(not (itineraryIsReserved I3E))
			(not (trainInItinerary T3 I3E))
			(trainExitsStationAt T3 F03)
			(assign (timeElapsedReservedItinerary I3E) 0 )
			(trainHasExitedStation T3)
			(not (binBitIsBlocked cdbbr))
		)
	)
	(:action T3_exitsStation_I4E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T3 I4E)
			(not (trainHasExitedStation T3))
		)
		:effect (and
			(not (itineraryIsReserved I4E))
			(not (trainInItinerary T3 I4E))
			(trainExitsStationAt T3 F03)
			(assign (timeElapsedReservedItinerary I4E) 0 )
			(trainHasExitedStation T3)
			(not (binBitIsBlocked cdbbr))
		)
	)
	(:action T3_exitsStation_I5E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T3 I5E)
			(not (trainHasExitedStation T3))
		)
		:effect (and
			(not (itineraryIsReserved I5E))
			(not (trainInItinerary T3 I5E))
			(trainExitsStationAt T3 F03)
			(assign (timeElapsedReservedItinerary I5E) 0 )
			(trainHasExitedStation T3)
			(not (binBitIsBlocked cdbbr))
		)
	)
	(:event T3_completeItinerary_IW1
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 60 )
			(itineraryIsReserved IW1)
			(trainInItinerary T3 IW1)
			(not (trainHasCompletedItinerary T3 IW1))
			(not (trainHasExitedStation T3))
		)
		:effect (and
			(trainHasCompletedItinerary T3 IW1)
		)
	)
	(:event T3_completeBinBit_IW1_cdbaa
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 8 )
			(trainInItinerary T3 IW1)
			(binBitIsBlocked cdbaa)
		)
		:effect (and
			(not (binBitIsBlocked cdbaa))
		)
	)
	(:event T3_completeBinBit_IW1_cdbac
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 17 )
			(trainInItinerary T3 IW1)
			(binBitIsBlocked cdbac)
		)
		:effect (and
			(not (binBitIsBlocked cdbac))
		)
	)
	(:event T3_completeBinBit_IW1_cdbaf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 25 )
			(trainInItinerary T3 IW1)
			(binBitIsBlocked cdbaf)
		)
		:effect (and
			(not (binBitIsBlocked cdbaf))
		)
	)
	(:event T3_completeBinBit_IW1_cdbai
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 34 )
			(trainInItinerary T3 IW1)
			(binBitIsBlocked cdbai)
		)
		:effect (and
			(not (binBitIsBlocked cdbai))
		)
	)
	(:event T3_completeBinBit_IW1_cdbap
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 42 )
			(trainInItinerary T3 IW1)
			(binBitIsBlocked cdbap)
		)
		:effect (and
			(not (binBitIsBlocked cdbap))
		)
	)
	(:event T3_completeBinBit_IW1_cdbau
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 51 )
			(trainInItinerary T3 IW1)
			(binBitIsBlocked cdbau)
		)
		:effect (and
			(not (binBitIsBlocked cdbau))
		)
	)
	(:event T3_completeItinerary_I1E
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1E) 60 )
			(itineraryIsReserved I1E)
			(trainInItinerary T3 I1E)
			(not (trainHasCompletedItinerary T3 I1E))
			(not (trainHasExitedStation T3))
		)
		:effect (and
			(trainHasCompletedItinerary T3 I1E)
		)
	)
	(:event T3_completeBinBit_I1E_cdbbe
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1E) 15 )
			(trainInItinerary T3 I1E)
			(binBitIsBlocked cdbbe)
		)
		:effect (and
			(not (binBitIsBlocked cdbbe))
		)
	)
	(:event T3_completeBinBit_I1E_cdbbl
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1E) 30 )
			(trainInItinerary T3 I1E)
			(binBitIsBlocked cdbbl)
		)
		:effect (and
			(not (binBitIsBlocked cdbbl))
		)
	)
	(:event T3_completeBinBit_I1E_cdbbo
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1E) 45 )
			(trainInItinerary T3 I1E)
			(binBitIsBlocked cdbbo)
		)
		:effect (and
			(not (binBitIsBlocked cdbbo))
		)
	)
	(:event T3_completeItinerary_IW2
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 60 )
			(itineraryIsReserved IW2)
			(trainInItinerary T3 IW2)
			(not (trainHasCompletedItinerary T3 IW2))
			(not (trainHasExitedStation T3))
		)
		:effect (and
			(trainHasCompletedItinerary T3 IW2)
		)
	)
	(:event T3_completeBinBit_IW2_cdbaa
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 7 )
			(trainInItinerary T3 IW2)
			(binBitIsBlocked cdbaa)
		)
		:effect (and
			(not (binBitIsBlocked cdbaa))
		)
	)
	(:event T3_completeBinBit_IW2_cdbac
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 15 )
			(trainInItinerary T3 IW2)
			(binBitIsBlocked cdbac)
		)
		:effect (and
			(not (binBitIsBlocked cdbac))
		)
	)
	(:event T3_completeBinBit_IW2_cdbaf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 22 )
			(trainInItinerary T3 IW2)
			(binBitIsBlocked cdbaf)
		)
		:effect (and
			(not (binBitIsBlocked cdbaf))
		)
	)
	(:event T3_completeBinBit_IW2_cdbaj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 30 )
			(trainInItinerary T3 IW2)
			(binBitIsBlocked cdbaj)
		)
		:effect (and
			(not (binBitIsBlocked cdbaj))
		)
	)
	(:event T3_completeBinBit_IW2_cdbal
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 37 )
			(trainInItinerary T3 IW2)
			(binBitIsBlocked cdbal)
		)
		:effect (and
			(not (binBitIsBlocked cdbal))
		)
	)
	(:event T3_completeBinBit_IW2_cdbaq
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 45 )
			(trainInItinerary T3 IW2)
			(binBitIsBlocked cdbaq)
		)
		:effect (and
			(not (binBitIsBlocked cdbaq))
		)
	)
	(:event T3_completeBinBit_IW2_cdbav
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 52 )
			(trainInItinerary T3 IW2)
			(binBitIsBlocked cdbav)
		)
		:effect (and
			(not (binBitIsBlocked cdbav))
		)
	)
	(:event T3_completeItinerary_I2E
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2E) 60 )
			(itineraryIsReserved I2E)
			(trainInItinerary T3 I2E)
			(not (trainHasCompletedItinerary T3 I2E))
			(not (trainHasExitedStation T3))
		)
		:effect (and
			(trainHasCompletedItinerary T3 I2E)
		)
	)
	(:event T3_completeBinBit_I2E_cdbbf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2E) 12 )
			(trainInItinerary T3 I2E)
			(binBitIsBlocked cdbbf)
		)
		:effect (and
			(not (binBitIsBlocked cdbbf))
		)
	)
	(:event T3_completeBinBit_I2E_cdbbj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2E) 24 )
			(trainInItinerary T3 I2E)
			(binBitIsBlocked cdbbj)
		)
		:effect (and
			(not (binBitIsBlocked cdbbj))
		)
	)
	(:event T3_completeBinBit_I2E_cdbbl
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2E) 36 )
			(trainInItinerary T3 I2E)
			(binBitIsBlocked cdbbl)
		)
		:effect (and
			(not (binBitIsBlocked cdbbl))
		)
	)
	(:event T3_completeBinBit_I2E_cdbbo
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2E) 48 )
			(trainInItinerary T3 I2E)
			(binBitIsBlocked cdbbo)
		)
		:effect (and
			(not (binBitIsBlocked cdbbo))
		)
	)
	(:event T3_completeItinerary_IW3
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 60 )
			(itineraryIsReserved IW3)
			(trainInItinerary T3 IW3)
			(not (trainHasCompletedItinerary T3 IW3))
			(not (trainHasExitedStation T3))
		)
		:effect (and
			(trainHasCompletedItinerary T3 IW3)
		)
	)
	(:event T3_completeBinBit_IW3_cdbaa
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 7 )
			(trainInItinerary T3 IW3)
			(binBitIsBlocked cdbaa)
		)
		:effect (and
			(not (binBitIsBlocked cdbaa))
		)
	)
	(:event T3_completeBinBit_IW3_cdbac
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 15 )
			(trainInItinerary T3 IW3)
			(binBitIsBlocked cdbac)
		)
		:effect (and
			(not (binBitIsBlocked cdbac))
		)
	)
	(:event T3_completeBinBit_IW3_cdbaf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 22 )
			(trainInItinerary T3 IW3)
			(binBitIsBlocked cdbaf)
		)
		:effect (and
			(not (binBitIsBlocked cdbaf))
		)
	)
	(:event T3_completeBinBit_IW3_cdbaj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 30 )
			(trainInItinerary T3 IW3)
			(binBitIsBlocked cdbaj)
		)
		:effect (and
			(not (binBitIsBlocked cdbaj))
		)
	)
	(:event T3_completeBinBit_IW3_cdbam
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 37 )
			(trainInItinerary T3 IW3)
			(binBitIsBlocked cdbam)
		)
		:effect (and
			(not (binBitIsBlocked cdbam))
		)
	)
	(:event T3_completeBinBit_IW3_cdbar
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 45 )
			(trainInItinerary T3 IW3)
			(binBitIsBlocked cdbar)
		)
		:effect (and
			(not (binBitIsBlocked cdbar))
		)
	)
	(:event T3_completeBinBit_IW3_cdbaw
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 52 )
			(trainInItinerary T3 IW3)
			(binBitIsBlocked cdbaw)
		)
		:effect (and
			(not (binBitIsBlocked cdbaw))
		)
	)
	(:event T3_completeItinerary_I3E
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3E) 60 )
			(itineraryIsReserved I3E)
			(trainInItinerary T3 I3E)
			(not (trainHasCompletedItinerary T3 I3E))
			(not (trainHasExitedStation T3))
		)
		:effect (and
			(trainHasCompletedItinerary T3 I3E)
		)
	)
	(:event T3_completeBinBit_I3E_cdbbg
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3E) 12 )
			(trainInItinerary T3 I3E)
			(binBitIsBlocked cdbbg)
		)
		:effect (and
			(not (binBitIsBlocked cdbbg))
		)
	)
	(:event T3_completeBinBit_I3E_cdbbj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3E) 24 )
			(trainInItinerary T3 I3E)
			(binBitIsBlocked cdbbj)
		)
		:effect (and
			(not (binBitIsBlocked cdbbj))
		)
	)
	(:event T3_completeBinBit_I3E_cdbbl
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3E) 36 )
			(trainInItinerary T3 I3E)
			(binBitIsBlocked cdbbl)
		)
		:effect (and
			(not (binBitIsBlocked cdbbl))
		)
	)
	(:event T3_completeBinBit_I3E_cdbbo
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3E) 48 )
			(trainInItinerary T3 I3E)
			(binBitIsBlocked cdbbo)
		)
		:effect (and
			(not (binBitIsBlocked cdbbo))
		)
	)
	(:event T3_completeItinerary_IW4
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 60 )
			(itineraryIsReserved IW4)
			(trainInItinerary T3 IW4)
			(not (trainHasCompletedItinerary T3 IW4))
			(not (trainHasExitedStation T3))
		)
		:effect (and
			(trainHasCompletedItinerary T3 IW4)
		)
	)
	(:event T3_completeBinBit_IW4_cdbaa
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 7 )
			(trainInItinerary T3 IW4)
			(binBitIsBlocked cdbaa)
		)
		:effect (and
			(not (binBitIsBlocked cdbaa))
		)
	)
	(:event T3_completeBinBit_IW4_cdbac
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 15 )
			(trainInItinerary T3 IW4)
			(binBitIsBlocked cdbac)
		)
		:effect (and
			(not (binBitIsBlocked cdbac))
		)
	)
	(:event T3_completeBinBit_IW4_cdbag
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 22 )
			(trainInItinerary T3 IW4)
			(binBitIsBlocked cdbag)
		)
		:effect (and
			(not (binBitIsBlocked cdbag))
		)
	)
	(:event T3_completeBinBit_IW4_cdbak
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 30 )
			(trainInItinerary T3 IW4)
			(binBitIsBlocked cdbak)
		)
		:effect (and
			(not (binBitIsBlocked cdbak))
		)
	)
	(:event T3_completeBinBit_IW4_cdban
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 37 )
			(trainInItinerary T3 IW4)
			(binBitIsBlocked cdban)
		)
		:effect (and
			(not (binBitIsBlocked cdban))
		)
	)
	(:event T3_completeBinBit_IW4_cdbas
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 45 )
			(trainInItinerary T3 IW4)
			(binBitIsBlocked cdbas)
		)
		:effect (and
			(not (binBitIsBlocked cdbas))
		)
	)
	(:event T3_completeBinBit_IW4_cdbax
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 52 )
			(trainInItinerary T3 IW4)
			(binBitIsBlocked cdbax)
		)
		:effect (and
			(not (binBitIsBlocked cdbax))
		)
	)
	(:event T3_completeItinerary_I4E
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4E) 60 )
			(itineraryIsReserved I4E)
			(trainInItinerary T3 I4E)
			(not (trainHasCompletedItinerary T3 I4E))
			(not (trainHasExitedStation T3))
		)
		:effect (and
			(trainHasCompletedItinerary T3 I4E)
		)
	)
	(:event T3_completeBinBit_I4E_cdbbh
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4E) 12 )
			(trainInItinerary T3 I4E)
			(binBitIsBlocked cdbbh)
		)
		:effect (and
			(not (binBitIsBlocked cdbbh))
		)
	)
	(:event T3_completeBinBit_I4E_cdbbk
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4E) 24 )
			(trainInItinerary T3 I4E)
			(binBitIsBlocked cdbbk)
		)
		:effect (and
			(not (binBitIsBlocked cdbbk))
		)
	)
	(:event T3_completeBinBit_I4E_cdbbm
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4E) 36 )
			(trainInItinerary T3 I4E)
			(binBitIsBlocked cdbbm)
		)
		:effect (and
			(not (binBitIsBlocked cdbbm))
		)
	)
	(:event T3_completeBinBit_I4E_cdbbo
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4E) 48 )
			(trainInItinerary T3 I4E)
			(binBitIsBlocked cdbbo)
		)
		:effect (and
			(not (binBitIsBlocked cdbbo))
		)
	)
	(:event T3_completeItinerary_IW5
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 60 )
			(itineraryIsReserved IW5)
			(trainInItinerary T3 IW5)
			(not (trainHasCompletedItinerary T3 IW5))
			(not (trainHasExitedStation T3))
		)
		:effect (and
			(trainHasCompletedItinerary T3 IW5)
		)
	)
	(:event T3_completeBinBit_IW5_cdbaa
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 7 )
			(trainInItinerary T3 IW5)
			(binBitIsBlocked cdbaa)
		)
		:effect (and
			(not (binBitIsBlocked cdbaa))
		)
	)
	(:event T3_completeBinBit_IW5_cdbac
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 15 )
			(trainInItinerary T3 IW5)
			(binBitIsBlocked cdbac)
		)
		:effect (and
			(not (binBitIsBlocked cdbac))
		)
	)
	(:event T3_completeBinBit_IW5_cdbag
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 22 )
			(trainInItinerary T3 IW5)
			(binBitIsBlocked cdbag)
		)
		:effect (and
			(not (binBitIsBlocked cdbag))
		)
	)
	(:event T3_completeBinBit_IW5_cdbak
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 30 )
			(trainInItinerary T3 IW5)
			(binBitIsBlocked cdbak)
		)
		:effect (and
			(not (binBitIsBlocked cdbak))
		)
	)
	(:event T3_completeBinBit_IW5_cdbao
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 37 )
			(trainInItinerary T3 IW5)
			(binBitIsBlocked cdbao)
		)
		:effect (and
			(not (binBitIsBlocked cdbao))
		)
	)
	(:event T3_completeBinBit_IW5_cdbat
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 45 )
			(trainInItinerary T3 IW5)
			(binBitIsBlocked cdbat)
		)
		:effect (and
			(not (binBitIsBlocked cdbat))
		)
	)
	(:event T3_completeBinBit_IW5_cdbay
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 52 )
			(trainInItinerary T3 IW5)
			(binBitIsBlocked cdbay)
		)
		:effect (and
			(not (binBitIsBlocked cdbay))
		)
	)
	(:event T3_completeItinerary_I5E
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5E) 60 )
			(itineraryIsReserved I5E)
			(trainInItinerary T3 I5E)
			(not (trainHasCompletedItinerary T3 I5E))
			(not (trainHasExitedStation T3))
		)
		:effect (and
			(trainHasCompletedItinerary T3 I5E)
		)
	)
	(:event T3_completeBinBit_I5E_cdbbi
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5E) 12 )
			(trainInItinerary T3 I5E)
			(binBitIsBlocked cdbbi)
		)
		:effect (and
			(not (binBitIsBlocked cdbbi))
		)
	)
	(:event T3_completeBinBit_I5E_cdbbk
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5E) 24 )
			(trainInItinerary T3 I5E)
			(binBitIsBlocked cdbbk)
		)
		:effect (and
			(not (binBitIsBlocked cdbbk))
		)
	)
	(:event T3_completeBinBit_I5E_cdbbm
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5E) 36 )
			(trainInItinerary T3 I5E)
			(binBitIsBlocked cdbbm)
		)
		:effect (and
			(not (binBitIsBlocked cdbbm))
		)
	)
	(:event T3_completeBinBit_I5E_cdbbo
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5E) 48 )
			(trainInItinerary T3 I5E)
			(binBitIsBlocked cdbbo)
		)
		:effect (and
			(not (binBitIsBlocked cdbbo))
		)
	)
	(:action T3_overlaps_IW1_I1E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T3 IW1)
			(trainInItinerary T3 IW1)
			(not (trainIsStopping T3))
			(not (itineraryIsReserved I1E))
			(not (flagIsBlockedDueToOverlap F1R))
			(not (binBitIsBlocked cdbbe))
			(not (binBitIsBlocked cdbbl))
			(not (binBitIsBlocked cdbbo))
			(not (binBitIsBlocked cdbbr))
		)
		:effect (and
			(itineraryIsReserved I1E)
			(trainInItinerary T3 I1E)
			(trainIsOverlapping T3)
			(flagIsBlockedDueToOverlap F1R)
			(binBitIsBlocked cdbbe)
			(binBitIsBlocked cdbbl)
			(binBitIsBlocked cdbbo)
			(binBitIsBlocked cdbbr)
		)
	)
	(:event T3_endOverlap_IW1_I1E
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F1R) 1 )
			(flagIsBlockedDueToOverlap F1R)
			(trainInItinerary T3 IW1)
			(trainInItinerary T3 I1E)
		)
		:effect (and
			(not (itineraryIsReserved IW1))
			(not (trainIsOverlapping T3))
			(assign (timeElapsedReservedItinerary IW1) 0 )
			(not (trainInItinerary T3 IW1))
			(not (flagIsBlockedDueToOverlap F1R))
			(assign (timeElapsedOverlappedFlag F1R) 0 )
			(not (binBitIsBlocked cdbaz))
		)
	)
	(:action T3_overlaps_IW2_I2E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T3 IW2)
			(trainInItinerary T3 IW2)
			(not (trainIsStopping T3))
			(not (itineraryIsReserved I2E))
			(not (flagIsBlockedDueToOverlap F2R))
			(not (binBitIsBlocked cdbbf))
			(not (binBitIsBlocked cdbbj))
			(not (binBitIsBlocked cdbbl))
			(not (binBitIsBlocked cdbbo))
			(not (binBitIsBlocked cdbbr))
		)
		:effect (and
			(itineraryIsReserved I2E)
			(trainInItinerary T3 I2E)
			(trainIsOverlapping T3)
			(flagIsBlockedDueToOverlap F2R)
			(binBitIsBlocked cdbbf)
			(binBitIsBlocked cdbbj)
			(binBitIsBlocked cdbbl)
			(binBitIsBlocked cdbbo)
			(binBitIsBlocked cdbbr)
		)
	)
	(:event T3_endOverlap_IW2_I2E
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F2R) 1 )
			(flagIsBlockedDueToOverlap F2R)
			(trainInItinerary T3 IW2)
			(trainInItinerary T3 I2E)
		)
		:effect (and
			(not (itineraryIsReserved IW2))
			(not (trainIsOverlapping T3))
			(assign (timeElapsedReservedItinerary IW2) 0 )
			(not (trainInItinerary T3 IW2))
			(not (flagIsBlockedDueToOverlap F2R))
			(assign (timeElapsedOverlappedFlag F2R) 0 )
			(not (binBitIsBlocked cdbba))
		)
	)
	(:action T3_overlaps_IW3_I3E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T3 IW3)
			(trainInItinerary T3 IW3)
			(not (trainIsStopping T3))
			(not (itineraryIsReserved I3E))
			(not (flagIsBlockedDueToOverlap F3R))
			(not (binBitIsBlocked cdbbg))
			(not (binBitIsBlocked cdbbj))
			(not (binBitIsBlocked cdbbl))
			(not (binBitIsBlocked cdbbo))
			(not (binBitIsBlocked cdbbr))
		)
		:effect (and
			(itineraryIsReserved I3E)
			(trainInItinerary T3 I3E)
			(trainIsOverlapping T3)
			(flagIsBlockedDueToOverlap F3R)
			(binBitIsBlocked cdbbg)
			(binBitIsBlocked cdbbj)
			(binBitIsBlocked cdbbl)
			(binBitIsBlocked cdbbo)
			(binBitIsBlocked cdbbr)
		)
	)
	(:event T3_endOverlap_IW3_I3E
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F3R) 1 )
			(flagIsBlockedDueToOverlap F3R)
			(trainInItinerary T3 IW3)
			(trainInItinerary T3 I3E)
		)
		:effect (and
			(not (itineraryIsReserved IW3))
			(not (trainIsOverlapping T3))
			(assign (timeElapsedReservedItinerary IW3) 0 )
			(not (trainInItinerary T3 IW3))
			(not (flagIsBlockedDueToOverlap F3R))
			(assign (timeElapsedOverlappedFlag F3R) 0 )
			(not (binBitIsBlocked cdbbb))
		)
	)
	(:action T3_overlaps_IW4_I4E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T3 IW4)
			(trainInItinerary T3 IW4)
			(not (trainIsStopping T3))
			(not (itineraryIsReserved I4E))
			(not (flagIsBlockedDueToOverlap F4R))
			(not (binBitIsBlocked cdbbh))
			(not (binBitIsBlocked cdbbk))
			(not (binBitIsBlocked cdbbm))
			(not (binBitIsBlocked cdbbo))
			(not (binBitIsBlocked cdbbr))
		)
		:effect (and
			(itineraryIsReserved I4E)
			(trainInItinerary T3 I4E)
			(trainIsOverlapping T3)
			(flagIsBlockedDueToOverlap F4R)
			(binBitIsBlocked cdbbh)
			(binBitIsBlocked cdbbk)
			(binBitIsBlocked cdbbm)
			(binBitIsBlocked cdbbo)
			(binBitIsBlocked cdbbr)
		)
	)
	(:event T3_endOverlap_IW4_I4E
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F4R) 1 )
			(flagIsBlockedDueToOverlap F4R)
			(trainInItinerary T3 IW4)
			(trainInItinerary T3 I4E)
		)
		:effect (and
			(not (itineraryIsReserved IW4))
			(not (trainIsOverlapping T3))
			(assign (timeElapsedReservedItinerary IW4) 0 )
			(not (trainInItinerary T3 IW4))
			(not (flagIsBlockedDueToOverlap F4R))
			(assign (timeElapsedOverlappedFlag F4R) 0 )
			(not (binBitIsBlocked cdbbc))
		)
	)
	(:action T3_overlaps_IW5_I5E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T3 IW5)
			(trainInItinerary T3 IW5)
			(not (trainIsStopping T3))
			(not (itineraryIsReserved I5E))
			(not (flagIsBlockedDueToOverlap F5R))
			(not (binBitIsBlocked cdbbi))
			(not (binBitIsBlocked cdbbk))
			(not (binBitIsBlocked cdbbm))
			(not (binBitIsBlocked cdbbo))
			(not (binBitIsBlocked cdbbr))
		)
		:effect (and
			(itineraryIsReserved I5E)
			(trainInItinerary T3 I5E)
			(trainIsOverlapping T3)
			(flagIsBlockedDueToOverlap F5R)
			(binBitIsBlocked cdbbi)
			(binBitIsBlocked cdbbk)
			(binBitIsBlocked cdbbm)
			(binBitIsBlocked cdbbo)
			(binBitIsBlocked cdbbr)
		)
	)
	(:event T3_endOverlap_IW5_I5E
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F5R) 1 )
			(flagIsBlockedDueToOverlap F5R)
			(trainInItinerary T3 IW5)
			(trainInItinerary T3 I5E)
		)
		:effect (and
			(not (itineraryIsReserved IW5))
			(not (trainIsOverlapping T3))
			(assign (timeElapsedReservedItinerary IW5) 0 )
			(not (trainInItinerary T3 IW5))
			(not (flagIsBlockedDueToOverlap F5R))
			(assign (timeElapsedOverlappedFlag F5R) 0 )
			(not (binBitIsBlocked cdbbd))
		)
	)
	(:event T4_arrivesAtEndpoint_W_plus
		:parameters()
		:precondition (and
			(>= time  417 )
			(not (trainHasEnteredStation T4))
			(not (trainIsAtEndpoint T4 W_plus))
		)
		:effect (and
			(trainIsAtEndpoint T4 W_plus)
			(trainHasArrivedAtStation T4)
			(assign (trainEntryIndex T4) (trainsArrivedAtEndpoint W_plus))
			(increase (trainsArrivedAtEndpoint W_plus) 1 )
		)
	)
	(:action T4_entersStation_IW3
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T4 W_plus)
			(not (trainHasExitedStation T4))
			(not (trainHasEnteredStation T4))
			(= (trainEntryIndex T4) (trainsEnteredFromEndpoint W_plus))
			(not (binBitIsBlocked cdbaa))
			(not (binBitIsBlocked cdbac))
			(not (binBitIsBlocked cdbaf))
			(not (binBitIsBlocked cdbaj))
			(not (binBitIsBlocked cdbam))
			(not (binBitIsBlocked cdbar))
			(not (binBitIsBlocked cdbaw))
			(not (binBitIsBlocked cdbbb))
		)
		:effect (and
			(not (trainIsAtEndpoint T4 W_plus))
			(itineraryIsReserved IW3)
			(not (trainEntersStationAt T4 F01))
			(trainInItinerary T4 IW3)
			(trainHasEnteredStation T4)
			(increase (trainsEnteredFromEndpoint W_plus) 1 )
			(binBitIsBlocked cdbaa)
			(binBitIsBlocked cdbac)
			(binBitIsBlocked cdbaf)
			(binBitIsBlocked cdbaj)
			(binBitIsBlocked cdbam)
			(binBitIsBlocked cdbar)
			(binBitIsBlocked cdbaw)
			(binBitIsBlocked cdbbb)
		)
	)
	(:event T4_completeItinerary_IW3
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 60 )
			(itineraryIsReserved IW3)
			(trainInItinerary T4 IW3)
			(not (trainHasCompletedItinerary T4 IW3))
			(not (trainHasExitedStation T4))
		)
		:effect (and
			(trainHasCompletedItinerary T4 IW3)
		)
	)
	(:event T4_completeBinBit_IW3_cdbaa
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 7 )
			(trainInItinerary T4 IW3)
			(binBitIsBlocked cdbaa)
		)
		:effect (and
			(not (binBitIsBlocked cdbaa))
		)
	)
	(:event T4_completeBinBit_IW3_cdbac
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 15 )
			(trainInItinerary T4 IW3)
			(binBitIsBlocked cdbac)
		)
		:effect (and
			(not (binBitIsBlocked cdbac))
		)
	)
	(:event T4_completeBinBit_IW3_cdbaf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 22 )
			(trainInItinerary T4 IW3)
			(binBitIsBlocked cdbaf)
		)
		:effect (and
			(not (binBitIsBlocked cdbaf))
		)
	)
	(:event T4_completeBinBit_IW3_cdbaj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 30 )
			(trainInItinerary T4 IW3)
			(binBitIsBlocked cdbaj)
		)
		:effect (and
			(not (binBitIsBlocked cdbaj))
		)
	)
	(:event T4_completeBinBit_IW3_cdbam
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 37 )
			(trainInItinerary T4 IW3)
			(binBitIsBlocked cdbam)
		)
		:effect (and
			(not (binBitIsBlocked cdbam))
		)
	)
	(:event T4_completeBinBit_IW3_cdbar
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 45 )
			(trainInItinerary T4 IW3)
			(binBitIsBlocked cdbar)
		)
		:effect (and
			(not (binBitIsBlocked cdbar))
		)
	)
	(:event T4_completeBinBit_IW3_cdbaw
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 52 )
			(trainInItinerary T4 IW3)
			(binBitIsBlocked cdbaw)
		)
		:effect (and
			(not (binBitIsBlocked cdbaw))
		)
	)
	(:action T4_beginStop_IW3_S_III
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T4 IW3)
			(trainInItinerary T4 IW3)
			(not (trainIsOverlapping T4))
			(not (stopIsOccupied S_III))
			(not (trainIsStopping T4))
			(not (trainHasStoppedAtStop T4 S_III))
		)
		:effect (and
			(trainIsStoppingAtStop T4 S_III)
			(trainHasReachedTheStop T4 S_III)
			(trainHasReachedAStop T4)
			(trainIsStopping T4)
			(assign (trainStopTime T4) 0 )
			(stopIsOccupied S_III)
			(not (itineraryIsReserved IW3))
		)
	)
	(:event T4_endStop_IW3_S_III
		:parameters()
		:precondition (and
			(>= (trainStopTime T4) 100 )
			(trainInItinerary T4 IW3)
			(trainIsStoppingAtStop T4 S_III)
			(stopIsOccupied S_III)
		)
		:effect (and
			(assign (trainStopTime T4) 0 )
			(not (trainIsStoppingAtStop T4 S_III))
			(not (trainIsStopping T4))
			(trainHasStoppedAtStop T4 S_III)
			(trainHasStopped T4)
			(not (stopIsOccupied S_III))
			(not (binBitIsBlocked cdbaa))
			(not (binBitIsBlocked cdbac))
			(not (binBitIsBlocked cdbaf))
			(not (binBitIsBlocked cdbaj))
			(not (binBitIsBlocked cdbam))
			(not (binBitIsBlocked cdbar))
			(not (binBitIsBlocked cdbaw))
			(not (binBitIsBlocked cdbbb))
		)
	)
	(:action T4_trainEndsVoy_IW3_S_III
		:parameters()
		:precondition (and
			(trainInItinerary T4 IW3)
			(trainHasStopped T4)
			(trainHasStoppedAtStop T4 S_III)
			(not (trainHasEndedVoy T4))
		)
		:effect (and
			(not (trainInItinerary T4 IW3))
			(trainHasExitedStation T4)
			(trainHasEndedVoy T4)
			(assign (timeElapsedReservedItinerary IW3) 0 )
		)
	)
	(:action T5_beginsVoy_S_III_I3W
		:parameters()
		:precondition (and
			(>= time  404 )
			(trainIsStoppingAtStop T5 S_III)
			(not (binBitIsBlocked cdbam))
			(not (binBitIsBlocked cdbaj))
			(not (binBitIsBlocked cdbaf))
			(not (binBitIsBlocked cdbad))
			(not (binBitIsBlocked cdbab))
		)
		:effect (and
			(not (trainIsStoppingAtStop T5 S_III))
			(not (trainIsStopping T5))
			(trainHasBegunVoy T5)
			(not (stopIsOccupied S_III))
			(itineraryIsReserved I3W)
			(trainInItinerary T5 I3W)
			(binBitIsBlocked cdbam)
			(binBitIsBlocked cdbaj)
			(binBitIsBlocked cdbaf)
			(binBitIsBlocked cdbad)
			(binBitIsBlocked cdbab)
			(not (binBitIsBlocked cdbar))
			(not (binBitIsBlocked cdbaw))
			(not (binBitIsBlocked cdbbb))
		)
	)
	(:action T5_exitsStation_I3W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T5 I3W)
			(not (trainHasExitedStation T5))
		)
		:effect (and
			(not (itineraryIsReserved I3W))
			(not (trainInItinerary T5 I3W))
			(trainExitsStationAt T5 F02)
			(assign (timeElapsedReservedItinerary I3W) 0 )
			(trainHasExitedStation T5)
			(not (binBitIsBlocked cdbab))
		)
	)
	(:event T5_completeItinerary_I3W
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3W) 60 )
			(itineraryIsReserved I3W)
			(trainInItinerary T5 I3W)
			(not (trainHasCompletedItinerary T5 I3W))
			(not (trainHasExitedStation T5))
		)
		:effect (and
			(trainHasCompletedItinerary T5 I3W)
		)
	)
	(:event T5_completeBinBit_I3W_cdbam
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3W) 12 )
			(trainInItinerary T5 I3W)
			(binBitIsBlocked cdbam)
		)
		:effect (and
			(not (binBitIsBlocked cdbam))
		)
	)
	(:event T5_completeBinBit_I3W_cdbaj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3W) 24 )
			(trainInItinerary T5 I3W)
			(binBitIsBlocked cdbaj)
		)
		:effect (and
			(not (binBitIsBlocked cdbaj))
		)
	)
	(:event T5_completeBinBit_I3W_cdbaf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3W) 36 )
			(trainInItinerary T5 I3W)
			(binBitIsBlocked cdbaf)
		)
		:effect (and
			(not (binBitIsBlocked cdbaf))
		)
	)
	(:event T5_completeBinBit_I3W_cdbad
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3W) 48 )
			(trainInItinerary T5 I3W)
			(binBitIsBlocked cdbad)
		)
		:effect (and
			(not (binBitIsBlocked cdbad))
		)
	)
	(:event T6_arrivesAtEndpoint_E_plus
		:parameters()
		:precondition (and
			(>= time  3239 )
			(not (trainHasEnteredStation T6))
			(not (trainIsAtEndpoint T6 E_plus))
		)
		:effect (and
			(trainIsAtEndpoint T6 E_plus)
			(trainHasArrivedAtStation T6)
			(assign (trainEntryIndex T6) (trainsArrivedAtEndpoint E_plus))
			(increase (trainsArrivedAtEndpoint E_plus) 1 )
		)
	)
	(:action T6_entersStation_IE2
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T6 E_plus)
			(not (trainHasExitedStation T6))
			(not (trainHasEnteredStation T6))
			(= (trainEntryIndex T6) (trainsEnteredFromEndpoint E_plus))
			(not (binBitIsBlocked cdbbs))
			(not (binBitIsBlocked cdbbp))
			(not (binBitIsBlocked cdbbl))
			(not (binBitIsBlocked cdbbj))
			(not (binBitIsBlocked cdbbf))
			(not (binBitIsBlocked cdbba))
			(not (binBitIsBlocked cdbav))
			(not (binBitIsBlocked cdbaq))
		)
		:effect (and
			(not (trainIsAtEndpoint T6 E_plus))
			(itineraryIsReserved IE2)
			(not (trainEntersStationAt T6 F04))
			(trainInItinerary T6 IE2)
			(trainHasEnteredStation T6)
			(increase (trainsEnteredFromEndpoint E_plus) 1 )
			(binBitIsBlocked cdbbs)
			(binBitIsBlocked cdbbp)
			(binBitIsBlocked cdbbl)
			(binBitIsBlocked cdbbj)
			(binBitIsBlocked cdbbf)
			(binBitIsBlocked cdbba)
			(binBitIsBlocked cdbav)
			(binBitIsBlocked cdbaq)
		)
	)
	(:event T6_completeItinerary_IE2
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 60 )
			(itineraryIsReserved IE2)
			(trainInItinerary T6 IE2)
			(not (trainHasCompletedItinerary T6 IE2))
			(not (trainHasExitedStation T6))
		)
		:effect (and
			(trainHasCompletedItinerary T6 IE2)
		)
	)
	(:event T6_completeBinBit_IE2_cdbbs
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 7 )
			(trainInItinerary T6 IE2)
			(binBitIsBlocked cdbbs)
		)
		:effect (and
			(not (binBitIsBlocked cdbbs))
		)
	)
	(:event T6_completeBinBit_IE2_cdbbp
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 15 )
			(trainInItinerary T6 IE2)
			(binBitIsBlocked cdbbp)
		)
		:effect (and
			(not (binBitIsBlocked cdbbp))
		)
	)
	(:event T6_completeBinBit_IE2_cdbbl
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 22 )
			(trainInItinerary T6 IE2)
			(binBitIsBlocked cdbbl)
		)
		:effect (and
			(not (binBitIsBlocked cdbbl))
		)
	)
	(:event T6_completeBinBit_IE2_cdbbj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 30 )
			(trainInItinerary T6 IE2)
			(binBitIsBlocked cdbbj)
		)
		:effect (and
			(not (binBitIsBlocked cdbbj))
		)
	)
	(:event T6_completeBinBit_IE2_cdbbf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 37 )
			(trainInItinerary T6 IE2)
			(binBitIsBlocked cdbbf)
		)
		:effect (and
			(not (binBitIsBlocked cdbbf))
		)
	)
	(:event T6_completeBinBit_IE2_cdbba
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 45 )
			(trainInItinerary T6 IE2)
			(binBitIsBlocked cdbba)
		)
		:effect (and
			(not (binBitIsBlocked cdbba))
		)
	)
	(:event T6_completeBinBit_IE2_cdbav
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 52 )
			(trainInItinerary T6 IE2)
			(binBitIsBlocked cdbav)
		)
		:effect (and
			(not (binBitIsBlocked cdbav))
		)
	)
	(:action T6_beginStop_IE2_S_II
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T6 IE2)
			(trainInItinerary T6 IE2)
			(not (trainIsOverlapping T6))
			(not (stopIsOccupied S_II))
			(not (trainIsStopping T6))
			(not (trainHasStoppedAtStop T6 S_II))
		)
		:effect (and
			(trainIsStoppingAtStop T6 S_II)
			(trainHasReachedTheStop T6 S_II)
			(trainHasReachedAStop T6)
			(trainIsStopping T6)
			(assign (trainStopTime T6) 0 )
			(stopIsOccupied S_II)
			(not (itineraryIsReserved IE2))
		)
	)
	(:event T6_endStop_IE2_S_II
		:parameters()
		:precondition (and
			(>= (trainStopTime T6) 100 )
			(trainInItinerary T6 IE2)
			(trainIsStoppingAtStop T6 S_II)
			(stopIsOccupied S_II)
		)
		:effect (and
			(assign (trainStopTime T6) 0 )
			(not (trainIsStoppingAtStop T6 S_II))
			(not (trainIsStopping T6))
			(trainHasStoppedAtStop T6 S_II)
			(trainHasStopped T6)
			(not (stopIsOccupied S_II))
			(not (binBitIsBlocked cdbbs))
			(not (binBitIsBlocked cdbbp))
			(not (binBitIsBlocked cdbbl))
			(not (binBitIsBlocked cdbbj))
			(not (binBitIsBlocked cdbbf))
			(not (binBitIsBlocked cdbba))
			(not (binBitIsBlocked cdbav))
			(not (binBitIsBlocked cdbaq))
		)
	)
	(:action T6_trainEndsVoy_IE2_S_II
		:parameters()
		:precondition (and
			(trainInItinerary T6 IE2)
			(trainHasStopped T6)
			(trainHasStoppedAtStop T6 S_II)
			(not (trainHasEndedVoy T6))
		)
		:effect (and
			(not (trainInItinerary T6 IE2))
			(trainHasExitedStation T6)
			(trainHasEndedVoy T6)
			(assign (timeElapsedReservedItinerary IE2) 0 )
		)
	)
	(:action T7_beginsVoy_S_V_I5E
		:parameters()
		:precondition (and
			(>= time  3754 )
			(trainIsStoppingAtStop T7 S_V)
			(not (binBitIsBlocked cdbbi))
			(not (binBitIsBlocked cdbbk))
			(not (binBitIsBlocked cdbbm))
			(not (binBitIsBlocked cdbbo))
			(not (binBitIsBlocked cdbbr))
		)
		:effect (and
			(not (trainIsStoppingAtStop T7 S_V))
			(not (trainIsStopping T7))
			(trainHasBegunVoy T7)
			(not (stopIsOccupied S_V))
			(itineraryIsReserved I5E)
			(trainInItinerary T7 I5E)
			(binBitIsBlocked cdbbi)
			(binBitIsBlocked cdbbk)
			(binBitIsBlocked cdbbm)
			(binBitIsBlocked cdbbo)
			(binBitIsBlocked cdbbr)
			(not (binBitIsBlocked cdbat))
			(not (binBitIsBlocked cdbay))
			(not (binBitIsBlocked cdbbd))
		)
	)
	(:action T7_exitsStation_I5E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T7 I5E)
			(not (trainHasExitedStation T7))
		)
		:effect (and
			(not (itineraryIsReserved I5E))
			(not (trainInItinerary T7 I5E))
			(trainExitsStationAt T7 F03)
			(assign (timeElapsedReservedItinerary I5E) 0 )
			(trainHasExitedStation T7)
			(not (binBitIsBlocked cdbbr))
		)
	)
	(:event T7_completeItinerary_I5E
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5E) 60 )
			(itineraryIsReserved I5E)
			(trainInItinerary T7 I5E)
			(not (trainHasCompletedItinerary T7 I5E))
			(not (trainHasExitedStation T7))
		)
		:effect (and
			(trainHasCompletedItinerary T7 I5E)
		)
	)
	(:event T7_completeBinBit_I5E_cdbbi
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5E) 12 )
			(trainInItinerary T7 I5E)
			(binBitIsBlocked cdbbi)
		)
		:effect (and
			(not (binBitIsBlocked cdbbi))
		)
	)
	(:event T7_completeBinBit_I5E_cdbbk
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5E) 24 )
			(trainInItinerary T7 I5E)
			(binBitIsBlocked cdbbk)
		)
		:effect (and
			(not (binBitIsBlocked cdbbk))
		)
	)
	(:event T7_completeBinBit_I5E_cdbbm
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5E) 36 )
			(trainInItinerary T7 I5E)
			(binBitIsBlocked cdbbm)
		)
		:effect (and
			(not (binBitIsBlocked cdbbm))
		)
	)
	(:event T7_completeBinBit_I5E_cdbbo
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5E) 48 )
			(trainInItinerary T7 I5E)
			(binBitIsBlocked cdbbo)
		)
		:effect (and
			(not (binBitIsBlocked cdbbo))
		)
	)
	(:action T8_beginsVoy_S_I_I1W
		:parameters()
		:precondition (and
			(>= time  3082 )
			(trainIsStoppingAtStop T8 S_I)
			(not (binBitIsBlocked cdbai))
			(not (binBitIsBlocked cdbaf))
			(not (binBitIsBlocked cdbad))
			(not (binBitIsBlocked cdbab))
		)
		:effect (and
			(not (trainIsStoppingAtStop T8 S_I))
			(not (trainIsStopping T8))
			(trainHasBegunVoy T8)
			(not (stopIsOccupied S_I))
			(itineraryIsReserved I1W)
			(trainInItinerary T8 I1W)
			(binBitIsBlocked cdbai)
			(binBitIsBlocked cdbaf)
			(binBitIsBlocked cdbad)
			(binBitIsBlocked cdbab)
			(not (binBitIsBlocked cdbap))
			(not (binBitIsBlocked cdbau))
			(not (binBitIsBlocked cdbaz))
		)
	)
	(:action T8_exitsStation_I1W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T8 I1W)
			(not (trainHasExitedStation T8))
		)
		:effect (and
			(not (itineraryIsReserved I1W))
			(not (trainInItinerary T8 I1W))
			(trainExitsStationAt T8 F02)
			(assign (timeElapsedReservedItinerary I1W) 0 )
			(trainHasExitedStation T8)
			(not (binBitIsBlocked cdbab))
		)
	)
	(:event T8_completeItinerary_I1W
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1W) 60 )
			(itineraryIsReserved I1W)
			(trainInItinerary T8 I1W)
			(not (trainHasCompletedItinerary T8 I1W))
			(not (trainHasExitedStation T8))
		)
		:effect (and
			(trainHasCompletedItinerary T8 I1W)
		)
	)
	(:event T8_completeBinBit_I1W_cdbai
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1W) 15 )
			(trainInItinerary T8 I1W)
			(binBitIsBlocked cdbai)
		)
		:effect (and
			(not (binBitIsBlocked cdbai))
		)
	)
	(:event T8_completeBinBit_I1W_cdbaf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1W) 30 )
			(trainInItinerary T8 I1W)
			(binBitIsBlocked cdbaf)
		)
		:effect (and
			(not (binBitIsBlocked cdbaf))
		)
	)
	(:event T8_completeBinBit_I1W_cdbad
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1W) 45 )
			(trainInItinerary T8 I1W)
			(binBitIsBlocked cdbad)
		)
		:effect (and
			(not (binBitIsBlocked cdbad))
		)
	)
	(:action T9_beginsVoy_S_IV_I4E
		:parameters()
		:precondition (and
			(>= time  3775 )
			(trainIsStoppingAtStop T9 S_IV)
			(not (binBitIsBlocked cdbbh))
			(not (binBitIsBlocked cdbbk))
			(not (binBitIsBlocked cdbbm))
			(not (binBitIsBlocked cdbbo))
			(not (binBitIsBlocked cdbbr))
		)
		:effect (and
			(not (trainIsStoppingAtStop T9 S_IV))
			(not (trainIsStopping T9))
			(trainHasBegunVoy T9)
			(not (stopIsOccupied S_IV))
			(itineraryIsReserved I4E)
			(trainInItinerary T9 I4E)
			(binBitIsBlocked cdbbh)
			(binBitIsBlocked cdbbk)
			(binBitIsBlocked cdbbm)
			(binBitIsBlocked cdbbo)
			(binBitIsBlocked cdbbr)
			(not (binBitIsBlocked cdbas))
			(not (binBitIsBlocked cdbax))
			(not (binBitIsBlocked cdbbc))
		)
	)
	(:action T9_exitsStation_I4E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T9 I4E)
			(not (trainHasExitedStation T9))
		)
		:effect (and
			(not (itineraryIsReserved I4E))
			(not (trainInItinerary T9 I4E))
			(trainExitsStationAt T9 F03)
			(assign (timeElapsedReservedItinerary I4E) 0 )
			(trainHasExitedStation T9)
			(not (binBitIsBlocked cdbbr))
		)
	)
	(:event T9_completeItinerary_I4E
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4E) 60 )
			(itineraryIsReserved I4E)
			(trainInItinerary T9 I4E)
			(not (trainHasCompletedItinerary T9 I4E))
			(not (trainHasExitedStation T9))
		)
		:effect (and
			(trainHasCompletedItinerary T9 I4E)
		)
	)
	(:event T9_completeBinBit_I4E_cdbbh
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4E) 12 )
			(trainInItinerary T9 I4E)
			(binBitIsBlocked cdbbh)
		)
		:effect (and
			(not (binBitIsBlocked cdbbh))
		)
	)
	(:event T9_completeBinBit_I4E_cdbbk
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4E) 24 )
			(trainInItinerary T9 I4E)
			(binBitIsBlocked cdbbk)
		)
		:effect (and
			(not (binBitIsBlocked cdbbk))
		)
	)
	(:event T9_completeBinBit_I4E_cdbbm
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4E) 36 )
			(trainInItinerary T9 I4E)
			(binBitIsBlocked cdbbm)
		)
		:effect (and
			(not (binBitIsBlocked cdbbm))
		)
	)
	(:event T9_completeBinBit_I4E_cdbbo
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4E) 48 )
			(trainInItinerary T9 I4E)
			(binBitIsBlocked cdbbo)
		)
		:effect (and
			(not (binBitIsBlocked cdbbo))
		)
	)
	(:action T10_beginsVoy_S_II_I2W
		:parameters()
		:precondition (and
			(>= time  3207 )
			(trainIsStoppingAtStop T10 S_II)
			(not (binBitIsBlocked cdbal))
			(not (binBitIsBlocked cdbaj))
			(not (binBitIsBlocked cdbaf))
			(not (binBitIsBlocked cdbad))
			(not (binBitIsBlocked cdbab))
		)
		:effect (and
			(not (trainIsStoppingAtStop T10 S_II))
			(not (trainIsStopping T10))
			(trainHasBegunVoy T10)
			(not (stopIsOccupied S_II))
			(itineraryIsReserved I2W)
			(trainInItinerary T10 I2W)
			(binBitIsBlocked cdbal)
			(binBitIsBlocked cdbaj)
			(binBitIsBlocked cdbaf)
			(binBitIsBlocked cdbad)
			(binBitIsBlocked cdbab)
			(not (binBitIsBlocked cdbaq))
			(not (binBitIsBlocked cdbav))
			(not (binBitIsBlocked cdbba))
		)
	)
	(:action T10_exitsStation_I2W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T10 I2W)
			(not (trainHasExitedStation T10))
		)
		:effect (and
			(not (itineraryIsReserved I2W))
			(not (trainInItinerary T10 I2W))
			(trainExitsStationAt T10 F02)
			(assign (timeElapsedReservedItinerary I2W) 0 )
			(trainHasExitedStation T10)
			(not (binBitIsBlocked cdbab))
		)
	)
	(:event T10_completeItinerary_I2W
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2W) 60 )
			(itineraryIsReserved I2W)
			(trainInItinerary T10 I2W)
			(not (trainHasCompletedItinerary T10 I2W))
			(not (trainHasExitedStation T10))
		)
		:effect (and
			(trainHasCompletedItinerary T10 I2W)
		)
	)
	(:event T10_completeBinBit_I2W_cdbal
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2W) 12 )
			(trainInItinerary T10 I2W)
			(binBitIsBlocked cdbal)
		)
		:effect (and
			(not (binBitIsBlocked cdbal))
		)
	)
	(:event T10_completeBinBit_I2W_cdbaj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2W) 24 )
			(trainInItinerary T10 I2W)
			(binBitIsBlocked cdbaj)
		)
		:effect (and
			(not (binBitIsBlocked cdbaj))
		)
	)
	(:event T10_completeBinBit_I2W_cdbaf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2W) 36 )
			(trainInItinerary T10 I2W)
			(binBitIsBlocked cdbaf)
		)
		:effect (and
			(not (binBitIsBlocked cdbaf))
		)
	)
	(:event T10_completeBinBit_I2W_cdbad
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2W) 48 )
			(trainInItinerary T10 I2W)
			(binBitIsBlocked cdbad)
		)
		:effect (and
			(not (binBitIsBlocked cdbad))
		)
	)
	(:event T11_arrivesAtEndpoint_E_plus
		:parameters()
		:precondition (and
			(>= time  1701 )
			(not (trainHasEnteredStation T11))
			(not (trainIsAtEndpoint T11 E_plus))
		)
		:effect (and
			(trainIsAtEndpoint T11 E_plus)
			(trainHasArrivedAtStation T11)
			(assign (trainEntryIndex T11) (trainsArrivedAtEndpoint E_plus))
			(increase (trainsArrivedAtEndpoint E_plus) 1 )
		)
	)
	(:action T11_entersStation_IE4
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T11 E_plus)
			(not (trainHasExitedStation T11))
			(not (trainHasEnteredStation T11))
			(= (trainEntryIndex T11) (trainsEnteredFromEndpoint E_plus))
			(not (binBitIsBlocked cdbbs))
			(not (binBitIsBlocked cdbbq))
			(not (binBitIsBlocked cdbbn))
			(not (binBitIsBlocked cdbbk))
			(not (binBitIsBlocked cdbbh))
			(not (binBitIsBlocked cdbbc))
			(not (binBitIsBlocked cdbax))
			(not (binBitIsBlocked cdbas))
		)
		:effect (and
			(not (trainIsAtEndpoint T11 E_plus))
			(itineraryIsReserved IE4)
			(not (trainEntersStationAt T11 F04))
			(trainInItinerary T11 IE4)
			(trainHasEnteredStation T11)
			(increase (trainsEnteredFromEndpoint E_plus) 1 )
			(binBitIsBlocked cdbbs)
			(binBitIsBlocked cdbbq)
			(binBitIsBlocked cdbbn)
			(binBitIsBlocked cdbbk)
			(binBitIsBlocked cdbbh)
			(binBitIsBlocked cdbbc)
			(binBitIsBlocked cdbax)
			(binBitIsBlocked cdbas)
		)
	)
	(:event T11_completeItinerary_IE4
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 60 )
			(itineraryIsReserved IE4)
			(trainInItinerary T11 IE4)
			(not (trainHasCompletedItinerary T11 IE4))
			(not (trainHasExitedStation T11))
		)
		:effect (and
			(trainHasCompletedItinerary T11 IE4)
		)
	)
	(:event T11_completeBinBit_IE4_cdbbs
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 7 )
			(trainInItinerary T11 IE4)
			(binBitIsBlocked cdbbs)
		)
		:effect (and
			(not (binBitIsBlocked cdbbs))
		)
	)
	(:event T11_completeBinBit_IE4_cdbbq
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 15 )
			(trainInItinerary T11 IE4)
			(binBitIsBlocked cdbbq)
		)
		:effect (and
			(not (binBitIsBlocked cdbbq))
		)
	)
	(:event T11_completeBinBit_IE4_cdbbn
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 22 )
			(trainInItinerary T11 IE4)
			(binBitIsBlocked cdbbn)
		)
		:effect (and
			(not (binBitIsBlocked cdbbn))
		)
	)
	(:event T11_completeBinBit_IE4_cdbbk
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 30 )
			(trainInItinerary T11 IE4)
			(binBitIsBlocked cdbbk)
		)
		:effect (and
			(not (binBitIsBlocked cdbbk))
		)
	)
	(:event T11_completeBinBit_IE4_cdbbh
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 37 )
			(trainInItinerary T11 IE4)
			(binBitIsBlocked cdbbh)
		)
		:effect (and
			(not (binBitIsBlocked cdbbh))
		)
	)
	(:event T11_completeBinBit_IE4_cdbbc
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 45 )
			(trainInItinerary T11 IE4)
			(binBitIsBlocked cdbbc)
		)
		:effect (and
			(not (binBitIsBlocked cdbbc))
		)
	)
	(:event T11_completeBinBit_IE4_cdbax
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 52 )
			(trainInItinerary T11 IE4)
			(binBitIsBlocked cdbax)
		)
		:effect (and
			(not (binBitIsBlocked cdbax))
		)
	)
	(:action T11_beginStop_IE4_S_IV
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T11 IE4)
			(trainInItinerary T11 IE4)
			(not (trainIsOverlapping T11))
			(not (stopIsOccupied S_IV))
			(not (trainIsStopping T11))
			(not (trainHasStoppedAtStop T11 S_IV))
		)
		:effect (and
			(trainIsStoppingAtStop T11 S_IV)
			(trainHasReachedTheStop T11 S_IV)
			(trainHasReachedAStop T11)
			(trainIsStopping T11)
			(assign (trainStopTime T11) 0 )
			(stopIsOccupied S_IV)
			(not (itineraryIsReserved IE4))
		)
	)
	(:event T11_endStop_IE4_S_IV
		:parameters()
		:precondition (and
			(>= (trainStopTime T11) 100 )
			(trainInItinerary T11 IE4)
			(trainIsStoppingAtStop T11 S_IV)
			(stopIsOccupied S_IV)
		)
		:effect (and
			(assign (trainStopTime T11) 0 )
			(not (trainIsStoppingAtStop T11 S_IV))
			(not (trainIsStopping T11))
			(trainHasStoppedAtStop T11 S_IV)
			(trainHasStopped T11)
			(not (stopIsOccupied S_IV))
			(not (binBitIsBlocked cdbbs))
			(not (binBitIsBlocked cdbbq))
			(not (binBitIsBlocked cdbbn))
			(not (binBitIsBlocked cdbbk))
			(not (binBitIsBlocked cdbbh))
			(not (binBitIsBlocked cdbbc))
			(not (binBitIsBlocked cdbax))
			(not (binBitIsBlocked cdbas))
		)
	)
	(:action T11_trainEndsVoy_IE4_S_IV
		:parameters()
		:precondition (and
			(trainInItinerary T11 IE4)
			(trainHasStopped T11)
			(trainHasStoppedAtStop T11 S_IV)
			(not (trainHasEndedVoy T11))
		)
		:effect (and
			(not (trainInItinerary T11 IE4))
			(trainHasExitedStation T11)
			(trainHasEndedVoy T11)
			(assign (timeElapsedReservedItinerary IE4) 0 )
		)
	)
	(:action T12_exitsStation_I1W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T12 I1W)
			(not (trainHasExitedStation T12))
		)
		:effect (and
			(not (itineraryIsReserved I1W))
			(not (trainInItinerary T12 I1W))
			(trainExitsStationAt T12 F02)
			(assign (timeElapsedReservedItinerary I1W) 0 )
			(trainHasExitedStation T12)
			(not (binBitIsBlocked cdbab))
		)
	)
	(:action T12_exitsStation_I2W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T12 I2W)
			(not (trainHasExitedStation T12))
		)
		:effect (and
			(not (itineraryIsReserved I2W))
			(not (trainInItinerary T12 I2W))
			(trainExitsStationAt T12 F02)
			(assign (timeElapsedReservedItinerary I2W) 0 )
			(trainHasExitedStation T12)
			(not (binBitIsBlocked cdbab))
		)
	)
	(:action T12_exitsStation_I3W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T12 I3W)
			(not (trainHasExitedStation T12))
		)
		:effect (and
			(not (itineraryIsReserved I3W))
			(not (trainInItinerary T12 I3W))
			(trainExitsStationAt T12 F02)
			(assign (timeElapsedReservedItinerary I3W) 0 )
			(trainHasExitedStation T12)
			(not (binBitIsBlocked cdbab))
		)
	)
	(:action T12_exitsStation_I4W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T12 I4W)
			(not (trainHasExitedStation T12))
		)
		:effect (and
			(not (itineraryIsReserved I4W))
			(not (trainInItinerary T12 I4W))
			(trainExitsStationAt T12 F02)
			(assign (timeElapsedReservedItinerary I4W) 0 )
			(trainHasExitedStation T12)
			(not (binBitIsBlocked cdbab))
		)
	)
	(:action T12_exitsStation_I5W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T12 I5W)
			(not (trainHasExitedStation T12))
		)
		:effect (and
			(not (itineraryIsReserved I5W))
			(not (trainInItinerary T12 I5W))
			(trainExitsStationAt T12 F02)
			(assign (timeElapsedReservedItinerary I5W) 0 )
			(trainHasExitedStation T12)
			(not (binBitIsBlocked cdbab))
		)
	)
	(:event T12_arrivesAtEndpoint_E_plus
		:parameters()
		:precondition (and
			(>= time  2380 )
			(not (trainHasEnteredStation T12))
			(not (trainIsAtEndpoint T12 E_plus))
		)
		:effect (and
			(trainIsAtEndpoint T12 E_plus)
			(trainHasArrivedAtStation T12)
			(assign (trainEntryIndex T12) (trainsArrivedAtEndpoint E_plus))
			(increase (trainsArrivedAtEndpoint E_plus) 1 )
		)
	)
	(:action T12_entersStation_IE1
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T12 E_plus)
			(not (trainHasExitedStation T12))
			(not (trainHasEnteredStation T12))
			(= (trainEntryIndex T12) (trainsEnteredFromEndpoint E_plus))
			(not (binBitIsBlocked cdbbs))
			(not (binBitIsBlocked cdbbp))
			(not (binBitIsBlocked cdbbl))
			(not (binBitIsBlocked cdbbe))
			(not (binBitIsBlocked cdbaz))
			(not (binBitIsBlocked cdbau))
			(not (binBitIsBlocked cdbap))
		)
		:effect (and
			(not (trainIsAtEndpoint T12 E_plus))
			(itineraryIsReserved IE1)
			(not (trainEntersStationAt T12 F04))
			(trainInItinerary T12 IE1)
			(trainHasEnteredStation T12)
			(increase (trainsEnteredFromEndpoint E_plus) 1 )
			(binBitIsBlocked cdbbs)
			(binBitIsBlocked cdbbp)
			(binBitIsBlocked cdbbl)
			(binBitIsBlocked cdbbe)
			(binBitIsBlocked cdbaz)
			(binBitIsBlocked cdbau)
			(binBitIsBlocked cdbap)
		)
	)
	(:action T12_entersStation_IE2
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T12 E_plus)
			(not (trainHasExitedStation T12))
			(not (trainHasEnteredStation T12))
			(= (trainEntryIndex T12) (trainsEnteredFromEndpoint E_plus))
			(not (binBitIsBlocked cdbbs))
			(not (binBitIsBlocked cdbbp))
			(not (binBitIsBlocked cdbbl))
			(not (binBitIsBlocked cdbbj))
			(not (binBitIsBlocked cdbbf))
			(not (binBitIsBlocked cdbba))
			(not (binBitIsBlocked cdbav))
			(not (binBitIsBlocked cdbaq))
		)
		:effect (and
			(not (trainIsAtEndpoint T12 E_plus))
			(itineraryIsReserved IE2)
			(not (trainEntersStationAt T12 F04))
			(trainInItinerary T12 IE2)
			(trainHasEnteredStation T12)
			(increase (trainsEnteredFromEndpoint E_plus) 1 )
			(binBitIsBlocked cdbbs)
			(binBitIsBlocked cdbbp)
			(binBitIsBlocked cdbbl)
			(binBitIsBlocked cdbbj)
			(binBitIsBlocked cdbbf)
			(binBitIsBlocked cdbba)
			(binBitIsBlocked cdbav)
			(binBitIsBlocked cdbaq)
		)
	)
	(:action T12_entersStation_IE3
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T12 E_plus)
			(not (trainHasExitedStation T12))
			(not (trainHasEnteredStation T12))
			(= (trainEntryIndex T12) (trainsEnteredFromEndpoint E_plus))
			(not (binBitIsBlocked cdbbs))
			(not (binBitIsBlocked cdbbp))
			(not (binBitIsBlocked cdbbl))
			(not (binBitIsBlocked cdbbj))
			(not (binBitIsBlocked cdbbg))
			(not (binBitIsBlocked cdbbb))
			(not (binBitIsBlocked cdbaw))
			(not (binBitIsBlocked cdbar))
		)
		:effect (and
			(not (trainIsAtEndpoint T12 E_plus))
			(itineraryIsReserved IE3)
			(not (trainEntersStationAt T12 F04))
			(trainInItinerary T12 IE3)
			(trainHasEnteredStation T12)
			(increase (trainsEnteredFromEndpoint E_plus) 1 )
			(binBitIsBlocked cdbbs)
			(binBitIsBlocked cdbbp)
			(binBitIsBlocked cdbbl)
			(binBitIsBlocked cdbbj)
			(binBitIsBlocked cdbbg)
			(binBitIsBlocked cdbbb)
			(binBitIsBlocked cdbaw)
			(binBitIsBlocked cdbar)
		)
	)
	(:action T12_entersStation_IE4
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T12 E_plus)
			(not (trainHasExitedStation T12))
			(not (trainHasEnteredStation T12))
			(= (trainEntryIndex T12) (trainsEnteredFromEndpoint E_plus))
			(not (binBitIsBlocked cdbbs))
			(not (binBitIsBlocked cdbbq))
			(not (binBitIsBlocked cdbbn))
			(not (binBitIsBlocked cdbbk))
			(not (binBitIsBlocked cdbbh))
			(not (binBitIsBlocked cdbbc))
			(not (binBitIsBlocked cdbax))
			(not (binBitIsBlocked cdbas))
		)
		:effect (and
			(not (trainIsAtEndpoint T12 E_plus))
			(itineraryIsReserved IE4)
			(not (trainEntersStationAt T12 F04))
			(trainInItinerary T12 IE4)
			(trainHasEnteredStation T12)
			(increase (trainsEnteredFromEndpoint E_plus) 1 )
			(binBitIsBlocked cdbbs)
			(binBitIsBlocked cdbbq)
			(binBitIsBlocked cdbbn)
			(binBitIsBlocked cdbbk)
			(binBitIsBlocked cdbbh)
			(binBitIsBlocked cdbbc)
			(binBitIsBlocked cdbax)
			(binBitIsBlocked cdbas)
		)
	)
	(:action T12_entersStation_IE5
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T12 E_plus)
			(not (trainHasExitedStation T12))
			(not (trainHasEnteredStation T12))
			(= (trainEntryIndex T12) (trainsEnteredFromEndpoint E_plus))
			(not (binBitIsBlocked cdbbs))
			(not (binBitIsBlocked cdbbq))
			(not (binBitIsBlocked cdbbn))
			(not (binBitIsBlocked cdbbk))
			(not (binBitIsBlocked cdbbi))
			(not (binBitIsBlocked cdbbd))
			(not (binBitIsBlocked cdbay))
			(not (binBitIsBlocked cdbat))
		)
		:effect (and
			(not (trainIsAtEndpoint T12 E_plus))
			(itineraryIsReserved IE5)
			(not (trainEntersStationAt T12 F04))
			(trainInItinerary T12 IE5)
			(trainHasEnteredStation T12)
			(increase (trainsEnteredFromEndpoint E_plus) 1 )
			(binBitIsBlocked cdbbs)
			(binBitIsBlocked cdbbq)
			(binBitIsBlocked cdbbn)
			(binBitIsBlocked cdbbk)
			(binBitIsBlocked cdbbi)
			(binBitIsBlocked cdbbd)
			(binBitIsBlocked cdbay)
			(binBitIsBlocked cdbat)
		)
	)
	(:event T12_completeItinerary_IE1
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 60 )
			(itineraryIsReserved IE1)
			(trainInItinerary T12 IE1)
			(not (trainHasCompletedItinerary T12 IE1))
			(not (trainHasExitedStation T12))
		)
		:effect (and
			(trainHasCompletedItinerary T12 IE1)
		)
	)
	(:event T12_completeBinBit_IE1_cdbbs
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 8 )
			(trainInItinerary T12 IE1)
			(binBitIsBlocked cdbbs)
		)
		:effect (and
			(not (binBitIsBlocked cdbbs))
		)
	)
	(:event T12_completeBinBit_IE1_cdbbp
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 17 )
			(trainInItinerary T12 IE1)
			(binBitIsBlocked cdbbp)
		)
		:effect (and
			(not (binBitIsBlocked cdbbp))
		)
	)
	(:event T12_completeBinBit_IE1_cdbbl
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 25 )
			(trainInItinerary T12 IE1)
			(binBitIsBlocked cdbbl)
		)
		:effect (and
			(not (binBitIsBlocked cdbbl))
		)
	)
	(:event T12_completeBinBit_IE1_cdbbe
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 34 )
			(trainInItinerary T12 IE1)
			(binBitIsBlocked cdbbe)
		)
		:effect (and
			(not (binBitIsBlocked cdbbe))
		)
	)
	(:event T12_completeBinBit_IE1_cdbaz
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 42 )
			(trainInItinerary T12 IE1)
			(binBitIsBlocked cdbaz)
		)
		:effect (and
			(not (binBitIsBlocked cdbaz))
		)
	)
	(:event T12_completeBinBit_IE1_cdbau
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 51 )
			(trainInItinerary T12 IE1)
			(binBitIsBlocked cdbau)
		)
		:effect (and
			(not (binBitIsBlocked cdbau))
		)
	)
	(:event T12_completeItinerary_I1W
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1W) 60 )
			(itineraryIsReserved I1W)
			(trainInItinerary T12 I1W)
			(not (trainHasCompletedItinerary T12 I1W))
			(not (trainHasExitedStation T12))
		)
		:effect (and
			(trainHasCompletedItinerary T12 I1W)
		)
	)
	(:event T12_completeBinBit_I1W_cdbai
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1W) 15 )
			(trainInItinerary T12 I1W)
			(binBitIsBlocked cdbai)
		)
		:effect (and
			(not (binBitIsBlocked cdbai))
		)
	)
	(:event T12_completeBinBit_I1W_cdbaf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1W) 30 )
			(trainInItinerary T12 I1W)
			(binBitIsBlocked cdbaf)
		)
		:effect (and
			(not (binBitIsBlocked cdbaf))
		)
	)
	(:event T12_completeBinBit_I1W_cdbad
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1W) 45 )
			(trainInItinerary T12 I1W)
			(binBitIsBlocked cdbad)
		)
		:effect (and
			(not (binBitIsBlocked cdbad))
		)
	)
	(:event T12_completeItinerary_IE2
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 60 )
			(itineraryIsReserved IE2)
			(trainInItinerary T12 IE2)
			(not (trainHasCompletedItinerary T12 IE2))
			(not (trainHasExitedStation T12))
		)
		:effect (and
			(trainHasCompletedItinerary T12 IE2)
		)
	)
	(:event T12_completeBinBit_IE2_cdbbs
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 7 )
			(trainInItinerary T12 IE2)
			(binBitIsBlocked cdbbs)
		)
		:effect (and
			(not (binBitIsBlocked cdbbs))
		)
	)
	(:event T12_completeBinBit_IE2_cdbbp
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 15 )
			(trainInItinerary T12 IE2)
			(binBitIsBlocked cdbbp)
		)
		:effect (and
			(not (binBitIsBlocked cdbbp))
		)
	)
	(:event T12_completeBinBit_IE2_cdbbl
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 22 )
			(trainInItinerary T12 IE2)
			(binBitIsBlocked cdbbl)
		)
		:effect (and
			(not (binBitIsBlocked cdbbl))
		)
	)
	(:event T12_completeBinBit_IE2_cdbbj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 30 )
			(trainInItinerary T12 IE2)
			(binBitIsBlocked cdbbj)
		)
		:effect (and
			(not (binBitIsBlocked cdbbj))
		)
	)
	(:event T12_completeBinBit_IE2_cdbbf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 37 )
			(trainInItinerary T12 IE2)
			(binBitIsBlocked cdbbf)
		)
		:effect (and
			(not (binBitIsBlocked cdbbf))
		)
	)
	(:event T12_completeBinBit_IE2_cdbba
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 45 )
			(trainInItinerary T12 IE2)
			(binBitIsBlocked cdbba)
		)
		:effect (and
			(not (binBitIsBlocked cdbba))
		)
	)
	(:event T12_completeBinBit_IE2_cdbav
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 52 )
			(trainInItinerary T12 IE2)
			(binBitIsBlocked cdbav)
		)
		:effect (and
			(not (binBitIsBlocked cdbav))
		)
	)
	(:event T12_completeItinerary_I2W
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2W) 60 )
			(itineraryIsReserved I2W)
			(trainInItinerary T12 I2W)
			(not (trainHasCompletedItinerary T12 I2W))
			(not (trainHasExitedStation T12))
		)
		:effect (and
			(trainHasCompletedItinerary T12 I2W)
		)
	)
	(:event T12_completeBinBit_I2W_cdbal
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2W) 12 )
			(trainInItinerary T12 I2W)
			(binBitIsBlocked cdbal)
		)
		:effect (and
			(not (binBitIsBlocked cdbal))
		)
	)
	(:event T12_completeBinBit_I2W_cdbaj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2W) 24 )
			(trainInItinerary T12 I2W)
			(binBitIsBlocked cdbaj)
		)
		:effect (and
			(not (binBitIsBlocked cdbaj))
		)
	)
	(:event T12_completeBinBit_I2W_cdbaf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2W) 36 )
			(trainInItinerary T12 I2W)
			(binBitIsBlocked cdbaf)
		)
		:effect (and
			(not (binBitIsBlocked cdbaf))
		)
	)
	(:event T12_completeBinBit_I2W_cdbad
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2W) 48 )
			(trainInItinerary T12 I2W)
			(binBitIsBlocked cdbad)
		)
		:effect (and
			(not (binBitIsBlocked cdbad))
		)
	)
	(:event T12_completeItinerary_IE3
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 60 )
			(itineraryIsReserved IE3)
			(trainInItinerary T12 IE3)
			(not (trainHasCompletedItinerary T12 IE3))
			(not (trainHasExitedStation T12))
		)
		:effect (and
			(trainHasCompletedItinerary T12 IE3)
		)
	)
	(:event T12_completeBinBit_IE3_cdbbs
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 7 )
			(trainInItinerary T12 IE3)
			(binBitIsBlocked cdbbs)
		)
		:effect (and
			(not (binBitIsBlocked cdbbs))
		)
	)
	(:event T12_completeBinBit_IE3_cdbbp
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 15 )
			(trainInItinerary T12 IE3)
			(binBitIsBlocked cdbbp)
		)
		:effect (and
			(not (binBitIsBlocked cdbbp))
		)
	)
	(:event T12_completeBinBit_IE3_cdbbl
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 22 )
			(trainInItinerary T12 IE3)
			(binBitIsBlocked cdbbl)
		)
		:effect (and
			(not (binBitIsBlocked cdbbl))
		)
	)
	(:event T12_completeBinBit_IE3_cdbbj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 30 )
			(trainInItinerary T12 IE3)
			(binBitIsBlocked cdbbj)
		)
		:effect (and
			(not (binBitIsBlocked cdbbj))
		)
	)
	(:event T12_completeBinBit_IE3_cdbbg
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 37 )
			(trainInItinerary T12 IE3)
			(binBitIsBlocked cdbbg)
		)
		:effect (and
			(not (binBitIsBlocked cdbbg))
		)
	)
	(:event T12_completeBinBit_IE3_cdbbb
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 45 )
			(trainInItinerary T12 IE3)
			(binBitIsBlocked cdbbb)
		)
		:effect (and
			(not (binBitIsBlocked cdbbb))
		)
	)
	(:event T12_completeBinBit_IE3_cdbaw
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 52 )
			(trainInItinerary T12 IE3)
			(binBitIsBlocked cdbaw)
		)
		:effect (and
			(not (binBitIsBlocked cdbaw))
		)
	)
	(:event T12_completeItinerary_I3W
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3W) 60 )
			(itineraryIsReserved I3W)
			(trainInItinerary T12 I3W)
			(not (trainHasCompletedItinerary T12 I3W))
			(not (trainHasExitedStation T12))
		)
		:effect (and
			(trainHasCompletedItinerary T12 I3W)
		)
	)
	(:event T12_completeBinBit_I3W_cdbam
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3W) 12 )
			(trainInItinerary T12 I3W)
			(binBitIsBlocked cdbam)
		)
		:effect (and
			(not (binBitIsBlocked cdbam))
		)
	)
	(:event T12_completeBinBit_I3W_cdbaj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3W) 24 )
			(trainInItinerary T12 I3W)
			(binBitIsBlocked cdbaj)
		)
		:effect (and
			(not (binBitIsBlocked cdbaj))
		)
	)
	(:event T12_completeBinBit_I3W_cdbaf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3W) 36 )
			(trainInItinerary T12 I3W)
			(binBitIsBlocked cdbaf)
		)
		:effect (and
			(not (binBitIsBlocked cdbaf))
		)
	)
	(:event T12_completeBinBit_I3W_cdbad
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3W) 48 )
			(trainInItinerary T12 I3W)
			(binBitIsBlocked cdbad)
		)
		:effect (and
			(not (binBitIsBlocked cdbad))
		)
	)
	(:event T12_completeItinerary_IE4
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 60 )
			(itineraryIsReserved IE4)
			(trainInItinerary T12 IE4)
			(not (trainHasCompletedItinerary T12 IE4))
			(not (trainHasExitedStation T12))
		)
		:effect (and
			(trainHasCompletedItinerary T12 IE4)
		)
	)
	(:event T12_completeBinBit_IE4_cdbbs
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 7 )
			(trainInItinerary T12 IE4)
			(binBitIsBlocked cdbbs)
		)
		:effect (and
			(not (binBitIsBlocked cdbbs))
		)
	)
	(:event T12_completeBinBit_IE4_cdbbq
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 15 )
			(trainInItinerary T12 IE4)
			(binBitIsBlocked cdbbq)
		)
		:effect (and
			(not (binBitIsBlocked cdbbq))
		)
	)
	(:event T12_completeBinBit_IE4_cdbbn
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 22 )
			(trainInItinerary T12 IE4)
			(binBitIsBlocked cdbbn)
		)
		:effect (and
			(not (binBitIsBlocked cdbbn))
		)
	)
	(:event T12_completeBinBit_IE4_cdbbk
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 30 )
			(trainInItinerary T12 IE4)
			(binBitIsBlocked cdbbk)
		)
		:effect (and
			(not (binBitIsBlocked cdbbk))
		)
	)
	(:event T12_completeBinBit_IE4_cdbbh
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 37 )
			(trainInItinerary T12 IE4)
			(binBitIsBlocked cdbbh)
		)
		:effect (and
			(not (binBitIsBlocked cdbbh))
		)
	)
	(:event T12_completeBinBit_IE4_cdbbc
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 45 )
			(trainInItinerary T12 IE4)
			(binBitIsBlocked cdbbc)
		)
		:effect (and
			(not (binBitIsBlocked cdbbc))
		)
	)
	(:event T12_completeBinBit_IE4_cdbax
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 52 )
			(trainInItinerary T12 IE4)
			(binBitIsBlocked cdbax)
		)
		:effect (and
			(not (binBitIsBlocked cdbax))
		)
	)
	(:event T12_completeItinerary_I4W
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4W) 60 )
			(itineraryIsReserved I4W)
			(trainInItinerary T12 I4W)
			(not (trainHasCompletedItinerary T12 I4W))
			(not (trainHasExitedStation T12))
		)
		:effect (and
			(trainHasCompletedItinerary T12 I4W)
		)
	)
	(:event T12_completeBinBit_I4W_cdban
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4W) 12 )
			(trainInItinerary T12 I4W)
			(binBitIsBlocked cdban)
		)
		:effect (and
			(not (binBitIsBlocked cdban))
		)
	)
	(:event T12_completeBinBit_I4W_cdbak
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4W) 24 )
			(trainInItinerary T12 I4W)
			(binBitIsBlocked cdbak)
		)
		:effect (and
			(not (binBitIsBlocked cdbak))
		)
	)
	(:event T12_completeBinBit_I4W_cdbah
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4W) 36 )
			(trainInItinerary T12 I4W)
			(binBitIsBlocked cdbah)
		)
		:effect (and
			(not (binBitIsBlocked cdbah))
		)
	)
	(:event T12_completeBinBit_I4W_cdbae
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4W) 48 )
			(trainInItinerary T12 I4W)
			(binBitIsBlocked cdbae)
		)
		:effect (and
			(not (binBitIsBlocked cdbae))
		)
	)
	(:event T12_completeItinerary_IE5
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 60 )
			(itineraryIsReserved IE5)
			(trainInItinerary T12 IE5)
			(not (trainHasCompletedItinerary T12 IE5))
			(not (trainHasExitedStation T12))
		)
		:effect (and
			(trainHasCompletedItinerary T12 IE5)
		)
	)
	(:event T12_completeBinBit_IE5_cdbbs
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 7 )
			(trainInItinerary T12 IE5)
			(binBitIsBlocked cdbbs)
		)
		:effect (and
			(not (binBitIsBlocked cdbbs))
		)
	)
	(:event T12_completeBinBit_IE5_cdbbq
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 15 )
			(trainInItinerary T12 IE5)
			(binBitIsBlocked cdbbq)
		)
		:effect (and
			(not (binBitIsBlocked cdbbq))
		)
	)
	(:event T12_completeBinBit_IE5_cdbbn
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 22 )
			(trainInItinerary T12 IE5)
			(binBitIsBlocked cdbbn)
		)
		:effect (and
			(not (binBitIsBlocked cdbbn))
		)
	)
	(:event T12_completeBinBit_IE5_cdbbk
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 30 )
			(trainInItinerary T12 IE5)
			(binBitIsBlocked cdbbk)
		)
		:effect (and
			(not (binBitIsBlocked cdbbk))
		)
	)
	(:event T12_completeBinBit_IE5_cdbbi
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 37 )
			(trainInItinerary T12 IE5)
			(binBitIsBlocked cdbbi)
		)
		:effect (and
			(not (binBitIsBlocked cdbbi))
		)
	)
	(:event T12_completeBinBit_IE5_cdbbd
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 45 )
			(trainInItinerary T12 IE5)
			(binBitIsBlocked cdbbd)
		)
		:effect (and
			(not (binBitIsBlocked cdbbd))
		)
	)
	(:event T12_completeBinBit_IE5_cdbay
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 52 )
			(trainInItinerary T12 IE5)
			(binBitIsBlocked cdbay)
		)
		:effect (and
			(not (binBitIsBlocked cdbay))
		)
	)
	(:event T12_completeItinerary_I5W
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5W) 60 )
			(itineraryIsReserved I5W)
			(trainInItinerary T12 I5W)
			(not (trainHasCompletedItinerary T12 I5W))
			(not (trainHasExitedStation T12))
		)
		:effect (and
			(trainHasCompletedItinerary T12 I5W)
		)
	)
	(:event T12_completeBinBit_I5W_cdbao
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5W) 12 )
			(trainInItinerary T12 I5W)
			(binBitIsBlocked cdbao)
		)
		:effect (and
			(not (binBitIsBlocked cdbao))
		)
	)
	(:event T12_completeBinBit_I5W_cdbak
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5W) 24 )
			(trainInItinerary T12 I5W)
			(binBitIsBlocked cdbak)
		)
		:effect (and
			(not (binBitIsBlocked cdbak))
		)
	)
	(:event T12_completeBinBit_I5W_cdbah
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5W) 36 )
			(trainInItinerary T12 I5W)
			(binBitIsBlocked cdbah)
		)
		:effect (and
			(not (binBitIsBlocked cdbah))
		)
	)
	(:event T12_completeBinBit_I5W_cdbae
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5W) 48 )
			(trainInItinerary T12 I5W)
			(binBitIsBlocked cdbae)
		)
		:effect (and
			(not (binBitIsBlocked cdbae))
		)
	)
	(:action T12_overlaps_IE1_I1W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T12 IE1)
			(trainInItinerary T12 IE1)
			(not (trainIsStopping T12))
			(not (itineraryIsReserved I1W))
			(not (flagIsBlockedDueToOverlap F1L))
			(not (binBitIsBlocked cdbai))
			(not (binBitIsBlocked cdbaf))
			(not (binBitIsBlocked cdbad))
			(not (binBitIsBlocked cdbab))
		)
		:effect (and
			(itineraryIsReserved I1W)
			(trainInItinerary T12 I1W)
			(trainIsOverlapping T12)
			(flagIsBlockedDueToOverlap F1L)
			(binBitIsBlocked cdbai)
			(binBitIsBlocked cdbaf)
			(binBitIsBlocked cdbad)
			(binBitIsBlocked cdbab)
		)
	)
	(:event T12_endOverlap_IE1_I1W
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F1L) 1 )
			(flagIsBlockedDueToOverlap F1L)
			(trainInItinerary T12 IE1)
			(trainInItinerary T12 I1W)
		)
		:effect (and
			(not (itineraryIsReserved IE1))
			(not (trainIsOverlapping T12))
			(assign (timeElapsedReservedItinerary IE1) 0 )
			(not (trainInItinerary T12 IE1))
			(not (flagIsBlockedDueToOverlap F1L))
			(assign (timeElapsedOverlappedFlag F1L) 0 )
			(not (binBitIsBlocked cdbap))
		)
	)
	(:action T12_overlaps_IE2_I2W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T12 IE2)
			(trainInItinerary T12 IE2)
			(not (trainIsStopping T12))
			(not (itineraryIsReserved I2W))
			(not (flagIsBlockedDueToOverlap F2L))
			(not (binBitIsBlocked cdbal))
			(not (binBitIsBlocked cdbaj))
			(not (binBitIsBlocked cdbaf))
			(not (binBitIsBlocked cdbad))
			(not (binBitIsBlocked cdbab))
		)
		:effect (and
			(itineraryIsReserved I2W)
			(trainInItinerary T12 I2W)
			(trainIsOverlapping T12)
			(flagIsBlockedDueToOverlap F2L)
			(binBitIsBlocked cdbal)
			(binBitIsBlocked cdbaj)
			(binBitIsBlocked cdbaf)
			(binBitIsBlocked cdbad)
			(binBitIsBlocked cdbab)
		)
	)
	(:event T12_endOverlap_IE2_I2W
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F2L) 1 )
			(flagIsBlockedDueToOverlap F2L)
			(trainInItinerary T12 IE2)
			(trainInItinerary T12 I2W)
		)
		:effect (and
			(not (itineraryIsReserved IE2))
			(not (trainIsOverlapping T12))
			(assign (timeElapsedReservedItinerary IE2) 0 )
			(not (trainInItinerary T12 IE2))
			(not (flagIsBlockedDueToOverlap F2L))
			(assign (timeElapsedOverlappedFlag F2L) 0 )
			(not (binBitIsBlocked cdbaq))
		)
	)
	(:action T12_overlaps_IE3_I3W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T12 IE3)
			(trainInItinerary T12 IE3)
			(not (trainIsStopping T12))
			(not (itineraryIsReserved I3W))
			(not (flagIsBlockedDueToOverlap F3L))
			(not (binBitIsBlocked cdbam))
			(not (binBitIsBlocked cdbaj))
			(not (binBitIsBlocked cdbaf))
			(not (binBitIsBlocked cdbad))
			(not (binBitIsBlocked cdbab))
		)
		:effect (and
			(itineraryIsReserved I3W)
			(trainInItinerary T12 I3W)
			(trainIsOverlapping T12)
			(flagIsBlockedDueToOverlap F3L)
			(binBitIsBlocked cdbam)
			(binBitIsBlocked cdbaj)
			(binBitIsBlocked cdbaf)
			(binBitIsBlocked cdbad)
			(binBitIsBlocked cdbab)
		)
	)
	(:event T12_endOverlap_IE3_I3W
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F3L) 1 )
			(flagIsBlockedDueToOverlap F3L)
			(trainInItinerary T12 IE3)
			(trainInItinerary T12 I3W)
		)
		:effect (and
			(not (itineraryIsReserved IE3))
			(not (trainIsOverlapping T12))
			(assign (timeElapsedReservedItinerary IE3) 0 )
			(not (trainInItinerary T12 IE3))
			(not (flagIsBlockedDueToOverlap F3L))
			(assign (timeElapsedOverlappedFlag F3L) 0 )
			(not (binBitIsBlocked cdbar))
		)
	)
	(:action T12_overlaps_IE4_I4W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T12 IE4)
			(trainInItinerary T12 IE4)
			(not (trainIsStopping T12))
			(not (itineraryIsReserved I4W))
			(not (flagIsBlockedDueToOverlap F4L))
			(not (binBitIsBlocked cdban))
			(not (binBitIsBlocked cdbak))
			(not (binBitIsBlocked cdbah))
			(not (binBitIsBlocked cdbae))
			(not (binBitIsBlocked cdbab))
		)
		:effect (and
			(itineraryIsReserved I4W)
			(trainInItinerary T12 I4W)
			(trainIsOverlapping T12)
			(flagIsBlockedDueToOverlap F4L)
			(binBitIsBlocked cdban)
			(binBitIsBlocked cdbak)
			(binBitIsBlocked cdbah)
			(binBitIsBlocked cdbae)
			(binBitIsBlocked cdbab)
		)
	)
	(:event T12_endOverlap_IE4_I4W
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F4L) 1 )
			(flagIsBlockedDueToOverlap F4L)
			(trainInItinerary T12 IE4)
			(trainInItinerary T12 I4W)
		)
		:effect (and
			(not (itineraryIsReserved IE4))
			(not (trainIsOverlapping T12))
			(assign (timeElapsedReservedItinerary IE4) 0 )
			(not (trainInItinerary T12 IE4))
			(not (flagIsBlockedDueToOverlap F4L))
			(assign (timeElapsedOverlappedFlag F4L) 0 )
			(not (binBitIsBlocked cdbas))
		)
	)
	(:action T12_overlaps_IE5_I5W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T12 IE5)
			(trainInItinerary T12 IE5)
			(not (trainIsStopping T12))
			(not (itineraryIsReserved I5W))
			(not (flagIsBlockedDueToOverlap F5L))
			(not (binBitIsBlocked cdbao))
			(not (binBitIsBlocked cdbak))
			(not (binBitIsBlocked cdbah))
			(not (binBitIsBlocked cdbae))
			(not (binBitIsBlocked cdbab))
		)
		:effect (and
			(itineraryIsReserved I5W)
			(trainInItinerary T12 I5W)
			(trainIsOverlapping T12)
			(flagIsBlockedDueToOverlap F5L)
			(binBitIsBlocked cdbao)
			(binBitIsBlocked cdbak)
			(binBitIsBlocked cdbah)
			(binBitIsBlocked cdbae)
			(binBitIsBlocked cdbab)
		)
	)
	(:event T12_endOverlap_IE5_I5W
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F5L) 1 )
			(flagIsBlockedDueToOverlap F5L)
			(trainInItinerary T12 IE5)
			(trainInItinerary T12 I5W)
		)
		:effect (and
			(not (itineraryIsReserved IE5))
			(not (trainIsOverlapping T12))
			(assign (timeElapsedReservedItinerary IE5) 0 )
			(not (trainInItinerary T12 IE5))
			(not (flagIsBlockedDueToOverlap F5L))
			(assign (timeElapsedOverlappedFlag F5L) 0 )
			(not (binBitIsBlocked cdbat))
		)
	)
	(:action T13_exitsStation_I1W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T13 I1W)
			(not (trainHasExitedStation T13))
		)
		:effect (and
			(not (itineraryIsReserved I1W))
			(not (trainInItinerary T13 I1W))
			(trainExitsStationAt T13 F02)
			(assign (timeElapsedReservedItinerary I1W) 0 )
			(trainHasExitedStation T13)
			(not (binBitIsBlocked cdbab))
		)
	)
	(:action T13_exitsStation_I2W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T13 I2W)
			(not (trainHasExitedStation T13))
		)
		:effect (and
			(not (itineraryIsReserved I2W))
			(not (trainInItinerary T13 I2W))
			(trainExitsStationAt T13 F02)
			(assign (timeElapsedReservedItinerary I2W) 0 )
			(trainHasExitedStation T13)
			(not (binBitIsBlocked cdbab))
		)
	)
	(:action T13_exitsStation_I3W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T13 I3W)
			(not (trainHasExitedStation T13))
		)
		:effect (and
			(not (itineraryIsReserved I3W))
			(not (trainInItinerary T13 I3W))
			(trainExitsStationAt T13 F02)
			(assign (timeElapsedReservedItinerary I3W) 0 )
			(trainHasExitedStation T13)
			(not (binBitIsBlocked cdbab))
		)
	)
	(:action T13_exitsStation_I4W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T13 I4W)
			(not (trainHasExitedStation T13))
		)
		:effect (and
			(not (itineraryIsReserved I4W))
			(not (trainInItinerary T13 I4W))
			(trainExitsStationAt T13 F02)
			(assign (timeElapsedReservedItinerary I4W) 0 )
			(trainHasExitedStation T13)
			(not (binBitIsBlocked cdbab))
		)
	)
	(:action T13_exitsStation_I5W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T13 I5W)
			(not (trainHasExitedStation T13))
		)
		:effect (and
			(not (itineraryIsReserved I5W))
			(not (trainInItinerary T13 I5W))
			(trainExitsStationAt T13 F02)
			(assign (timeElapsedReservedItinerary I5W) 0 )
			(trainHasExitedStation T13)
			(not (binBitIsBlocked cdbab))
		)
	)
	(:event T13_arrivesAtEndpoint_E_plus
		:parameters()
		:precondition (and
			(>= time  370 )
			(not (trainHasEnteredStation T13))
			(not (trainIsAtEndpoint T13 E_plus))
		)
		:effect (and
			(trainIsAtEndpoint T13 E_plus)
			(trainHasArrivedAtStation T13)
			(assign (trainEntryIndex T13) (trainsArrivedAtEndpoint E_plus))
			(increase (trainsArrivedAtEndpoint E_plus) 1 )
		)
	)
	(:action T13_entersStation_IE1
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T13 E_plus)
			(not (trainHasExitedStation T13))
			(not (trainHasEnteredStation T13))
			(= (trainEntryIndex T13) (trainsEnteredFromEndpoint E_plus))
			(not (binBitIsBlocked cdbbs))
			(not (binBitIsBlocked cdbbp))
			(not (binBitIsBlocked cdbbl))
			(not (binBitIsBlocked cdbbe))
			(not (binBitIsBlocked cdbaz))
			(not (binBitIsBlocked cdbau))
			(not (binBitIsBlocked cdbap))
		)
		:effect (and
			(not (trainIsAtEndpoint T13 E_plus))
			(itineraryIsReserved IE1)
			(not (trainEntersStationAt T13 F04))
			(trainInItinerary T13 IE1)
			(trainHasEnteredStation T13)
			(increase (trainsEnteredFromEndpoint E_plus) 1 )
			(binBitIsBlocked cdbbs)
			(binBitIsBlocked cdbbp)
			(binBitIsBlocked cdbbl)
			(binBitIsBlocked cdbbe)
			(binBitIsBlocked cdbaz)
			(binBitIsBlocked cdbau)
			(binBitIsBlocked cdbap)
		)
	)
	(:action T13_entersStation_IE2
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T13 E_plus)
			(not (trainHasExitedStation T13))
			(not (trainHasEnteredStation T13))
			(= (trainEntryIndex T13) (trainsEnteredFromEndpoint E_plus))
			(not (binBitIsBlocked cdbbs))
			(not (binBitIsBlocked cdbbp))
			(not (binBitIsBlocked cdbbl))
			(not (binBitIsBlocked cdbbj))
			(not (binBitIsBlocked cdbbf))
			(not (binBitIsBlocked cdbba))
			(not (binBitIsBlocked cdbav))
			(not (binBitIsBlocked cdbaq))
		)
		:effect (and
			(not (trainIsAtEndpoint T13 E_plus))
			(itineraryIsReserved IE2)
			(not (trainEntersStationAt T13 F04))
			(trainInItinerary T13 IE2)
			(trainHasEnteredStation T13)
			(increase (trainsEnteredFromEndpoint E_plus) 1 )
			(binBitIsBlocked cdbbs)
			(binBitIsBlocked cdbbp)
			(binBitIsBlocked cdbbl)
			(binBitIsBlocked cdbbj)
			(binBitIsBlocked cdbbf)
			(binBitIsBlocked cdbba)
			(binBitIsBlocked cdbav)
			(binBitIsBlocked cdbaq)
		)
	)
	(:action T13_entersStation_IE3
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T13 E_plus)
			(not (trainHasExitedStation T13))
			(not (trainHasEnteredStation T13))
			(= (trainEntryIndex T13) (trainsEnteredFromEndpoint E_plus))
			(not (binBitIsBlocked cdbbs))
			(not (binBitIsBlocked cdbbp))
			(not (binBitIsBlocked cdbbl))
			(not (binBitIsBlocked cdbbj))
			(not (binBitIsBlocked cdbbg))
			(not (binBitIsBlocked cdbbb))
			(not (binBitIsBlocked cdbaw))
			(not (binBitIsBlocked cdbar))
		)
		:effect (and
			(not (trainIsAtEndpoint T13 E_plus))
			(itineraryIsReserved IE3)
			(not (trainEntersStationAt T13 F04))
			(trainInItinerary T13 IE3)
			(trainHasEnteredStation T13)
			(increase (trainsEnteredFromEndpoint E_plus) 1 )
			(binBitIsBlocked cdbbs)
			(binBitIsBlocked cdbbp)
			(binBitIsBlocked cdbbl)
			(binBitIsBlocked cdbbj)
			(binBitIsBlocked cdbbg)
			(binBitIsBlocked cdbbb)
			(binBitIsBlocked cdbaw)
			(binBitIsBlocked cdbar)
		)
	)
	(:action T13_entersStation_IE4
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T13 E_plus)
			(not (trainHasExitedStation T13))
			(not (trainHasEnteredStation T13))
			(= (trainEntryIndex T13) (trainsEnteredFromEndpoint E_plus))
			(not (binBitIsBlocked cdbbs))
			(not (binBitIsBlocked cdbbq))
			(not (binBitIsBlocked cdbbn))
			(not (binBitIsBlocked cdbbk))
			(not (binBitIsBlocked cdbbh))
			(not (binBitIsBlocked cdbbc))
			(not (binBitIsBlocked cdbax))
			(not (binBitIsBlocked cdbas))
		)
		:effect (and
			(not (trainIsAtEndpoint T13 E_plus))
			(itineraryIsReserved IE4)
			(not (trainEntersStationAt T13 F04))
			(trainInItinerary T13 IE4)
			(trainHasEnteredStation T13)
			(increase (trainsEnteredFromEndpoint E_plus) 1 )
			(binBitIsBlocked cdbbs)
			(binBitIsBlocked cdbbq)
			(binBitIsBlocked cdbbn)
			(binBitIsBlocked cdbbk)
			(binBitIsBlocked cdbbh)
			(binBitIsBlocked cdbbc)
			(binBitIsBlocked cdbax)
			(binBitIsBlocked cdbas)
		)
	)
	(:action T13_entersStation_IE5
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T13 E_plus)
			(not (trainHasExitedStation T13))
			(not (trainHasEnteredStation T13))
			(= (trainEntryIndex T13) (trainsEnteredFromEndpoint E_plus))
			(not (binBitIsBlocked cdbbs))
			(not (binBitIsBlocked cdbbq))
			(not (binBitIsBlocked cdbbn))
			(not (binBitIsBlocked cdbbk))
			(not (binBitIsBlocked cdbbi))
			(not (binBitIsBlocked cdbbd))
			(not (binBitIsBlocked cdbay))
			(not (binBitIsBlocked cdbat))
		)
		:effect (and
			(not (trainIsAtEndpoint T13 E_plus))
			(itineraryIsReserved IE5)
			(not (trainEntersStationAt T13 F04))
			(trainInItinerary T13 IE5)
			(trainHasEnteredStation T13)
			(increase (trainsEnteredFromEndpoint E_plus) 1 )
			(binBitIsBlocked cdbbs)
			(binBitIsBlocked cdbbq)
			(binBitIsBlocked cdbbn)
			(binBitIsBlocked cdbbk)
			(binBitIsBlocked cdbbi)
			(binBitIsBlocked cdbbd)
			(binBitIsBlocked cdbay)
			(binBitIsBlocked cdbat)
		)
	)
	(:event T13_completeItinerary_IE1
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 60 )
			(itineraryIsReserved IE1)
			(trainInItinerary T13 IE1)
			(not (trainHasCompletedItinerary T13 IE1))
			(not (trainHasExitedStation T13))
		)
		:effect (and
			(trainHasCompletedItinerary T13 IE1)
		)
	)
	(:event T13_completeBinBit_IE1_cdbbs
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 8 )
			(trainInItinerary T13 IE1)
			(binBitIsBlocked cdbbs)
		)
		:effect (and
			(not (binBitIsBlocked cdbbs))
		)
	)
	(:event T13_completeBinBit_IE1_cdbbp
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 17 )
			(trainInItinerary T13 IE1)
			(binBitIsBlocked cdbbp)
		)
		:effect (and
			(not (binBitIsBlocked cdbbp))
		)
	)
	(:event T13_completeBinBit_IE1_cdbbl
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 25 )
			(trainInItinerary T13 IE1)
			(binBitIsBlocked cdbbl)
		)
		:effect (and
			(not (binBitIsBlocked cdbbl))
		)
	)
	(:event T13_completeBinBit_IE1_cdbbe
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 34 )
			(trainInItinerary T13 IE1)
			(binBitIsBlocked cdbbe)
		)
		:effect (and
			(not (binBitIsBlocked cdbbe))
		)
	)
	(:event T13_completeBinBit_IE1_cdbaz
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 42 )
			(trainInItinerary T13 IE1)
			(binBitIsBlocked cdbaz)
		)
		:effect (and
			(not (binBitIsBlocked cdbaz))
		)
	)
	(:event T13_completeBinBit_IE1_cdbau
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 51 )
			(trainInItinerary T13 IE1)
			(binBitIsBlocked cdbau)
		)
		:effect (and
			(not (binBitIsBlocked cdbau))
		)
	)
	(:event T13_completeItinerary_I1W
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1W) 60 )
			(itineraryIsReserved I1W)
			(trainInItinerary T13 I1W)
			(not (trainHasCompletedItinerary T13 I1W))
			(not (trainHasExitedStation T13))
		)
		:effect (and
			(trainHasCompletedItinerary T13 I1W)
		)
	)
	(:event T13_completeBinBit_I1W_cdbai
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1W) 15 )
			(trainInItinerary T13 I1W)
			(binBitIsBlocked cdbai)
		)
		:effect (and
			(not (binBitIsBlocked cdbai))
		)
	)
	(:event T13_completeBinBit_I1W_cdbaf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1W) 30 )
			(trainInItinerary T13 I1W)
			(binBitIsBlocked cdbaf)
		)
		:effect (and
			(not (binBitIsBlocked cdbaf))
		)
	)
	(:event T13_completeBinBit_I1W_cdbad
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1W) 45 )
			(trainInItinerary T13 I1W)
			(binBitIsBlocked cdbad)
		)
		:effect (and
			(not (binBitIsBlocked cdbad))
		)
	)
	(:event T13_completeItinerary_IE2
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 60 )
			(itineraryIsReserved IE2)
			(trainInItinerary T13 IE2)
			(not (trainHasCompletedItinerary T13 IE2))
			(not (trainHasExitedStation T13))
		)
		:effect (and
			(trainHasCompletedItinerary T13 IE2)
		)
	)
	(:event T13_completeBinBit_IE2_cdbbs
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 7 )
			(trainInItinerary T13 IE2)
			(binBitIsBlocked cdbbs)
		)
		:effect (and
			(not (binBitIsBlocked cdbbs))
		)
	)
	(:event T13_completeBinBit_IE2_cdbbp
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 15 )
			(trainInItinerary T13 IE2)
			(binBitIsBlocked cdbbp)
		)
		:effect (and
			(not (binBitIsBlocked cdbbp))
		)
	)
	(:event T13_completeBinBit_IE2_cdbbl
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 22 )
			(trainInItinerary T13 IE2)
			(binBitIsBlocked cdbbl)
		)
		:effect (and
			(not (binBitIsBlocked cdbbl))
		)
	)
	(:event T13_completeBinBit_IE2_cdbbj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 30 )
			(trainInItinerary T13 IE2)
			(binBitIsBlocked cdbbj)
		)
		:effect (and
			(not (binBitIsBlocked cdbbj))
		)
	)
	(:event T13_completeBinBit_IE2_cdbbf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 37 )
			(trainInItinerary T13 IE2)
			(binBitIsBlocked cdbbf)
		)
		:effect (and
			(not (binBitIsBlocked cdbbf))
		)
	)
	(:event T13_completeBinBit_IE2_cdbba
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 45 )
			(trainInItinerary T13 IE2)
			(binBitIsBlocked cdbba)
		)
		:effect (and
			(not (binBitIsBlocked cdbba))
		)
	)
	(:event T13_completeBinBit_IE2_cdbav
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 52 )
			(trainInItinerary T13 IE2)
			(binBitIsBlocked cdbav)
		)
		:effect (and
			(not (binBitIsBlocked cdbav))
		)
	)
	(:event T13_completeItinerary_I2W
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2W) 60 )
			(itineraryIsReserved I2W)
			(trainInItinerary T13 I2W)
			(not (trainHasCompletedItinerary T13 I2W))
			(not (trainHasExitedStation T13))
		)
		:effect (and
			(trainHasCompletedItinerary T13 I2W)
		)
	)
	(:event T13_completeBinBit_I2W_cdbal
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2W) 12 )
			(trainInItinerary T13 I2W)
			(binBitIsBlocked cdbal)
		)
		:effect (and
			(not (binBitIsBlocked cdbal))
		)
	)
	(:event T13_completeBinBit_I2W_cdbaj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2W) 24 )
			(trainInItinerary T13 I2W)
			(binBitIsBlocked cdbaj)
		)
		:effect (and
			(not (binBitIsBlocked cdbaj))
		)
	)
	(:event T13_completeBinBit_I2W_cdbaf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2W) 36 )
			(trainInItinerary T13 I2W)
			(binBitIsBlocked cdbaf)
		)
		:effect (and
			(not (binBitIsBlocked cdbaf))
		)
	)
	(:event T13_completeBinBit_I2W_cdbad
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2W) 48 )
			(trainInItinerary T13 I2W)
			(binBitIsBlocked cdbad)
		)
		:effect (and
			(not (binBitIsBlocked cdbad))
		)
	)
	(:event T13_completeItinerary_IE3
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 60 )
			(itineraryIsReserved IE3)
			(trainInItinerary T13 IE3)
			(not (trainHasCompletedItinerary T13 IE3))
			(not (trainHasExitedStation T13))
		)
		:effect (and
			(trainHasCompletedItinerary T13 IE3)
		)
	)
	(:event T13_completeBinBit_IE3_cdbbs
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 7 )
			(trainInItinerary T13 IE3)
			(binBitIsBlocked cdbbs)
		)
		:effect (and
			(not (binBitIsBlocked cdbbs))
		)
	)
	(:event T13_completeBinBit_IE3_cdbbp
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 15 )
			(trainInItinerary T13 IE3)
			(binBitIsBlocked cdbbp)
		)
		:effect (and
			(not (binBitIsBlocked cdbbp))
		)
	)
	(:event T13_completeBinBit_IE3_cdbbl
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 22 )
			(trainInItinerary T13 IE3)
			(binBitIsBlocked cdbbl)
		)
		:effect (and
			(not (binBitIsBlocked cdbbl))
		)
	)
	(:event T13_completeBinBit_IE3_cdbbj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 30 )
			(trainInItinerary T13 IE3)
			(binBitIsBlocked cdbbj)
		)
		:effect (and
			(not (binBitIsBlocked cdbbj))
		)
	)
	(:event T13_completeBinBit_IE3_cdbbg
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 37 )
			(trainInItinerary T13 IE3)
			(binBitIsBlocked cdbbg)
		)
		:effect (and
			(not (binBitIsBlocked cdbbg))
		)
	)
	(:event T13_completeBinBit_IE3_cdbbb
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 45 )
			(trainInItinerary T13 IE3)
			(binBitIsBlocked cdbbb)
		)
		:effect (and
			(not (binBitIsBlocked cdbbb))
		)
	)
	(:event T13_completeBinBit_IE3_cdbaw
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 52 )
			(trainInItinerary T13 IE3)
			(binBitIsBlocked cdbaw)
		)
		:effect (and
			(not (binBitIsBlocked cdbaw))
		)
	)
	(:event T13_completeItinerary_I3W
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3W) 60 )
			(itineraryIsReserved I3W)
			(trainInItinerary T13 I3W)
			(not (trainHasCompletedItinerary T13 I3W))
			(not (trainHasExitedStation T13))
		)
		:effect (and
			(trainHasCompletedItinerary T13 I3W)
		)
	)
	(:event T13_completeBinBit_I3W_cdbam
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3W) 12 )
			(trainInItinerary T13 I3W)
			(binBitIsBlocked cdbam)
		)
		:effect (and
			(not (binBitIsBlocked cdbam))
		)
	)
	(:event T13_completeBinBit_I3W_cdbaj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3W) 24 )
			(trainInItinerary T13 I3W)
			(binBitIsBlocked cdbaj)
		)
		:effect (and
			(not (binBitIsBlocked cdbaj))
		)
	)
	(:event T13_completeBinBit_I3W_cdbaf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3W) 36 )
			(trainInItinerary T13 I3W)
			(binBitIsBlocked cdbaf)
		)
		:effect (and
			(not (binBitIsBlocked cdbaf))
		)
	)
	(:event T13_completeBinBit_I3W_cdbad
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3W) 48 )
			(trainInItinerary T13 I3W)
			(binBitIsBlocked cdbad)
		)
		:effect (and
			(not (binBitIsBlocked cdbad))
		)
	)
	(:event T13_completeItinerary_IE4
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 60 )
			(itineraryIsReserved IE4)
			(trainInItinerary T13 IE4)
			(not (trainHasCompletedItinerary T13 IE4))
			(not (trainHasExitedStation T13))
		)
		:effect (and
			(trainHasCompletedItinerary T13 IE4)
		)
	)
	(:event T13_completeBinBit_IE4_cdbbs
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 7 )
			(trainInItinerary T13 IE4)
			(binBitIsBlocked cdbbs)
		)
		:effect (and
			(not (binBitIsBlocked cdbbs))
		)
	)
	(:event T13_completeBinBit_IE4_cdbbq
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 15 )
			(trainInItinerary T13 IE4)
			(binBitIsBlocked cdbbq)
		)
		:effect (and
			(not (binBitIsBlocked cdbbq))
		)
	)
	(:event T13_completeBinBit_IE4_cdbbn
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 22 )
			(trainInItinerary T13 IE4)
			(binBitIsBlocked cdbbn)
		)
		:effect (and
			(not (binBitIsBlocked cdbbn))
		)
	)
	(:event T13_completeBinBit_IE4_cdbbk
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 30 )
			(trainInItinerary T13 IE4)
			(binBitIsBlocked cdbbk)
		)
		:effect (and
			(not (binBitIsBlocked cdbbk))
		)
	)
	(:event T13_completeBinBit_IE4_cdbbh
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 37 )
			(trainInItinerary T13 IE4)
			(binBitIsBlocked cdbbh)
		)
		:effect (and
			(not (binBitIsBlocked cdbbh))
		)
	)
	(:event T13_completeBinBit_IE4_cdbbc
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 45 )
			(trainInItinerary T13 IE4)
			(binBitIsBlocked cdbbc)
		)
		:effect (and
			(not (binBitIsBlocked cdbbc))
		)
	)
	(:event T13_completeBinBit_IE4_cdbax
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 52 )
			(trainInItinerary T13 IE4)
			(binBitIsBlocked cdbax)
		)
		:effect (and
			(not (binBitIsBlocked cdbax))
		)
	)
	(:event T13_completeItinerary_I4W
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4W) 60 )
			(itineraryIsReserved I4W)
			(trainInItinerary T13 I4W)
			(not (trainHasCompletedItinerary T13 I4W))
			(not (trainHasExitedStation T13))
		)
		:effect (and
			(trainHasCompletedItinerary T13 I4W)
		)
	)
	(:event T13_completeBinBit_I4W_cdban
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4W) 12 )
			(trainInItinerary T13 I4W)
			(binBitIsBlocked cdban)
		)
		:effect (and
			(not (binBitIsBlocked cdban))
		)
	)
	(:event T13_completeBinBit_I4W_cdbak
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4W) 24 )
			(trainInItinerary T13 I4W)
			(binBitIsBlocked cdbak)
		)
		:effect (and
			(not (binBitIsBlocked cdbak))
		)
	)
	(:event T13_completeBinBit_I4W_cdbah
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4W) 36 )
			(trainInItinerary T13 I4W)
			(binBitIsBlocked cdbah)
		)
		:effect (and
			(not (binBitIsBlocked cdbah))
		)
	)
	(:event T13_completeBinBit_I4W_cdbae
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4W) 48 )
			(trainInItinerary T13 I4W)
			(binBitIsBlocked cdbae)
		)
		:effect (and
			(not (binBitIsBlocked cdbae))
		)
	)
	(:event T13_completeItinerary_IE5
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 60 )
			(itineraryIsReserved IE5)
			(trainInItinerary T13 IE5)
			(not (trainHasCompletedItinerary T13 IE5))
			(not (trainHasExitedStation T13))
		)
		:effect (and
			(trainHasCompletedItinerary T13 IE5)
		)
	)
	(:event T13_completeBinBit_IE5_cdbbs
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 7 )
			(trainInItinerary T13 IE5)
			(binBitIsBlocked cdbbs)
		)
		:effect (and
			(not (binBitIsBlocked cdbbs))
		)
	)
	(:event T13_completeBinBit_IE5_cdbbq
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 15 )
			(trainInItinerary T13 IE5)
			(binBitIsBlocked cdbbq)
		)
		:effect (and
			(not (binBitIsBlocked cdbbq))
		)
	)
	(:event T13_completeBinBit_IE5_cdbbn
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 22 )
			(trainInItinerary T13 IE5)
			(binBitIsBlocked cdbbn)
		)
		:effect (and
			(not (binBitIsBlocked cdbbn))
		)
	)
	(:event T13_completeBinBit_IE5_cdbbk
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 30 )
			(trainInItinerary T13 IE5)
			(binBitIsBlocked cdbbk)
		)
		:effect (and
			(not (binBitIsBlocked cdbbk))
		)
	)
	(:event T13_completeBinBit_IE5_cdbbi
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 37 )
			(trainInItinerary T13 IE5)
			(binBitIsBlocked cdbbi)
		)
		:effect (and
			(not (binBitIsBlocked cdbbi))
		)
	)
	(:event T13_completeBinBit_IE5_cdbbd
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 45 )
			(trainInItinerary T13 IE5)
			(binBitIsBlocked cdbbd)
		)
		:effect (and
			(not (binBitIsBlocked cdbbd))
		)
	)
	(:event T13_completeBinBit_IE5_cdbay
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 52 )
			(trainInItinerary T13 IE5)
			(binBitIsBlocked cdbay)
		)
		:effect (and
			(not (binBitIsBlocked cdbay))
		)
	)
	(:event T13_completeItinerary_I5W
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5W) 60 )
			(itineraryIsReserved I5W)
			(trainInItinerary T13 I5W)
			(not (trainHasCompletedItinerary T13 I5W))
			(not (trainHasExitedStation T13))
		)
		:effect (and
			(trainHasCompletedItinerary T13 I5W)
		)
	)
	(:event T13_completeBinBit_I5W_cdbao
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5W) 12 )
			(trainInItinerary T13 I5W)
			(binBitIsBlocked cdbao)
		)
		:effect (and
			(not (binBitIsBlocked cdbao))
		)
	)
	(:event T13_completeBinBit_I5W_cdbak
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5W) 24 )
			(trainInItinerary T13 I5W)
			(binBitIsBlocked cdbak)
		)
		:effect (and
			(not (binBitIsBlocked cdbak))
		)
	)
	(:event T13_completeBinBit_I5W_cdbah
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5W) 36 )
			(trainInItinerary T13 I5W)
			(binBitIsBlocked cdbah)
		)
		:effect (and
			(not (binBitIsBlocked cdbah))
		)
	)
	(:event T13_completeBinBit_I5W_cdbae
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5W) 48 )
			(trainInItinerary T13 I5W)
			(binBitIsBlocked cdbae)
		)
		:effect (and
			(not (binBitIsBlocked cdbae))
		)
	)
	(:action T13_overlaps_IE1_I1W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T13 IE1)
			(trainInItinerary T13 IE1)
			(not (trainIsStopping T13))
			(not (itineraryIsReserved I1W))
			(not (flagIsBlockedDueToOverlap F1L))
			(not (binBitIsBlocked cdbai))
			(not (binBitIsBlocked cdbaf))
			(not (binBitIsBlocked cdbad))
			(not (binBitIsBlocked cdbab))
		)
		:effect (and
			(itineraryIsReserved I1W)
			(trainInItinerary T13 I1W)
			(trainIsOverlapping T13)
			(flagIsBlockedDueToOverlap F1L)
			(binBitIsBlocked cdbai)
			(binBitIsBlocked cdbaf)
			(binBitIsBlocked cdbad)
			(binBitIsBlocked cdbab)
		)
	)
	(:event T13_endOverlap_IE1_I1W
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F1L) 1 )
			(flagIsBlockedDueToOverlap F1L)
			(trainInItinerary T13 IE1)
			(trainInItinerary T13 I1W)
		)
		:effect (and
			(not (itineraryIsReserved IE1))
			(not (trainIsOverlapping T13))
			(assign (timeElapsedReservedItinerary IE1) 0 )
			(not (trainInItinerary T13 IE1))
			(not (flagIsBlockedDueToOverlap F1L))
			(assign (timeElapsedOverlappedFlag F1L) 0 )
			(not (binBitIsBlocked cdbap))
		)
	)
	(:action T13_overlaps_IE2_I2W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T13 IE2)
			(trainInItinerary T13 IE2)
			(not (trainIsStopping T13))
			(not (itineraryIsReserved I2W))
			(not (flagIsBlockedDueToOverlap F2L))
			(not (binBitIsBlocked cdbal))
			(not (binBitIsBlocked cdbaj))
			(not (binBitIsBlocked cdbaf))
			(not (binBitIsBlocked cdbad))
			(not (binBitIsBlocked cdbab))
		)
		:effect (and
			(itineraryIsReserved I2W)
			(trainInItinerary T13 I2W)
			(trainIsOverlapping T13)
			(flagIsBlockedDueToOverlap F2L)
			(binBitIsBlocked cdbal)
			(binBitIsBlocked cdbaj)
			(binBitIsBlocked cdbaf)
			(binBitIsBlocked cdbad)
			(binBitIsBlocked cdbab)
		)
	)
	(:event T13_endOverlap_IE2_I2W
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F2L) 1 )
			(flagIsBlockedDueToOverlap F2L)
			(trainInItinerary T13 IE2)
			(trainInItinerary T13 I2W)
		)
		:effect (and
			(not (itineraryIsReserved IE2))
			(not (trainIsOverlapping T13))
			(assign (timeElapsedReservedItinerary IE2) 0 )
			(not (trainInItinerary T13 IE2))
			(not (flagIsBlockedDueToOverlap F2L))
			(assign (timeElapsedOverlappedFlag F2L) 0 )
			(not (binBitIsBlocked cdbaq))
		)
	)
	(:action T13_overlaps_IE3_I3W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T13 IE3)
			(trainInItinerary T13 IE3)
			(not (trainIsStopping T13))
			(not (itineraryIsReserved I3W))
			(not (flagIsBlockedDueToOverlap F3L))
			(not (binBitIsBlocked cdbam))
			(not (binBitIsBlocked cdbaj))
			(not (binBitIsBlocked cdbaf))
			(not (binBitIsBlocked cdbad))
			(not (binBitIsBlocked cdbab))
		)
		:effect (and
			(itineraryIsReserved I3W)
			(trainInItinerary T13 I3W)
			(trainIsOverlapping T13)
			(flagIsBlockedDueToOverlap F3L)
			(binBitIsBlocked cdbam)
			(binBitIsBlocked cdbaj)
			(binBitIsBlocked cdbaf)
			(binBitIsBlocked cdbad)
			(binBitIsBlocked cdbab)
		)
	)
	(:event T13_endOverlap_IE3_I3W
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F3L) 1 )
			(flagIsBlockedDueToOverlap F3L)
			(trainInItinerary T13 IE3)
			(trainInItinerary T13 I3W)
		)
		:effect (and
			(not (itineraryIsReserved IE3))
			(not (trainIsOverlapping T13))
			(assign (timeElapsedReservedItinerary IE3) 0 )
			(not (trainInItinerary T13 IE3))
			(not (flagIsBlockedDueToOverlap F3L))
			(assign (timeElapsedOverlappedFlag F3L) 0 )
			(not (binBitIsBlocked cdbar))
		)
	)
	(:action T13_overlaps_IE4_I4W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T13 IE4)
			(trainInItinerary T13 IE4)
			(not (trainIsStopping T13))
			(not (itineraryIsReserved I4W))
			(not (flagIsBlockedDueToOverlap F4L))
			(not (binBitIsBlocked cdban))
			(not (binBitIsBlocked cdbak))
			(not (binBitIsBlocked cdbah))
			(not (binBitIsBlocked cdbae))
			(not (binBitIsBlocked cdbab))
		)
		:effect (and
			(itineraryIsReserved I4W)
			(trainInItinerary T13 I4W)
			(trainIsOverlapping T13)
			(flagIsBlockedDueToOverlap F4L)
			(binBitIsBlocked cdban)
			(binBitIsBlocked cdbak)
			(binBitIsBlocked cdbah)
			(binBitIsBlocked cdbae)
			(binBitIsBlocked cdbab)
		)
	)
	(:event T13_endOverlap_IE4_I4W
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F4L) 1 )
			(flagIsBlockedDueToOverlap F4L)
			(trainInItinerary T13 IE4)
			(trainInItinerary T13 I4W)
		)
		:effect (and
			(not (itineraryIsReserved IE4))
			(not (trainIsOverlapping T13))
			(assign (timeElapsedReservedItinerary IE4) 0 )
			(not (trainInItinerary T13 IE4))
			(not (flagIsBlockedDueToOverlap F4L))
			(assign (timeElapsedOverlappedFlag F4L) 0 )
			(not (binBitIsBlocked cdbas))
		)
	)
	(:action T13_overlaps_IE5_I5W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T13 IE5)
			(trainInItinerary T13 IE5)
			(not (trainIsStopping T13))
			(not (itineraryIsReserved I5W))
			(not (flagIsBlockedDueToOverlap F5L))
			(not (binBitIsBlocked cdbao))
			(not (binBitIsBlocked cdbak))
			(not (binBitIsBlocked cdbah))
			(not (binBitIsBlocked cdbae))
			(not (binBitIsBlocked cdbab))
		)
		:effect (and
			(itineraryIsReserved I5W)
			(trainInItinerary T13 I5W)
			(trainIsOverlapping T13)
			(flagIsBlockedDueToOverlap F5L)
			(binBitIsBlocked cdbao)
			(binBitIsBlocked cdbak)
			(binBitIsBlocked cdbah)
			(binBitIsBlocked cdbae)
			(binBitIsBlocked cdbab)
		)
	)
	(:event T13_endOverlap_IE5_I5W
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F5L) 1 )
			(flagIsBlockedDueToOverlap F5L)
			(trainInItinerary T13 IE5)
			(trainInItinerary T13 I5W)
		)
		:effect (and
			(not (itineraryIsReserved IE5))
			(not (trainIsOverlapping T13))
			(assign (timeElapsedReservedItinerary IE5) 0 )
			(not (trainInItinerary T13 IE5))
			(not (flagIsBlockedDueToOverlap F5L))
			(assign (timeElapsedOverlappedFlag F5L) 0 )
			(not (binBitIsBlocked cdbat))
		)
	)
	(:event T14_arrivesAtEndpoint_W_plus
		:parameters()
		:precondition (and
			(>= time  3155 )
			(not (trainHasEnteredStation T14))
			(not (trainIsAtEndpoint T14 W_plus))
		)
		:effect (and
			(trainIsAtEndpoint T14 W_plus)
			(trainHasArrivedAtStation T14)
			(assign (trainEntryIndex T14) (trainsArrivedAtEndpoint W_plus))
			(increase (trainsArrivedAtEndpoint W_plus) 1 )
		)
	)
	(:action T14_entersStation_IW1
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T14 W_plus)
			(not (trainHasExitedStation T14))
			(not (trainHasEnteredStation T14))
			(= (trainEntryIndex T14) (trainsEnteredFromEndpoint W_plus))
			(not (binBitIsBlocked cdbaa))
			(not (binBitIsBlocked cdbac))
			(not (binBitIsBlocked cdbaf))
			(not (binBitIsBlocked cdbai))
			(not (binBitIsBlocked cdbap))
			(not (binBitIsBlocked cdbau))
			(not (binBitIsBlocked cdbaz))
		)
		:effect (and
			(not (trainIsAtEndpoint T14 W_plus))
			(itineraryIsReserved IW1)
			(not (trainEntersStationAt T14 F01))
			(trainInItinerary T14 IW1)
			(trainHasEnteredStation T14)
			(increase (trainsEnteredFromEndpoint W_plus) 1 )
			(binBitIsBlocked cdbaa)
			(binBitIsBlocked cdbac)
			(binBitIsBlocked cdbaf)
			(binBitIsBlocked cdbai)
			(binBitIsBlocked cdbap)
			(binBitIsBlocked cdbau)
			(binBitIsBlocked cdbaz)
		)
	)
	(:action T14_entersStation_IW2
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T14 W_plus)
			(not (trainHasExitedStation T14))
			(not (trainHasEnteredStation T14))
			(= (trainEntryIndex T14) (trainsEnteredFromEndpoint W_plus))
			(not (binBitIsBlocked cdbaa))
			(not (binBitIsBlocked cdbac))
			(not (binBitIsBlocked cdbaf))
			(not (binBitIsBlocked cdbaj))
			(not (binBitIsBlocked cdbal))
			(not (binBitIsBlocked cdbaq))
			(not (binBitIsBlocked cdbav))
			(not (binBitIsBlocked cdbba))
		)
		:effect (and
			(not (trainIsAtEndpoint T14 W_plus))
			(itineraryIsReserved IW2)
			(not (trainEntersStationAt T14 F01))
			(trainInItinerary T14 IW2)
			(trainHasEnteredStation T14)
			(increase (trainsEnteredFromEndpoint W_plus) 1 )
			(binBitIsBlocked cdbaa)
			(binBitIsBlocked cdbac)
			(binBitIsBlocked cdbaf)
			(binBitIsBlocked cdbaj)
			(binBitIsBlocked cdbal)
			(binBitIsBlocked cdbaq)
			(binBitIsBlocked cdbav)
			(binBitIsBlocked cdbba)
		)
	)
	(:action T14_entersStation_IW3
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T14 W_plus)
			(not (trainHasExitedStation T14))
			(not (trainHasEnteredStation T14))
			(= (trainEntryIndex T14) (trainsEnteredFromEndpoint W_plus))
			(not (binBitIsBlocked cdbaa))
			(not (binBitIsBlocked cdbac))
			(not (binBitIsBlocked cdbaf))
			(not (binBitIsBlocked cdbaj))
			(not (binBitIsBlocked cdbam))
			(not (binBitIsBlocked cdbar))
			(not (binBitIsBlocked cdbaw))
			(not (binBitIsBlocked cdbbb))
		)
		:effect (and
			(not (trainIsAtEndpoint T14 W_plus))
			(itineraryIsReserved IW3)
			(not (trainEntersStationAt T14 F01))
			(trainInItinerary T14 IW3)
			(trainHasEnteredStation T14)
			(increase (trainsEnteredFromEndpoint W_plus) 1 )
			(binBitIsBlocked cdbaa)
			(binBitIsBlocked cdbac)
			(binBitIsBlocked cdbaf)
			(binBitIsBlocked cdbaj)
			(binBitIsBlocked cdbam)
			(binBitIsBlocked cdbar)
			(binBitIsBlocked cdbaw)
			(binBitIsBlocked cdbbb)
		)
	)
	(:action T14_entersStation_IW4
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T14 W_plus)
			(not (trainHasExitedStation T14))
			(not (trainHasEnteredStation T14))
			(= (trainEntryIndex T14) (trainsEnteredFromEndpoint W_plus))
			(not (binBitIsBlocked cdbaa))
			(not (binBitIsBlocked cdbac))
			(not (binBitIsBlocked cdbag))
			(not (binBitIsBlocked cdbak))
			(not (binBitIsBlocked cdban))
			(not (binBitIsBlocked cdbas))
			(not (binBitIsBlocked cdbax))
			(not (binBitIsBlocked cdbbc))
		)
		:effect (and
			(not (trainIsAtEndpoint T14 W_plus))
			(itineraryIsReserved IW4)
			(not (trainEntersStationAt T14 F01))
			(trainInItinerary T14 IW4)
			(trainHasEnteredStation T14)
			(increase (trainsEnteredFromEndpoint W_plus) 1 )
			(binBitIsBlocked cdbaa)
			(binBitIsBlocked cdbac)
			(binBitIsBlocked cdbag)
			(binBitIsBlocked cdbak)
			(binBitIsBlocked cdban)
			(binBitIsBlocked cdbas)
			(binBitIsBlocked cdbax)
			(binBitIsBlocked cdbbc)
		)
	)
	(:action T14_entersStation_IW5
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T14 W_plus)
			(not (trainHasExitedStation T14))
			(not (trainHasEnteredStation T14))
			(= (trainEntryIndex T14) (trainsEnteredFromEndpoint W_plus))
			(not (binBitIsBlocked cdbaa))
			(not (binBitIsBlocked cdbac))
			(not (binBitIsBlocked cdbag))
			(not (binBitIsBlocked cdbak))
			(not (binBitIsBlocked cdbao))
			(not (binBitIsBlocked cdbat))
			(not (binBitIsBlocked cdbay))
			(not (binBitIsBlocked cdbbd))
		)
		:effect (and
			(not (trainIsAtEndpoint T14 W_plus))
			(itineraryIsReserved IW5)
			(not (trainEntersStationAt T14 F01))
			(trainInItinerary T14 IW5)
			(trainHasEnteredStation T14)
			(increase (trainsEnteredFromEndpoint W_plus) 1 )
			(binBitIsBlocked cdbaa)
			(binBitIsBlocked cdbac)
			(binBitIsBlocked cdbag)
			(binBitIsBlocked cdbak)
			(binBitIsBlocked cdbao)
			(binBitIsBlocked cdbat)
			(binBitIsBlocked cdbay)
			(binBitIsBlocked cdbbd)
		)
	)
	(:action T14_exitsStation_I1E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T14 I1E)
			(not (trainHasExitedStation T14))
		)
		:effect (and
			(not (itineraryIsReserved I1E))
			(not (trainInItinerary T14 I1E))
			(trainExitsStationAt T14 F03)
			(assign (timeElapsedReservedItinerary I1E) 0 )
			(trainHasExitedStation T14)
			(not (binBitIsBlocked cdbbr))
		)
	)
	(:action T14_exitsStation_I2E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T14 I2E)
			(not (trainHasExitedStation T14))
		)
		:effect (and
			(not (itineraryIsReserved I2E))
			(not (trainInItinerary T14 I2E))
			(trainExitsStationAt T14 F03)
			(assign (timeElapsedReservedItinerary I2E) 0 )
			(trainHasExitedStation T14)
			(not (binBitIsBlocked cdbbr))
		)
	)
	(:action T14_exitsStation_I3E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T14 I3E)
			(not (trainHasExitedStation T14))
		)
		:effect (and
			(not (itineraryIsReserved I3E))
			(not (trainInItinerary T14 I3E))
			(trainExitsStationAt T14 F03)
			(assign (timeElapsedReservedItinerary I3E) 0 )
			(trainHasExitedStation T14)
			(not (binBitIsBlocked cdbbr))
		)
	)
	(:action T14_exitsStation_I4E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T14 I4E)
			(not (trainHasExitedStation T14))
		)
		:effect (and
			(not (itineraryIsReserved I4E))
			(not (trainInItinerary T14 I4E))
			(trainExitsStationAt T14 F03)
			(assign (timeElapsedReservedItinerary I4E) 0 )
			(trainHasExitedStation T14)
			(not (binBitIsBlocked cdbbr))
		)
	)
	(:action T14_exitsStation_I5E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T14 I5E)
			(not (trainHasExitedStation T14))
		)
		:effect (and
			(not (itineraryIsReserved I5E))
			(not (trainInItinerary T14 I5E))
			(trainExitsStationAt T14 F03)
			(assign (timeElapsedReservedItinerary I5E) 0 )
			(trainHasExitedStation T14)
			(not (binBitIsBlocked cdbbr))
		)
	)
	(:event T14_completeItinerary_IW1
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 60 )
			(itineraryIsReserved IW1)
			(trainInItinerary T14 IW1)
			(not (trainHasCompletedItinerary T14 IW1))
			(not (trainHasExitedStation T14))
		)
		:effect (and
			(trainHasCompletedItinerary T14 IW1)
		)
	)
	(:event T14_completeBinBit_IW1_cdbaa
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 8 )
			(trainInItinerary T14 IW1)
			(binBitIsBlocked cdbaa)
		)
		:effect (and
			(not (binBitIsBlocked cdbaa))
		)
	)
	(:event T14_completeBinBit_IW1_cdbac
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 17 )
			(trainInItinerary T14 IW1)
			(binBitIsBlocked cdbac)
		)
		:effect (and
			(not (binBitIsBlocked cdbac))
		)
	)
	(:event T14_completeBinBit_IW1_cdbaf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 25 )
			(trainInItinerary T14 IW1)
			(binBitIsBlocked cdbaf)
		)
		:effect (and
			(not (binBitIsBlocked cdbaf))
		)
	)
	(:event T14_completeBinBit_IW1_cdbai
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 34 )
			(trainInItinerary T14 IW1)
			(binBitIsBlocked cdbai)
		)
		:effect (and
			(not (binBitIsBlocked cdbai))
		)
	)
	(:event T14_completeBinBit_IW1_cdbap
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 42 )
			(trainInItinerary T14 IW1)
			(binBitIsBlocked cdbap)
		)
		:effect (and
			(not (binBitIsBlocked cdbap))
		)
	)
	(:event T14_completeBinBit_IW1_cdbau
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 51 )
			(trainInItinerary T14 IW1)
			(binBitIsBlocked cdbau)
		)
		:effect (and
			(not (binBitIsBlocked cdbau))
		)
	)
	(:event T14_completeItinerary_I1E
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1E) 60 )
			(itineraryIsReserved I1E)
			(trainInItinerary T14 I1E)
			(not (trainHasCompletedItinerary T14 I1E))
			(not (trainHasExitedStation T14))
		)
		:effect (and
			(trainHasCompletedItinerary T14 I1E)
		)
	)
	(:event T14_completeBinBit_I1E_cdbbe
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1E) 15 )
			(trainInItinerary T14 I1E)
			(binBitIsBlocked cdbbe)
		)
		:effect (and
			(not (binBitIsBlocked cdbbe))
		)
	)
	(:event T14_completeBinBit_I1E_cdbbl
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1E) 30 )
			(trainInItinerary T14 I1E)
			(binBitIsBlocked cdbbl)
		)
		:effect (and
			(not (binBitIsBlocked cdbbl))
		)
	)
	(:event T14_completeBinBit_I1E_cdbbo
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1E) 45 )
			(trainInItinerary T14 I1E)
			(binBitIsBlocked cdbbo)
		)
		:effect (and
			(not (binBitIsBlocked cdbbo))
		)
	)
	(:event T14_completeItinerary_IW2
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 60 )
			(itineraryIsReserved IW2)
			(trainInItinerary T14 IW2)
			(not (trainHasCompletedItinerary T14 IW2))
			(not (trainHasExitedStation T14))
		)
		:effect (and
			(trainHasCompletedItinerary T14 IW2)
		)
	)
	(:event T14_completeBinBit_IW2_cdbaa
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 7 )
			(trainInItinerary T14 IW2)
			(binBitIsBlocked cdbaa)
		)
		:effect (and
			(not (binBitIsBlocked cdbaa))
		)
	)
	(:event T14_completeBinBit_IW2_cdbac
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 15 )
			(trainInItinerary T14 IW2)
			(binBitIsBlocked cdbac)
		)
		:effect (and
			(not (binBitIsBlocked cdbac))
		)
	)
	(:event T14_completeBinBit_IW2_cdbaf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 22 )
			(trainInItinerary T14 IW2)
			(binBitIsBlocked cdbaf)
		)
		:effect (and
			(not (binBitIsBlocked cdbaf))
		)
	)
	(:event T14_completeBinBit_IW2_cdbaj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 30 )
			(trainInItinerary T14 IW2)
			(binBitIsBlocked cdbaj)
		)
		:effect (and
			(not (binBitIsBlocked cdbaj))
		)
	)
	(:event T14_completeBinBit_IW2_cdbal
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 37 )
			(trainInItinerary T14 IW2)
			(binBitIsBlocked cdbal)
		)
		:effect (and
			(not (binBitIsBlocked cdbal))
		)
	)
	(:event T14_completeBinBit_IW2_cdbaq
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 45 )
			(trainInItinerary T14 IW2)
			(binBitIsBlocked cdbaq)
		)
		:effect (and
			(not (binBitIsBlocked cdbaq))
		)
	)
	(:event T14_completeBinBit_IW2_cdbav
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 52 )
			(trainInItinerary T14 IW2)
			(binBitIsBlocked cdbav)
		)
		:effect (and
			(not (binBitIsBlocked cdbav))
		)
	)
	(:event T14_completeItinerary_I2E
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2E) 60 )
			(itineraryIsReserved I2E)
			(trainInItinerary T14 I2E)
			(not (trainHasCompletedItinerary T14 I2E))
			(not (trainHasExitedStation T14))
		)
		:effect (and
			(trainHasCompletedItinerary T14 I2E)
		)
	)
	(:event T14_completeBinBit_I2E_cdbbf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2E) 12 )
			(trainInItinerary T14 I2E)
			(binBitIsBlocked cdbbf)
		)
		:effect (and
			(not (binBitIsBlocked cdbbf))
		)
	)
	(:event T14_completeBinBit_I2E_cdbbj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2E) 24 )
			(trainInItinerary T14 I2E)
			(binBitIsBlocked cdbbj)
		)
		:effect (and
			(not (binBitIsBlocked cdbbj))
		)
	)
	(:event T14_completeBinBit_I2E_cdbbl
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2E) 36 )
			(trainInItinerary T14 I2E)
			(binBitIsBlocked cdbbl)
		)
		:effect (and
			(not (binBitIsBlocked cdbbl))
		)
	)
	(:event T14_completeBinBit_I2E_cdbbo
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2E) 48 )
			(trainInItinerary T14 I2E)
			(binBitIsBlocked cdbbo)
		)
		:effect (and
			(not (binBitIsBlocked cdbbo))
		)
	)
	(:event T14_completeItinerary_IW3
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 60 )
			(itineraryIsReserved IW3)
			(trainInItinerary T14 IW3)
			(not (trainHasCompletedItinerary T14 IW3))
			(not (trainHasExitedStation T14))
		)
		:effect (and
			(trainHasCompletedItinerary T14 IW3)
		)
	)
	(:event T14_completeBinBit_IW3_cdbaa
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 7 )
			(trainInItinerary T14 IW3)
			(binBitIsBlocked cdbaa)
		)
		:effect (and
			(not (binBitIsBlocked cdbaa))
		)
	)
	(:event T14_completeBinBit_IW3_cdbac
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 15 )
			(trainInItinerary T14 IW3)
			(binBitIsBlocked cdbac)
		)
		:effect (and
			(not (binBitIsBlocked cdbac))
		)
	)
	(:event T14_completeBinBit_IW3_cdbaf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 22 )
			(trainInItinerary T14 IW3)
			(binBitIsBlocked cdbaf)
		)
		:effect (and
			(not (binBitIsBlocked cdbaf))
		)
	)
	(:event T14_completeBinBit_IW3_cdbaj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 30 )
			(trainInItinerary T14 IW3)
			(binBitIsBlocked cdbaj)
		)
		:effect (and
			(not (binBitIsBlocked cdbaj))
		)
	)
	(:event T14_completeBinBit_IW3_cdbam
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 37 )
			(trainInItinerary T14 IW3)
			(binBitIsBlocked cdbam)
		)
		:effect (and
			(not (binBitIsBlocked cdbam))
		)
	)
	(:event T14_completeBinBit_IW3_cdbar
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 45 )
			(trainInItinerary T14 IW3)
			(binBitIsBlocked cdbar)
		)
		:effect (and
			(not (binBitIsBlocked cdbar))
		)
	)
	(:event T14_completeBinBit_IW3_cdbaw
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 52 )
			(trainInItinerary T14 IW3)
			(binBitIsBlocked cdbaw)
		)
		:effect (and
			(not (binBitIsBlocked cdbaw))
		)
	)
	(:event T14_completeItinerary_I3E
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3E) 60 )
			(itineraryIsReserved I3E)
			(trainInItinerary T14 I3E)
			(not (trainHasCompletedItinerary T14 I3E))
			(not (trainHasExitedStation T14))
		)
		:effect (and
			(trainHasCompletedItinerary T14 I3E)
		)
	)
	(:event T14_completeBinBit_I3E_cdbbg
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3E) 12 )
			(trainInItinerary T14 I3E)
			(binBitIsBlocked cdbbg)
		)
		:effect (and
			(not (binBitIsBlocked cdbbg))
		)
	)
	(:event T14_completeBinBit_I3E_cdbbj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3E) 24 )
			(trainInItinerary T14 I3E)
			(binBitIsBlocked cdbbj)
		)
		:effect (and
			(not (binBitIsBlocked cdbbj))
		)
	)
	(:event T14_completeBinBit_I3E_cdbbl
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3E) 36 )
			(trainInItinerary T14 I3E)
			(binBitIsBlocked cdbbl)
		)
		:effect (and
			(not (binBitIsBlocked cdbbl))
		)
	)
	(:event T14_completeBinBit_I3E_cdbbo
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3E) 48 )
			(trainInItinerary T14 I3E)
			(binBitIsBlocked cdbbo)
		)
		:effect (and
			(not (binBitIsBlocked cdbbo))
		)
	)
	(:event T14_completeItinerary_IW4
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 60 )
			(itineraryIsReserved IW4)
			(trainInItinerary T14 IW4)
			(not (trainHasCompletedItinerary T14 IW4))
			(not (trainHasExitedStation T14))
		)
		:effect (and
			(trainHasCompletedItinerary T14 IW4)
		)
	)
	(:event T14_completeBinBit_IW4_cdbaa
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 7 )
			(trainInItinerary T14 IW4)
			(binBitIsBlocked cdbaa)
		)
		:effect (and
			(not (binBitIsBlocked cdbaa))
		)
	)
	(:event T14_completeBinBit_IW4_cdbac
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 15 )
			(trainInItinerary T14 IW4)
			(binBitIsBlocked cdbac)
		)
		:effect (and
			(not (binBitIsBlocked cdbac))
		)
	)
	(:event T14_completeBinBit_IW4_cdbag
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 22 )
			(trainInItinerary T14 IW4)
			(binBitIsBlocked cdbag)
		)
		:effect (and
			(not (binBitIsBlocked cdbag))
		)
	)
	(:event T14_completeBinBit_IW4_cdbak
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 30 )
			(trainInItinerary T14 IW4)
			(binBitIsBlocked cdbak)
		)
		:effect (and
			(not (binBitIsBlocked cdbak))
		)
	)
	(:event T14_completeBinBit_IW4_cdban
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 37 )
			(trainInItinerary T14 IW4)
			(binBitIsBlocked cdban)
		)
		:effect (and
			(not (binBitIsBlocked cdban))
		)
	)
	(:event T14_completeBinBit_IW4_cdbas
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 45 )
			(trainInItinerary T14 IW4)
			(binBitIsBlocked cdbas)
		)
		:effect (and
			(not (binBitIsBlocked cdbas))
		)
	)
	(:event T14_completeBinBit_IW4_cdbax
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 52 )
			(trainInItinerary T14 IW4)
			(binBitIsBlocked cdbax)
		)
		:effect (and
			(not (binBitIsBlocked cdbax))
		)
	)
	(:event T14_completeItinerary_I4E
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4E) 60 )
			(itineraryIsReserved I4E)
			(trainInItinerary T14 I4E)
			(not (trainHasCompletedItinerary T14 I4E))
			(not (trainHasExitedStation T14))
		)
		:effect (and
			(trainHasCompletedItinerary T14 I4E)
		)
	)
	(:event T14_completeBinBit_I4E_cdbbh
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4E) 12 )
			(trainInItinerary T14 I4E)
			(binBitIsBlocked cdbbh)
		)
		:effect (and
			(not (binBitIsBlocked cdbbh))
		)
	)
	(:event T14_completeBinBit_I4E_cdbbk
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4E) 24 )
			(trainInItinerary T14 I4E)
			(binBitIsBlocked cdbbk)
		)
		:effect (and
			(not (binBitIsBlocked cdbbk))
		)
	)
	(:event T14_completeBinBit_I4E_cdbbm
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4E) 36 )
			(trainInItinerary T14 I4E)
			(binBitIsBlocked cdbbm)
		)
		:effect (and
			(not (binBitIsBlocked cdbbm))
		)
	)
	(:event T14_completeBinBit_I4E_cdbbo
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4E) 48 )
			(trainInItinerary T14 I4E)
			(binBitIsBlocked cdbbo)
		)
		:effect (and
			(not (binBitIsBlocked cdbbo))
		)
	)
	(:event T14_completeItinerary_IW5
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 60 )
			(itineraryIsReserved IW5)
			(trainInItinerary T14 IW5)
			(not (trainHasCompletedItinerary T14 IW5))
			(not (trainHasExitedStation T14))
		)
		:effect (and
			(trainHasCompletedItinerary T14 IW5)
		)
	)
	(:event T14_completeBinBit_IW5_cdbaa
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 7 )
			(trainInItinerary T14 IW5)
			(binBitIsBlocked cdbaa)
		)
		:effect (and
			(not (binBitIsBlocked cdbaa))
		)
	)
	(:event T14_completeBinBit_IW5_cdbac
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 15 )
			(trainInItinerary T14 IW5)
			(binBitIsBlocked cdbac)
		)
		:effect (and
			(not (binBitIsBlocked cdbac))
		)
	)
	(:event T14_completeBinBit_IW5_cdbag
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 22 )
			(trainInItinerary T14 IW5)
			(binBitIsBlocked cdbag)
		)
		:effect (and
			(not (binBitIsBlocked cdbag))
		)
	)
	(:event T14_completeBinBit_IW5_cdbak
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 30 )
			(trainInItinerary T14 IW5)
			(binBitIsBlocked cdbak)
		)
		:effect (and
			(not (binBitIsBlocked cdbak))
		)
	)
	(:event T14_completeBinBit_IW5_cdbao
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 37 )
			(trainInItinerary T14 IW5)
			(binBitIsBlocked cdbao)
		)
		:effect (and
			(not (binBitIsBlocked cdbao))
		)
	)
	(:event T14_completeBinBit_IW5_cdbat
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 45 )
			(trainInItinerary T14 IW5)
			(binBitIsBlocked cdbat)
		)
		:effect (and
			(not (binBitIsBlocked cdbat))
		)
	)
	(:event T14_completeBinBit_IW5_cdbay
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 52 )
			(trainInItinerary T14 IW5)
			(binBitIsBlocked cdbay)
		)
		:effect (and
			(not (binBitIsBlocked cdbay))
		)
	)
	(:event T14_completeItinerary_I5E
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5E) 60 )
			(itineraryIsReserved I5E)
			(trainInItinerary T14 I5E)
			(not (trainHasCompletedItinerary T14 I5E))
			(not (trainHasExitedStation T14))
		)
		:effect (and
			(trainHasCompletedItinerary T14 I5E)
		)
	)
	(:event T14_completeBinBit_I5E_cdbbi
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5E) 12 )
			(trainInItinerary T14 I5E)
			(binBitIsBlocked cdbbi)
		)
		:effect (and
			(not (binBitIsBlocked cdbbi))
		)
	)
	(:event T14_completeBinBit_I5E_cdbbk
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5E) 24 )
			(trainInItinerary T14 I5E)
			(binBitIsBlocked cdbbk)
		)
		:effect (and
			(not (binBitIsBlocked cdbbk))
		)
	)
	(:event T14_completeBinBit_I5E_cdbbm
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5E) 36 )
			(trainInItinerary T14 I5E)
			(binBitIsBlocked cdbbm)
		)
		:effect (and
			(not (binBitIsBlocked cdbbm))
		)
	)
	(:event T14_completeBinBit_I5E_cdbbo
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5E) 48 )
			(trainInItinerary T14 I5E)
			(binBitIsBlocked cdbbo)
		)
		:effect (and
			(not (binBitIsBlocked cdbbo))
		)
	)
	(:action T14_overlaps_IW1_I1E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T14 IW1)
			(trainInItinerary T14 IW1)
			(not (trainIsStopping T14))
			(not (itineraryIsReserved I1E))
			(not (flagIsBlockedDueToOverlap F1R))
			(not (binBitIsBlocked cdbbe))
			(not (binBitIsBlocked cdbbl))
			(not (binBitIsBlocked cdbbo))
			(not (binBitIsBlocked cdbbr))
		)
		:effect (and
			(itineraryIsReserved I1E)
			(trainInItinerary T14 I1E)
			(trainIsOverlapping T14)
			(flagIsBlockedDueToOverlap F1R)
			(binBitIsBlocked cdbbe)
			(binBitIsBlocked cdbbl)
			(binBitIsBlocked cdbbo)
			(binBitIsBlocked cdbbr)
		)
	)
	(:event T14_endOverlap_IW1_I1E
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F1R) 1 )
			(flagIsBlockedDueToOverlap F1R)
			(trainInItinerary T14 IW1)
			(trainInItinerary T14 I1E)
		)
		:effect (and
			(not (itineraryIsReserved IW1))
			(not (trainIsOverlapping T14))
			(assign (timeElapsedReservedItinerary IW1) 0 )
			(not (trainInItinerary T14 IW1))
			(not (flagIsBlockedDueToOverlap F1R))
			(assign (timeElapsedOverlappedFlag F1R) 0 )
			(not (binBitIsBlocked cdbaz))
		)
	)
	(:action T14_overlaps_IW2_I2E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T14 IW2)
			(trainInItinerary T14 IW2)
			(not (trainIsStopping T14))
			(not (itineraryIsReserved I2E))
			(not (flagIsBlockedDueToOverlap F2R))
			(not (binBitIsBlocked cdbbf))
			(not (binBitIsBlocked cdbbj))
			(not (binBitIsBlocked cdbbl))
			(not (binBitIsBlocked cdbbo))
			(not (binBitIsBlocked cdbbr))
		)
		:effect (and
			(itineraryIsReserved I2E)
			(trainInItinerary T14 I2E)
			(trainIsOverlapping T14)
			(flagIsBlockedDueToOverlap F2R)
			(binBitIsBlocked cdbbf)
			(binBitIsBlocked cdbbj)
			(binBitIsBlocked cdbbl)
			(binBitIsBlocked cdbbo)
			(binBitIsBlocked cdbbr)
		)
	)
	(:event T14_endOverlap_IW2_I2E
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F2R) 1 )
			(flagIsBlockedDueToOverlap F2R)
			(trainInItinerary T14 IW2)
			(trainInItinerary T14 I2E)
		)
		:effect (and
			(not (itineraryIsReserved IW2))
			(not (trainIsOverlapping T14))
			(assign (timeElapsedReservedItinerary IW2) 0 )
			(not (trainInItinerary T14 IW2))
			(not (flagIsBlockedDueToOverlap F2R))
			(assign (timeElapsedOverlappedFlag F2R) 0 )
			(not (binBitIsBlocked cdbba))
		)
	)
	(:action T14_overlaps_IW3_I3E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T14 IW3)
			(trainInItinerary T14 IW3)
			(not (trainIsStopping T14))
			(not (itineraryIsReserved I3E))
			(not (flagIsBlockedDueToOverlap F3R))
			(not (binBitIsBlocked cdbbg))
			(not (binBitIsBlocked cdbbj))
			(not (binBitIsBlocked cdbbl))
			(not (binBitIsBlocked cdbbo))
			(not (binBitIsBlocked cdbbr))
		)
		:effect (and
			(itineraryIsReserved I3E)
			(trainInItinerary T14 I3E)
			(trainIsOverlapping T14)
			(flagIsBlockedDueToOverlap F3R)
			(binBitIsBlocked cdbbg)
			(binBitIsBlocked cdbbj)
			(binBitIsBlocked cdbbl)
			(binBitIsBlocked cdbbo)
			(binBitIsBlocked cdbbr)
		)
	)
	(:event T14_endOverlap_IW3_I3E
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F3R) 1 )
			(flagIsBlockedDueToOverlap F3R)
			(trainInItinerary T14 IW3)
			(trainInItinerary T14 I3E)
		)
		:effect (and
			(not (itineraryIsReserved IW3))
			(not (trainIsOverlapping T14))
			(assign (timeElapsedReservedItinerary IW3) 0 )
			(not (trainInItinerary T14 IW3))
			(not (flagIsBlockedDueToOverlap F3R))
			(assign (timeElapsedOverlappedFlag F3R) 0 )
			(not (binBitIsBlocked cdbbb))
		)
	)
	(:action T14_overlaps_IW4_I4E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T14 IW4)
			(trainInItinerary T14 IW4)
			(not (trainIsStopping T14))
			(not (itineraryIsReserved I4E))
			(not (flagIsBlockedDueToOverlap F4R))
			(not (binBitIsBlocked cdbbh))
			(not (binBitIsBlocked cdbbk))
			(not (binBitIsBlocked cdbbm))
			(not (binBitIsBlocked cdbbo))
			(not (binBitIsBlocked cdbbr))
		)
		:effect (and
			(itineraryIsReserved I4E)
			(trainInItinerary T14 I4E)
			(trainIsOverlapping T14)
			(flagIsBlockedDueToOverlap F4R)
			(binBitIsBlocked cdbbh)
			(binBitIsBlocked cdbbk)
			(binBitIsBlocked cdbbm)
			(binBitIsBlocked cdbbo)
			(binBitIsBlocked cdbbr)
		)
	)
	(:event T14_endOverlap_IW4_I4E
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F4R) 1 )
			(flagIsBlockedDueToOverlap F4R)
			(trainInItinerary T14 IW4)
			(trainInItinerary T14 I4E)
		)
		:effect (and
			(not (itineraryIsReserved IW4))
			(not (trainIsOverlapping T14))
			(assign (timeElapsedReservedItinerary IW4) 0 )
			(not (trainInItinerary T14 IW4))
			(not (flagIsBlockedDueToOverlap F4R))
			(assign (timeElapsedOverlappedFlag F4R) 0 )
			(not (binBitIsBlocked cdbbc))
		)
	)
	(:action T14_overlaps_IW5_I5E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T14 IW5)
			(trainInItinerary T14 IW5)
			(not (trainIsStopping T14))
			(not (itineraryIsReserved I5E))
			(not (flagIsBlockedDueToOverlap F5R))
			(not (binBitIsBlocked cdbbi))
			(not (binBitIsBlocked cdbbk))
			(not (binBitIsBlocked cdbbm))
			(not (binBitIsBlocked cdbbo))
			(not (binBitIsBlocked cdbbr))
		)
		:effect (and
			(itineraryIsReserved I5E)
			(trainInItinerary T14 I5E)
			(trainIsOverlapping T14)
			(flagIsBlockedDueToOverlap F5R)
			(binBitIsBlocked cdbbi)
			(binBitIsBlocked cdbbk)
			(binBitIsBlocked cdbbm)
			(binBitIsBlocked cdbbo)
			(binBitIsBlocked cdbbr)
		)
	)
	(:event T14_endOverlap_IW5_I5E
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F5R) 1 )
			(flagIsBlockedDueToOverlap F5R)
			(trainInItinerary T14 IW5)
			(trainInItinerary T14 I5E)
		)
		:effect (and
			(not (itineraryIsReserved IW5))
			(not (trainIsOverlapping T14))
			(assign (timeElapsedReservedItinerary IW5) 0 )
			(not (trainInItinerary T14 IW5))
			(not (flagIsBlockedDueToOverlap F5R))
			(assign (timeElapsedOverlappedFlag F5R) 0 )
			(not (binBitIsBlocked cdbbd))
		)
	)
	(:event T15_arrivesAtEndpoint_E_plus
		:parameters()
		:precondition (and
			(>= time  650 )
			(not (trainHasEnteredStation T15))
			(not (trainIsAtEndpoint T15 E_plus))
		)
		:effect (and
			(trainIsAtEndpoint T15 E_plus)
			(trainHasArrivedAtStation T15)
			(assign (trainEntryIndex T15) (trainsArrivedAtEndpoint E_plus))
			(increase (trainsArrivedAtEndpoint E_plus) 1 )
		)
	)
	(:action T15_entersStation_IE5
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T15 E_plus)
			(not (trainHasExitedStation T15))
			(not (trainHasEnteredStation T15))
			(= (trainEntryIndex T15) (trainsEnteredFromEndpoint E_plus))
			(not (binBitIsBlocked cdbbs))
			(not (binBitIsBlocked cdbbq))
			(not (binBitIsBlocked cdbbn))
			(not (binBitIsBlocked cdbbk))
			(not (binBitIsBlocked cdbbi))
			(not (binBitIsBlocked cdbbd))
			(not (binBitIsBlocked cdbay))
			(not (binBitIsBlocked cdbat))
		)
		:effect (and
			(not (trainIsAtEndpoint T15 E_plus))
			(itineraryIsReserved IE5)
			(not (trainEntersStationAt T15 F04))
			(trainInItinerary T15 IE5)
			(trainHasEnteredStation T15)
			(increase (trainsEnteredFromEndpoint E_plus) 1 )
			(binBitIsBlocked cdbbs)
			(binBitIsBlocked cdbbq)
			(binBitIsBlocked cdbbn)
			(binBitIsBlocked cdbbk)
			(binBitIsBlocked cdbbi)
			(binBitIsBlocked cdbbd)
			(binBitIsBlocked cdbay)
			(binBitIsBlocked cdbat)
		)
	)
	(:event T15_completeItinerary_IE5
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 60 )
			(itineraryIsReserved IE5)
			(trainInItinerary T15 IE5)
			(not (trainHasCompletedItinerary T15 IE5))
			(not (trainHasExitedStation T15))
		)
		:effect (and
			(trainHasCompletedItinerary T15 IE5)
		)
	)
	(:event T15_completeBinBit_IE5_cdbbs
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 7 )
			(trainInItinerary T15 IE5)
			(binBitIsBlocked cdbbs)
		)
		:effect (and
			(not (binBitIsBlocked cdbbs))
		)
	)
	(:event T15_completeBinBit_IE5_cdbbq
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 15 )
			(trainInItinerary T15 IE5)
			(binBitIsBlocked cdbbq)
		)
		:effect (and
			(not (binBitIsBlocked cdbbq))
		)
	)
	(:event T15_completeBinBit_IE5_cdbbn
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 22 )
			(trainInItinerary T15 IE5)
			(binBitIsBlocked cdbbn)
		)
		:effect (and
			(not (binBitIsBlocked cdbbn))
		)
	)
	(:event T15_completeBinBit_IE5_cdbbk
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 30 )
			(trainInItinerary T15 IE5)
			(binBitIsBlocked cdbbk)
		)
		:effect (and
			(not (binBitIsBlocked cdbbk))
		)
	)
	(:event T15_completeBinBit_IE5_cdbbi
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 37 )
			(trainInItinerary T15 IE5)
			(binBitIsBlocked cdbbi)
		)
		:effect (and
			(not (binBitIsBlocked cdbbi))
		)
	)
	(:event T15_completeBinBit_IE5_cdbbd
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 45 )
			(trainInItinerary T15 IE5)
			(binBitIsBlocked cdbbd)
		)
		:effect (and
			(not (binBitIsBlocked cdbbd))
		)
	)
	(:event T15_completeBinBit_IE5_cdbay
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 52 )
			(trainInItinerary T15 IE5)
			(binBitIsBlocked cdbay)
		)
		:effect (and
			(not (binBitIsBlocked cdbay))
		)
	)
	(:action T15_beginStop_IE5_S_V
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T15 IE5)
			(trainInItinerary T15 IE5)
			(not (trainIsOverlapping T15))
			(not (stopIsOccupied S_V))
			(not (trainIsStopping T15))
			(not (trainHasStoppedAtStop T15 S_V))
		)
		:effect (and
			(trainIsStoppingAtStop T15 S_V)
			(trainHasReachedTheStop T15 S_V)
			(trainHasReachedAStop T15)
			(trainIsStopping T15)
			(assign (trainStopTime T15) 0 )
			(stopIsOccupied S_V)
			(not (itineraryIsReserved IE5))
		)
	)
	(:event T15_endStop_IE5_S_V
		:parameters()
		:precondition (and
			(>= (trainStopTime T15) 100 )
			(trainInItinerary T15 IE5)
			(trainIsStoppingAtStop T15 S_V)
			(stopIsOccupied S_V)
		)
		:effect (and
			(assign (trainStopTime T15) 0 )
			(not (trainIsStoppingAtStop T15 S_V))
			(not (trainIsStopping T15))
			(trainHasStoppedAtStop T15 S_V)
			(trainHasStopped T15)
			(not (stopIsOccupied S_V))
			(not (binBitIsBlocked cdbbs))
			(not (binBitIsBlocked cdbbq))
			(not (binBitIsBlocked cdbbn))
			(not (binBitIsBlocked cdbbk))
			(not (binBitIsBlocked cdbbi))
			(not (binBitIsBlocked cdbbd))
			(not (binBitIsBlocked cdbay))
			(not (binBitIsBlocked cdbat))
		)
	)
	(:action T15_trainEndsVoy_IE5_S_V
		:parameters()
		:precondition (and
			(trainInItinerary T15 IE5)
			(trainHasStopped T15)
			(trainHasStoppedAtStop T15 S_V)
			(not (trainHasEndedVoy T15))
		)
		:effect (and
			(not (trainInItinerary T15 IE5))
			(trainHasExitedStation T15)
			(trainHasEndedVoy T15)
			(assign (timeElapsedReservedItinerary IE5) 0 )
		)
	)
	(:event T16_arrivesAtEndpoint_W_plus
		:parameters()
		:precondition (and
			(>= time  1878 )
			(not (trainHasEnteredStation T16))
			(not (trainIsAtEndpoint T16 W_plus))
		)
		:effect (and
			(trainIsAtEndpoint T16 W_plus)
			(trainHasArrivedAtStation T16)
			(assign (trainEntryIndex T16) (trainsArrivedAtEndpoint W_plus))
			(increase (trainsArrivedAtEndpoint W_plus) 1 )
		)
	)
	(:action T16_entersStation_IW1
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T16 W_plus)
			(not (trainHasExitedStation T16))
			(not (trainHasEnteredStation T16))
			(= (trainEntryIndex T16) (trainsEnteredFromEndpoint W_plus))
			(not (binBitIsBlocked cdbaa))
			(not (binBitIsBlocked cdbac))
			(not (binBitIsBlocked cdbaf))
			(not (binBitIsBlocked cdbai))
			(not (binBitIsBlocked cdbap))
			(not (binBitIsBlocked cdbau))
			(not (binBitIsBlocked cdbaz))
		)
		:effect (and
			(not (trainIsAtEndpoint T16 W_plus))
			(itineraryIsReserved IW1)
			(not (trainEntersStationAt T16 F01))
			(trainInItinerary T16 IW1)
			(trainHasEnteredStation T16)
			(increase (trainsEnteredFromEndpoint W_plus) 1 )
			(binBitIsBlocked cdbaa)
			(binBitIsBlocked cdbac)
			(binBitIsBlocked cdbaf)
			(binBitIsBlocked cdbai)
			(binBitIsBlocked cdbap)
			(binBitIsBlocked cdbau)
			(binBitIsBlocked cdbaz)
		)
	)
	(:action T16_entersStation_IW2
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T16 W_plus)
			(not (trainHasExitedStation T16))
			(not (trainHasEnteredStation T16))
			(= (trainEntryIndex T16) (trainsEnteredFromEndpoint W_plus))
			(not (binBitIsBlocked cdbaa))
			(not (binBitIsBlocked cdbac))
			(not (binBitIsBlocked cdbaf))
			(not (binBitIsBlocked cdbaj))
			(not (binBitIsBlocked cdbal))
			(not (binBitIsBlocked cdbaq))
			(not (binBitIsBlocked cdbav))
			(not (binBitIsBlocked cdbba))
		)
		:effect (and
			(not (trainIsAtEndpoint T16 W_plus))
			(itineraryIsReserved IW2)
			(not (trainEntersStationAt T16 F01))
			(trainInItinerary T16 IW2)
			(trainHasEnteredStation T16)
			(increase (trainsEnteredFromEndpoint W_plus) 1 )
			(binBitIsBlocked cdbaa)
			(binBitIsBlocked cdbac)
			(binBitIsBlocked cdbaf)
			(binBitIsBlocked cdbaj)
			(binBitIsBlocked cdbal)
			(binBitIsBlocked cdbaq)
			(binBitIsBlocked cdbav)
			(binBitIsBlocked cdbba)
		)
	)
	(:action T16_entersStation_IW3
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T16 W_plus)
			(not (trainHasExitedStation T16))
			(not (trainHasEnteredStation T16))
			(= (trainEntryIndex T16) (trainsEnteredFromEndpoint W_plus))
			(not (binBitIsBlocked cdbaa))
			(not (binBitIsBlocked cdbac))
			(not (binBitIsBlocked cdbaf))
			(not (binBitIsBlocked cdbaj))
			(not (binBitIsBlocked cdbam))
			(not (binBitIsBlocked cdbar))
			(not (binBitIsBlocked cdbaw))
			(not (binBitIsBlocked cdbbb))
		)
		:effect (and
			(not (trainIsAtEndpoint T16 W_plus))
			(itineraryIsReserved IW3)
			(not (trainEntersStationAt T16 F01))
			(trainInItinerary T16 IW3)
			(trainHasEnteredStation T16)
			(increase (trainsEnteredFromEndpoint W_plus) 1 )
			(binBitIsBlocked cdbaa)
			(binBitIsBlocked cdbac)
			(binBitIsBlocked cdbaf)
			(binBitIsBlocked cdbaj)
			(binBitIsBlocked cdbam)
			(binBitIsBlocked cdbar)
			(binBitIsBlocked cdbaw)
			(binBitIsBlocked cdbbb)
		)
	)
	(:action T16_entersStation_IW4
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T16 W_plus)
			(not (trainHasExitedStation T16))
			(not (trainHasEnteredStation T16))
			(= (trainEntryIndex T16) (trainsEnteredFromEndpoint W_plus))
			(not (binBitIsBlocked cdbaa))
			(not (binBitIsBlocked cdbac))
			(not (binBitIsBlocked cdbag))
			(not (binBitIsBlocked cdbak))
			(not (binBitIsBlocked cdban))
			(not (binBitIsBlocked cdbas))
			(not (binBitIsBlocked cdbax))
			(not (binBitIsBlocked cdbbc))
		)
		:effect (and
			(not (trainIsAtEndpoint T16 W_plus))
			(itineraryIsReserved IW4)
			(not (trainEntersStationAt T16 F01))
			(trainInItinerary T16 IW4)
			(trainHasEnteredStation T16)
			(increase (trainsEnteredFromEndpoint W_plus) 1 )
			(binBitIsBlocked cdbaa)
			(binBitIsBlocked cdbac)
			(binBitIsBlocked cdbag)
			(binBitIsBlocked cdbak)
			(binBitIsBlocked cdban)
			(binBitIsBlocked cdbas)
			(binBitIsBlocked cdbax)
			(binBitIsBlocked cdbbc)
		)
	)
	(:action T16_entersStation_IW5
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T16 W_plus)
			(not (trainHasExitedStation T16))
			(not (trainHasEnteredStation T16))
			(= (trainEntryIndex T16) (trainsEnteredFromEndpoint W_plus))
			(not (binBitIsBlocked cdbaa))
			(not (binBitIsBlocked cdbac))
			(not (binBitIsBlocked cdbag))
			(not (binBitIsBlocked cdbak))
			(not (binBitIsBlocked cdbao))
			(not (binBitIsBlocked cdbat))
			(not (binBitIsBlocked cdbay))
			(not (binBitIsBlocked cdbbd))
		)
		:effect (and
			(not (trainIsAtEndpoint T16 W_plus))
			(itineraryIsReserved IW5)
			(not (trainEntersStationAt T16 F01))
			(trainInItinerary T16 IW5)
			(trainHasEnteredStation T16)
			(increase (trainsEnteredFromEndpoint W_plus) 1 )
			(binBitIsBlocked cdbaa)
			(binBitIsBlocked cdbac)
			(binBitIsBlocked cdbag)
			(binBitIsBlocked cdbak)
			(binBitIsBlocked cdbao)
			(binBitIsBlocked cdbat)
			(binBitIsBlocked cdbay)
			(binBitIsBlocked cdbbd)
		)
	)
	(:action T16_exitsStation_I1E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T16 I1E)
			(not (trainHasExitedStation T16))
		)
		:effect (and
			(not (itineraryIsReserved I1E))
			(not (trainInItinerary T16 I1E))
			(trainExitsStationAt T16 F03)
			(assign (timeElapsedReservedItinerary I1E) 0 )
			(trainHasExitedStation T16)
			(not (binBitIsBlocked cdbbr))
		)
	)
	(:action T16_exitsStation_I2E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T16 I2E)
			(not (trainHasExitedStation T16))
		)
		:effect (and
			(not (itineraryIsReserved I2E))
			(not (trainInItinerary T16 I2E))
			(trainExitsStationAt T16 F03)
			(assign (timeElapsedReservedItinerary I2E) 0 )
			(trainHasExitedStation T16)
			(not (binBitIsBlocked cdbbr))
		)
	)
	(:action T16_exitsStation_I3E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T16 I3E)
			(not (trainHasExitedStation T16))
		)
		:effect (and
			(not (itineraryIsReserved I3E))
			(not (trainInItinerary T16 I3E))
			(trainExitsStationAt T16 F03)
			(assign (timeElapsedReservedItinerary I3E) 0 )
			(trainHasExitedStation T16)
			(not (binBitIsBlocked cdbbr))
		)
	)
	(:action T16_exitsStation_I4E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T16 I4E)
			(not (trainHasExitedStation T16))
		)
		:effect (and
			(not (itineraryIsReserved I4E))
			(not (trainInItinerary T16 I4E))
			(trainExitsStationAt T16 F03)
			(assign (timeElapsedReservedItinerary I4E) 0 )
			(trainHasExitedStation T16)
			(not (binBitIsBlocked cdbbr))
		)
	)
	(:action T16_exitsStation_I5E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T16 I5E)
			(not (trainHasExitedStation T16))
		)
		:effect (and
			(not (itineraryIsReserved I5E))
			(not (trainInItinerary T16 I5E))
			(trainExitsStationAt T16 F03)
			(assign (timeElapsedReservedItinerary I5E) 0 )
			(trainHasExitedStation T16)
			(not (binBitIsBlocked cdbbr))
		)
	)
	(:event T16_completeItinerary_IW1
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 60 )
			(itineraryIsReserved IW1)
			(trainInItinerary T16 IW1)
			(not (trainHasCompletedItinerary T16 IW1))
			(not (trainHasExitedStation T16))
		)
		:effect (and
			(trainHasCompletedItinerary T16 IW1)
		)
	)
	(:event T16_completeBinBit_IW1_cdbaa
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 8 )
			(trainInItinerary T16 IW1)
			(binBitIsBlocked cdbaa)
		)
		:effect (and
			(not (binBitIsBlocked cdbaa))
		)
	)
	(:event T16_completeBinBit_IW1_cdbac
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 17 )
			(trainInItinerary T16 IW1)
			(binBitIsBlocked cdbac)
		)
		:effect (and
			(not (binBitIsBlocked cdbac))
		)
	)
	(:event T16_completeBinBit_IW1_cdbaf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 25 )
			(trainInItinerary T16 IW1)
			(binBitIsBlocked cdbaf)
		)
		:effect (and
			(not (binBitIsBlocked cdbaf))
		)
	)
	(:event T16_completeBinBit_IW1_cdbai
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 34 )
			(trainInItinerary T16 IW1)
			(binBitIsBlocked cdbai)
		)
		:effect (and
			(not (binBitIsBlocked cdbai))
		)
	)
	(:event T16_completeBinBit_IW1_cdbap
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 42 )
			(trainInItinerary T16 IW1)
			(binBitIsBlocked cdbap)
		)
		:effect (and
			(not (binBitIsBlocked cdbap))
		)
	)
	(:event T16_completeBinBit_IW1_cdbau
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 51 )
			(trainInItinerary T16 IW1)
			(binBitIsBlocked cdbau)
		)
		:effect (and
			(not (binBitIsBlocked cdbau))
		)
	)
	(:event T16_completeItinerary_I1E
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1E) 60 )
			(itineraryIsReserved I1E)
			(trainInItinerary T16 I1E)
			(not (trainHasCompletedItinerary T16 I1E))
			(not (trainHasExitedStation T16))
		)
		:effect (and
			(trainHasCompletedItinerary T16 I1E)
		)
	)
	(:event T16_completeBinBit_I1E_cdbbe
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1E) 15 )
			(trainInItinerary T16 I1E)
			(binBitIsBlocked cdbbe)
		)
		:effect (and
			(not (binBitIsBlocked cdbbe))
		)
	)
	(:event T16_completeBinBit_I1E_cdbbl
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1E) 30 )
			(trainInItinerary T16 I1E)
			(binBitIsBlocked cdbbl)
		)
		:effect (and
			(not (binBitIsBlocked cdbbl))
		)
	)
	(:event T16_completeBinBit_I1E_cdbbo
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1E) 45 )
			(trainInItinerary T16 I1E)
			(binBitIsBlocked cdbbo)
		)
		:effect (and
			(not (binBitIsBlocked cdbbo))
		)
	)
	(:event T16_completeItinerary_IW2
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 60 )
			(itineraryIsReserved IW2)
			(trainInItinerary T16 IW2)
			(not (trainHasCompletedItinerary T16 IW2))
			(not (trainHasExitedStation T16))
		)
		:effect (and
			(trainHasCompletedItinerary T16 IW2)
		)
	)
	(:event T16_completeBinBit_IW2_cdbaa
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 7 )
			(trainInItinerary T16 IW2)
			(binBitIsBlocked cdbaa)
		)
		:effect (and
			(not (binBitIsBlocked cdbaa))
		)
	)
	(:event T16_completeBinBit_IW2_cdbac
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 15 )
			(trainInItinerary T16 IW2)
			(binBitIsBlocked cdbac)
		)
		:effect (and
			(not (binBitIsBlocked cdbac))
		)
	)
	(:event T16_completeBinBit_IW2_cdbaf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 22 )
			(trainInItinerary T16 IW2)
			(binBitIsBlocked cdbaf)
		)
		:effect (and
			(not (binBitIsBlocked cdbaf))
		)
	)
	(:event T16_completeBinBit_IW2_cdbaj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 30 )
			(trainInItinerary T16 IW2)
			(binBitIsBlocked cdbaj)
		)
		:effect (and
			(not (binBitIsBlocked cdbaj))
		)
	)
	(:event T16_completeBinBit_IW2_cdbal
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 37 )
			(trainInItinerary T16 IW2)
			(binBitIsBlocked cdbal)
		)
		:effect (and
			(not (binBitIsBlocked cdbal))
		)
	)
	(:event T16_completeBinBit_IW2_cdbaq
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 45 )
			(trainInItinerary T16 IW2)
			(binBitIsBlocked cdbaq)
		)
		:effect (and
			(not (binBitIsBlocked cdbaq))
		)
	)
	(:event T16_completeBinBit_IW2_cdbav
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 52 )
			(trainInItinerary T16 IW2)
			(binBitIsBlocked cdbav)
		)
		:effect (and
			(not (binBitIsBlocked cdbav))
		)
	)
	(:event T16_completeItinerary_I2E
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2E) 60 )
			(itineraryIsReserved I2E)
			(trainInItinerary T16 I2E)
			(not (trainHasCompletedItinerary T16 I2E))
			(not (trainHasExitedStation T16))
		)
		:effect (and
			(trainHasCompletedItinerary T16 I2E)
		)
	)
	(:event T16_completeBinBit_I2E_cdbbf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2E) 12 )
			(trainInItinerary T16 I2E)
			(binBitIsBlocked cdbbf)
		)
		:effect (and
			(not (binBitIsBlocked cdbbf))
		)
	)
	(:event T16_completeBinBit_I2E_cdbbj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2E) 24 )
			(trainInItinerary T16 I2E)
			(binBitIsBlocked cdbbj)
		)
		:effect (and
			(not (binBitIsBlocked cdbbj))
		)
	)
	(:event T16_completeBinBit_I2E_cdbbl
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2E) 36 )
			(trainInItinerary T16 I2E)
			(binBitIsBlocked cdbbl)
		)
		:effect (and
			(not (binBitIsBlocked cdbbl))
		)
	)
	(:event T16_completeBinBit_I2E_cdbbo
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2E) 48 )
			(trainInItinerary T16 I2E)
			(binBitIsBlocked cdbbo)
		)
		:effect (and
			(not (binBitIsBlocked cdbbo))
		)
	)
	(:event T16_completeItinerary_IW3
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 60 )
			(itineraryIsReserved IW3)
			(trainInItinerary T16 IW3)
			(not (trainHasCompletedItinerary T16 IW3))
			(not (trainHasExitedStation T16))
		)
		:effect (and
			(trainHasCompletedItinerary T16 IW3)
		)
	)
	(:event T16_completeBinBit_IW3_cdbaa
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 7 )
			(trainInItinerary T16 IW3)
			(binBitIsBlocked cdbaa)
		)
		:effect (and
			(not (binBitIsBlocked cdbaa))
		)
	)
	(:event T16_completeBinBit_IW3_cdbac
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 15 )
			(trainInItinerary T16 IW3)
			(binBitIsBlocked cdbac)
		)
		:effect (and
			(not (binBitIsBlocked cdbac))
		)
	)
	(:event T16_completeBinBit_IW3_cdbaf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 22 )
			(trainInItinerary T16 IW3)
			(binBitIsBlocked cdbaf)
		)
		:effect (and
			(not (binBitIsBlocked cdbaf))
		)
	)
	(:event T16_completeBinBit_IW3_cdbaj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 30 )
			(trainInItinerary T16 IW3)
			(binBitIsBlocked cdbaj)
		)
		:effect (and
			(not (binBitIsBlocked cdbaj))
		)
	)
	(:event T16_completeBinBit_IW3_cdbam
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 37 )
			(trainInItinerary T16 IW3)
			(binBitIsBlocked cdbam)
		)
		:effect (and
			(not (binBitIsBlocked cdbam))
		)
	)
	(:event T16_completeBinBit_IW3_cdbar
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 45 )
			(trainInItinerary T16 IW3)
			(binBitIsBlocked cdbar)
		)
		:effect (and
			(not (binBitIsBlocked cdbar))
		)
	)
	(:event T16_completeBinBit_IW3_cdbaw
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 52 )
			(trainInItinerary T16 IW3)
			(binBitIsBlocked cdbaw)
		)
		:effect (and
			(not (binBitIsBlocked cdbaw))
		)
	)
	(:event T16_completeItinerary_I3E
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3E) 60 )
			(itineraryIsReserved I3E)
			(trainInItinerary T16 I3E)
			(not (trainHasCompletedItinerary T16 I3E))
			(not (trainHasExitedStation T16))
		)
		:effect (and
			(trainHasCompletedItinerary T16 I3E)
		)
	)
	(:event T16_completeBinBit_I3E_cdbbg
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3E) 12 )
			(trainInItinerary T16 I3E)
			(binBitIsBlocked cdbbg)
		)
		:effect (and
			(not (binBitIsBlocked cdbbg))
		)
	)
	(:event T16_completeBinBit_I3E_cdbbj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3E) 24 )
			(trainInItinerary T16 I3E)
			(binBitIsBlocked cdbbj)
		)
		:effect (and
			(not (binBitIsBlocked cdbbj))
		)
	)
	(:event T16_completeBinBit_I3E_cdbbl
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3E) 36 )
			(trainInItinerary T16 I3E)
			(binBitIsBlocked cdbbl)
		)
		:effect (and
			(not (binBitIsBlocked cdbbl))
		)
	)
	(:event T16_completeBinBit_I3E_cdbbo
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3E) 48 )
			(trainInItinerary T16 I3E)
			(binBitIsBlocked cdbbo)
		)
		:effect (and
			(not (binBitIsBlocked cdbbo))
		)
	)
	(:event T16_completeItinerary_IW4
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 60 )
			(itineraryIsReserved IW4)
			(trainInItinerary T16 IW4)
			(not (trainHasCompletedItinerary T16 IW4))
			(not (trainHasExitedStation T16))
		)
		:effect (and
			(trainHasCompletedItinerary T16 IW4)
		)
	)
	(:event T16_completeBinBit_IW4_cdbaa
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 7 )
			(trainInItinerary T16 IW4)
			(binBitIsBlocked cdbaa)
		)
		:effect (and
			(not (binBitIsBlocked cdbaa))
		)
	)
	(:event T16_completeBinBit_IW4_cdbac
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 15 )
			(trainInItinerary T16 IW4)
			(binBitIsBlocked cdbac)
		)
		:effect (and
			(not (binBitIsBlocked cdbac))
		)
	)
	(:event T16_completeBinBit_IW4_cdbag
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 22 )
			(trainInItinerary T16 IW4)
			(binBitIsBlocked cdbag)
		)
		:effect (and
			(not (binBitIsBlocked cdbag))
		)
	)
	(:event T16_completeBinBit_IW4_cdbak
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 30 )
			(trainInItinerary T16 IW4)
			(binBitIsBlocked cdbak)
		)
		:effect (and
			(not (binBitIsBlocked cdbak))
		)
	)
	(:event T16_completeBinBit_IW4_cdban
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 37 )
			(trainInItinerary T16 IW4)
			(binBitIsBlocked cdban)
		)
		:effect (and
			(not (binBitIsBlocked cdban))
		)
	)
	(:event T16_completeBinBit_IW4_cdbas
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 45 )
			(trainInItinerary T16 IW4)
			(binBitIsBlocked cdbas)
		)
		:effect (and
			(not (binBitIsBlocked cdbas))
		)
	)
	(:event T16_completeBinBit_IW4_cdbax
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 52 )
			(trainInItinerary T16 IW4)
			(binBitIsBlocked cdbax)
		)
		:effect (and
			(not (binBitIsBlocked cdbax))
		)
	)
	(:event T16_completeItinerary_I4E
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4E) 60 )
			(itineraryIsReserved I4E)
			(trainInItinerary T16 I4E)
			(not (trainHasCompletedItinerary T16 I4E))
			(not (trainHasExitedStation T16))
		)
		:effect (and
			(trainHasCompletedItinerary T16 I4E)
		)
	)
	(:event T16_completeBinBit_I4E_cdbbh
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4E) 12 )
			(trainInItinerary T16 I4E)
			(binBitIsBlocked cdbbh)
		)
		:effect (and
			(not (binBitIsBlocked cdbbh))
		)
	)
	(:event T16_completeBinBit_I4E_cdbbk
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4E) 24 )
			(trainInItinerary T16 I4E)
			(binBitIsBlocked cdbbk)
		)
		:effect (and
			(not (binBitIsBlocked cdbbk))
		)
	)
	(:event T16_completeBinBit_I4E_cdbbm
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4E) 36 )
			(trainInItinerary T16 I4E)
			(binBitIsBlocked cdbbm)
		)
		:effect (and
			(not (binBitIsBlocked cdbbm))
		)
	)
	(:event T16_completeBinBit_I4E_cdbbo
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4E) 48 )
			(trainInItinerary T16 I4E)
			(binBitIsBlocked cdbbo)
		)
		:effect (and
			(not (binBitIsBlocked cdbbo))
		)
	)
	(:event T16_completeItinerary_IW5
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 60 )
			(itineraryIsReserved IW5)
			(trainInItinerary T16 IW5)
			(not (trainHasCompletedItinerary T16 IW5))
			(not (trainHasExitedStation T16))
		)
		:effect (and
			(trainHasCompletedItinerary T16 IW5)
		)
	)
	(:event T16_completeBinBit_IW5_cdbaa
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 7 )
			(trainInItinerary T16 IW5)
			(binBitIsBlocked cdbaa)
		)
		:effect (and
			(not (binBitIsBlocked cdbaa))
		)
	)
	(:event T16_completeBinBit_IW5_cdbac
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 15 )
			(trainInItinerary T16 IW5)
			(binBitIsBlocked cdbac)
		)
		:effect (and
			(not (binBitIsBlocked cdbac))
		)
	)
	(:event T16_completeBinBit_IW5_cdbag
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 22 )
			(trainInItinerary T16 IW5)
			(binBitIsBlocked cdbag)
		)
		:effect (and
			(not (binBitIsBlocked cdbag))
		)
	)
	(:event T16_completeBinBit_IW5_cdbak
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 30 )
			(trainInItinerary T16 IW5)
			(binBitIsBlocked cdbak)
		)
		:effect (and
			(not (binBitIsBlocked cdbak))
		)
	)
	(:event T16_completeBinBit_IW5_cdbao
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 37 )
			(trainInItinerary T16 IW5)
			(binBitIsBlocked cdbao)
		)
		:effect (and
			(not (binBitIsBlocked cdbao))
		)
	)
	(:event T16_completeBinBit_IW5_cdbat
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 45 )
			(trainInItinerary T16 IW5)
			(binBitIsBlocked cdbat)
		)
		:effect (and
			(not (binBitIsBlocked cdbat))
		)
	)
	(:event T16_completeBinBit_IW5_cdbay
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 52 )
			(trainInItinerary T16 IW5)
			(binBitIsBlocked cdbay)
		)
		:effect (and
			(not (binBitIsBlocked cdbay))
		)
	)
	(:event T16_completeItinerary_I5E
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5E) 60 )
			(itineraryIsReserved I5E)
			(trainInItinerary T16 I5E)
			(not (trainHasCompletedItinerary T16 I5E))
			(not (trainHasExitedStation T16))
		)
		:effect (and
			(trainHasCompletedItinerary T16 I5E)
		)
	)
	(:event T16_completeBinBit_I5E_cdbbi
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5E) 12 )
			(trainInItinerary T16 I5E)
			(binBitIsBlocked cdbbi)
		)
		:effect (and
			(not (binBitIsBlocked cdbbi))
		)
	)
	(:event T16_completeBinBit_I5E_cdbbk
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5E) 24 )
			(trainInItinerary T16 I5E)
			(binBitIsBlocked cdbbk)
		)
		:effect (and
			(not (binBitIsBlocked cdbbk))
		)
	)
	(:event T16_completeBinBit_I5E_cdbbm
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5E) 36 )
			(trainInItinerary T16 I5E)
			(binBitIsBlocked cdbbm)
		)
		:effect (and
			(not (binBitIsBlocked cdbbm))
		)
	)
	(:event T16_completeBinBit_I5E_cdbbo
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5E) 48 )
			(trainInItinerary T16 I5E)
			(binBitIsBlocked cdbbo)
		)
		:effect (and
			(not (binBitIsBlocked cdbbo))
		)
	)
	(:action T16_overlaps_IW1_I1E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T16 IW1)
			(trainInItinerary T16 IW1)
			(not (trainIsStopping T16))
			(not (itineraryIsReserved I1E))
			(not (flagIsBlockedDueToOverlap F1R))
			(not (binBitIsBlocked cdbbe))
			(not (binBitIsBlocked cdbbl))
			(not (binBitIsBlocked cdbbo))
			(not (binBitIsBlocked cdbbr))
		)
		:effect (and
			(itineraryIsReserved I1E)
			(trainInItinerary T16 I1E)
			(trainIsOverlapping T16)
			(flagIsBlockedDueToOverlap F1R)
			(binBitIsBlocked cdbbe)
			(binBitIsBlocked cdbbl)
			(binBitIsBlocked cdbbo)
			(binBitIsBlocked cdbbr)
		)
	)
	(:event T16_endOverlap_IW1_I1E
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F1R) 1 )
			(flagIsBlockedDueToOverlap F1R)
			(trainInItinerary T16 IW1)
			(trainInItinerary T16 I1E)
		)
		:effect (and
			(not (itineraryIsReserved IW1))
			(not (trainIsOverlapping T16))
			(assign (timeElapsedReservedItinerary IW1) 0 )
			(not (trainInItinerary T16 IW1))
			(not (flagIsBlockedDueToOverlap F1R))
			(assign (timeElapsedOverlappedFlag F1R) 0 )
			(not (binBitIsBlocked cdbaz))
		)
	)
	(:action T16_overlaps_IW2_I2E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T16 IW2)
			(trainInItinerary T16 IW2)
			(not (trainIsStopping T16))
			(not (itineraryIsReserved I2E))
			(not (flagIsBlockedDueToOverlap F2R))
			(not (binBitIsBlocked cdbbf))
			(not (binBitIsBlocked cdbbj))
			(not (binBitIsBlocked cdbbl))
			(not (binBitIsBlocked cdbbo))
			(not (binBitIsBlocked cdbbr))
		)
		:effect (and
			(itineraryIsReserved I2E)
			(trainInItinerary T16 I2E)
			(trainIsOverlapping T16)
			(flagIsBlockedDueToOverlap F2R)
			(binBitIsBlocked cdbbf)
			(binBitIsBlocked cdbbj)
			(binBitIsBlocked cdbbl)
			(binBitIsBlocked cdbbo)
			(binBitIsBlocked cdbbr)
		)
	)
	(:event T16_endOverlap_IW2_I2E
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F2R) 1 )
			(flagIsBlockedDueToOverlap F2R)
			(trainInItinerary T16 IW2)
			(trainInItinerary T16 I2E)
		)
		:effect (and
			(not (itineraryIsReserved IW2))
			(not (trainIsOverlapping T16))
			(assign (timeElapsedReservedItinerary IW2) 0 )
			(not (trainInItinerary T16 IW2))
			(not (flagIsBlockedDueToOverlap F2R))
			(assign (timeElapsedOverlappedFlag F2R) 0 )
			(not (binBitIsBlocked cdbba))
		)
	)
	(:action T16_overlaps_IW3_I3E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T16 IW3)
			(trainInItinerary T16 IW3)
			(not (trainIsStopping T16))
			(not (itineraryIsReserved I3E))
			(not (flagIsBlockedDueToOverlap F3R))
			(not (binBitIsBlocked cdbbg))
			(not (binBitIsBlocked cdbbj))
			(not (binBitIsBlocked cdbbl))
			(not (binBitIsBlocked cdbbo))
			(not (binBitIsBlocked cdbbr))
		)
		:effect (and
			(itineraryIsReserved I3E)
			(trainInItinerary T16 I3E)
			(trainIsOverlapping T16)
			(flagIsBlockedDueToOverlap F3R)
			(binBitIsBlocked cdbbg)
			(binBitIsBlocked cdbbj)
			(binBitIsBlocked cdbbl)
			(binBitIsBlocked cdbbo)
			(binBitIsBlocked cdbbr)
		)
	)
	(:event T16_endOverlap_IW3_I3E
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F3R) 1 )
			(flagIsBlockedDueToOverlap F3R)
			(trainInItinerary T16 IW3)
			(trainInItinerary T16 I3E)
		)
		:effect (and
			(not (itineraryIsReserved IW3))
			(not (trainIsOverlapping T16))
			(assign (timeElapsedReservedItinerary IW3) 0 )
			(not (trainInItinerary T16 IW3))
			(not (flagIsBlockedDueToOverlap F3R))
			(assign (timeElapsedOverlappedFlag F3R) 0 )
			(not (binBitIsBlocked cdbbb))
		)
	)
	(:action T16_overlaps_IW4_I4E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T16 IW4)
			(trainInItinerary T16 IW4)
			(not (trainIsStopping T16))
			(not (itineraryIsReserved I4E))
			(not (flagIsBlockedDueToOverlap F4R))
			(not (binBitIsBlocked cdbbh))
			(not (binBitIsBlocked cdbbk))
			(not (binBitIsBlocked cdbbm))
			(not (binBitIsBlocked cdbbo))
			(not (binBitIsBlocked cdbbr))
		)
		:effect (and
			(itineraryIsReserved I4E)
			(trainInItinerary T16 I4E)
			(trainIsOverlapping T16)
			(flagIsBlockedDueToOverlap F4R)
			(binBitIsBlocked cdbbh)
			(binBitIsBlocked cdbbk)
			(binBitIsBlocked cdbbm)
			(binBitIsBlocked cdbbo)
			(binBitIsBlocked cdbbr)
		)
	)
	(:event T16_endOverlap_IW4_I4E
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F4R) 1 )
			(flagIsBlockedDueToOverlap F4R)
			(trainInItinerary T16 IW4)
			(trainInItinerary T16 I4E)
		)
		:effect (and
			(not (itineraryIsReserved IW4))
			(not (trainIsOverlapping T16))
			(assign (timeElapsedReservedItinerary IW4) 0 )
			(not (trainInItinerary T16 IW4))
			(not (flagIsBlockedDueToOverlap F4R))
			(assign (timeElapsedOverlappedFlag F4R) 0 )
			(not (binBitIsBlocked cdbbc))
		)
	)
	(:action T16_overlaps_IW5_I5E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T16 IW5)
			(trainInItinerary T16 IW5)
			(not (trainIsStopping T16))
			(not (itineraryIsReserved I5E))
			(not (flagIsBlockedDueToOverlap F5R))
			(not (binBitIsBlocked cdbbi))
			(not (binBitIsBlocked cdbbk))
			(not (binBitIsBlocked cdbbm))
			(not (binBitIsBlocked cdbbo))
			(not (binBitIsBlocked cdbbr))
		)
		:effect (and
			(itineraryIsReserved I5E)
			(trainInItinerary T16 I5E)
			(trainIsOverlapping T16)
			(flagIsBlockedDueToOverlap F5R)
			(binBitIsBlocked cdbbi)
			(binBitIsBlocked cdbbk)
			(binBitIsBlocked cdbbm)
			(binBitIsBlocked cdbbo)
			(binBitIsBlocked cdbbr)
		)
	)
	(:event T16_endOverlap_IW5_I5E
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F5R) 1 )
			(flagIsBlockedDueToOverlap F5R)
			(trainInItinerary T16 IW5)
			(trainInItinerary T16 I5E)
		)
		:effect (and
			(not (itineraryIsReserved IW5))
			(not (trainIsOverlapping T16))
			(assign (timeElapsedReservedItinerary IW5) 0 )
			(not (trainInItinerary T16 IW5))
			(not (flagIsBlockedDueToOverlap F5R))
			(assign (timeElapsedOverlappedFlag F5R) 0 )
			(not (binBitIsBlocked cdbbd))
		)
	)
	(:action T17_exitsStation_I1W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T17 I1W)
			(not (trainHasExitedStation T17))
		)
		:effect (and
			(not (itineraryIsReserved I1W))
			(not (trainInItinerary T17 I1W))
			(trainExitsStationAt T17 F02)
			(assign (timeElapsedReservedItinerary I1W) 0 )
			(trainHasExitedStation T17)
			(not (binBitIsBlocked cdbab))
		)
	)
	(:action T17_exitsStation_I2W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T17 I2W)
			(not (trainHasExitedStation T17))
		)
		:effect (and
			(not (itineraryIsReserved I2W))
			(not (trainInItinerary T17 I2W))
			(trainExitsStationAt T17 F02)
			(assign (timeElapsedReservedItinerary I2W) 0 )
			(trainHasExitedStation T17)
			(not (binBitIsBlocked cdbab))
		)
	)
	(:action T17_exitsStation_I3W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T17 I3W)
			(not (trainHasExitedStation T17))
		)
		:effect (and
			(not (itineraryIsReserved I3W))
			(not (trainInItinerary T17 I3W))
			(trainExitsStationAt T17 F02)
			(assign (timeElapsedReservedItinerary I3W) 0 )
			(trainHasExitedStation T17)
			(not (binBitIsBlocked cdbab))
		)
	)
	(:action T17_exitsStation_I4W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T17 I4W)
			(not (trainHasExitedStation T17))
		)
		:effect (and
			(not (itineraryIsReserved I4W))
			(not (trainInItinerary T17 I4W))
			(trainExitsStationAt T17 F02)
			(assign (timeElapsedReservedItinerary I4W) 0 )
			(trainHasExitedStation T17)
			(not (binBitIsBlocked cdbab))
		)
	)
	(:action T17_exitsStation_I5W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T17 I5W)
			(not (trainHasExitedStation T17))
		)
		:effect (and
			(not (itineraryIsReserved I5W))
			(not (trainInItinerary T17 I5W))
			(trainExitsStationAt T17 F02)
			(assign (timeElapsedReservedItinerary I5W) 0 )
			(trainHasExitedStation T17)
			(not (binBitIsBlocked cdbab))
		)
	)
	(:event T17_arrivesAtEndpoint_E_plus
		:parameters()
		:precondition (and
			(>= time  2018 )
			(not (trainHasEnteredStation T17))
			(not (trainIsAtEndpoint T17 E_plus))
		)
		:effect (and
			(trainIsAtEndpoint T17 E_plus)
			(trainHasArrivedAtStation T17)
			(assign (trainEntryIndex T17) (trainsArrivedAtEndpoint E_plus))
			(increase (trainsArrivedAtEndpoint E_plus) 1 )
		)
	)
	(:action T17_entersStation_IE1
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T17 E_plus)
			(not (trainHasExitedStation T17))
			(not (trainHasEnteredStation T17))
			(= (trainEntryIndex T17) (trainsEnteredFromEndpoint E_plus))
			(not (binBitIsBlocked cdbbs))
			(not (binBitIsBlocked cdbbp))
			(not (binBitIsBlocked cdbbl))
			(not (binBitIsBlocked cdbbe))
			(not (binBitIsBlocked cdbaz))
			(not (binBitIsBlocked cdbau))
			(not (binBitIsBlocked cdbap))
		)
		:effect (and
			(not (trainIsAtEndpoint T17 E_plus))
			(itineraryIsReserved IE1)
			(not (trainEntersStationAt T17 F04))
			(trainInItinerary T17 IE1)
			(trainHasEnteredStation T17)
			(increase (trainsEnteredFromEndpoint E_plus) 1 )
			(binBitIsBlocked cdbbs)
			(binBitIsBlocked cdbbp)
			(binBitIsBlocked cdbbl)
			(binBitIsBlocked cdbbe)
			(binBitIsBlocked cdbaz)
			(binBitIsBlocked cdbau)
			(binBitIsBlocked cdbap)
		)
	)
	(:action T17_entersStation_IE2
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T17 E_plus)
			(not (trainHasExitedStation T17))
			(not (trainHasEnteredStation T17))
			(= (trainEntryIndex T17) (trainsEnteredFromEndpoint E_plus))
			(not (binBitIsBlocked cdbbs))
			(not (binBitIsBlocked cdbbp))
			(not (binBitIsBlocked cdbbl))
			(not (binBitIsBlocked cdbbj))
			(not (binBitIsBlocked cdbbf))
			(not (binBitIsBlocked cdbba))
			(not (binBitIsBlocked cdbav))
			(not (binBitIsBlocked cdbaq))
		)
		:effect (and
			(not (trainIsAtEndpoint T17 E_plus))
			(itineraryIsReserved IE2)
			(not (trainEntersStationAt T17 F04))
			(trainInItinerary T17 IE2)
			(trainHasEnteredStation T17)
			(increase (trainsEnteredFromEndpoint E_plus) 1 )
			(binBitIsBlocked cdbbs)
			(binBitIsBlocked cdbbp)
			(binBitIsBlocked cdbbl)
			(binBitIsBlocked cdbbj)
			(binBitIsBlocked cdbbf)
			(binBitIsBlocked cdbba)
			(binBitIsBlocked cdbav)
			(binBitIsBlocked cdbaq)
		)
	)
	(:action T17_entersStation_IE3
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T17 E_plus)
			(not (trainHasExitedStation T17))
			(not (trainHasEnteredStation T17))
			(= (trainEntryIndex T17) (trainsEnteredFromEndpoint E_plus))
			(not (binBitIsBlocked cdbbs))
			(not (binBitIsBlocked cdbbp))
			(not (binBitIsBlocked cdbbl))
			(not (binBitIsBlocked cdbbj))
			(not (binBitIsBlocked cdbbg))
			(not (binBitIsBlocked cdbbb))
			(not (binBitIsBlocked cdbaw))
			(not (binBitIsBlocked cdbar))
		)
		:effect (and
			(not (trainIsAtEndpoint T17 E_plus))
			(itineraryIsReserved IE3)
			(not (trainEntersStationAt T17 F04))
			(trainInItinerary T17 IE3)
			(trainHasEnteredStation T17)
			(increase (trainsEnteredFromEndpoint E_plus) 1 )
			(binBitIsBlocked cdbbs)
			(binBitIsBlocked cdbbp)
			(binBitIsBlocked cdbbl)
			(binBitIsBlocked cdbbj)
			(binBitIsBlocked cdbbg)
			(binBitIsBlocked cdbbb)
			(binBitIsBlocked cdbaw)
			(binBitIsBlocked cdbar)
		)
	)
	(:action T17_entersStation_IE4
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T17 E_plus)
			(not (trainHasExitedStation T17))
			(not (trainHasEnteredStation T17))
			(= (trainEntryIndex T17) (trainsEnteredFromEndpoint E_plus))
			(not (binBitIsBlocked cdbbs))
			(not (binBitIsBlocked cdbbq))
			(not (binBitIsBlocked cdbbn))
			(not (binBitIsBlocked cdbbk))
			(not (binBitIsBlocked cdbbh))
			(not (binBitIsBlocked cdbbc))
			(not (binBitIsBlocked cdbax))
			(not (binBitIsBlocked cdbas))
		)
		:effect (and
			(not (trainIsAtEndpoint T17 E_plus))
			(itineraryIsReserved IE4)
			(not (trainEntersStationAt T17 F04))
			(trainInItinerary T17 IE4)
			(trainHasEnteredStation T17)
			(increase (trainsEnteredFromEndpoint E_plus) 1 )
			(binBitIsBlocked cdbbs)
			(binBitIsBlocked cdbbq)
			(binBitIsBlocked cdbbn)
			(binBitIsBlocked cdbbk)
			(binBitIsBlocked cdbbh)
			(binBitIsBlocked cdbbc)
			(binBitIsBlocked cdbax)
			(binBitIsBlocked cdbas)
		)
	)
	(:action T17_entersStation_IE5
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T17 E_plus)
			(not (trainHasExitedStation T17))
			(not (trainHasEnteredStation T17))
			(= (trainEntryIndex T17) (trainsEnteredFromEndpoint E_plus))
			(not (binBitIsBlocked cdbbs))
			(not (binBitIsBlocked cdbbq))
			(not (binBitIsBlocked cdbbn))
			(not (binBitIsBlocked cdbbk))
			(not (binBitIsBlocked cdbbi))
			(not (binBitIsBlocked cdbbd))
			(not (binBitIsBlocked cdbay))
			(not (binBitIsBlocked cdbat))
		)
		:effect (and
			(not (trainIsAtEndpoint T17 E_plus))
			(itineraryIsReserved IE5)
			(not (trainEntersStationAt T17 F04))
			(trainInItinerary T17 IE5)
			(trainHasEnteredStation T17)
			(increase (trainsEnteredFromEndpoint E_plus) 1 )
			(binBitIsBlocked cdbbs)
			(binBitIsBlocked cdbbq)
			(binBitIsBlocked cdbbn)
			(binBitIsBlocked cdbbk)
			(binBitIsBlocked cdbbi)
			(binBitIsBlocked cdbbd)
			(binBitIsBlocked cdbay)
			(binBitIsBlocked cdbat)
		)
	)
	(:event T17_completeItinerary_IE1
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 60 )
			(itineraryIsReserved IE1)
			(trainInItinerary T17 IE1)
			(not (trainHasCompletedItinerary T17 IE1))
			(not (trainHasExitedStation T17))
		)
		:effect (and
			(trainHasCompletedItinerary T17 IE1)
		)
	)
	(:event T17_completeBinBit_IE1_cdbbs
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 8 )
			(trainInItinerary T17 IE1)
			(binBitIsBlocked cdbbs)
		)
		:effect (and
			(not (binBitIsBlocked cdbbs))
		)
	)
	(:event T17_completeBinBit_IE1_cdbbp
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 17 )
			(trainInItinerary T17 IE1)
			(binBitIsBlocked cdbbp)
		)
		:effect (and
			(not (binBitIsBlocked cdbbp))
		)
	)
	(:event T17_completeBinBit_IE1_cdbbl
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 25 )
			(trainInItinerary T17 IE1)
			(binBitIsBlocked cdbbl)
		)
		:effect (and
			(not (binBitIsBlocked cdbbl))
		)
	)
	(:event T17_completeBinBit_IE1_cdbbe
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 34 )
			(trainInItinerary T17 IE1)
			(binBitIsBlocked cdbbe)
		)
		:effect (and
			(not (binBitIsBlocked cdbbe))
		)
	)
	(:event T17_completeBinBit_IE1_cdbaz
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 42 )
			(trainInItinerary T17 IE1)
			(binBitIsBlocked cdbaz)
		)
		:effect (and
			(not (binBitIsBlocked cdbaz))
		)
	)
	(:event T17_completeBinBit_IE1_cdbau
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 51 )
			(trainInItinerary T17 IE1)
			(binBitIsBlocked cdbau)
		)
		:effect (and
			(not (binBitIsBlocked cdbau))
		)
	)
	(:action T17_beginStop_IE1_S_I
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T17 IE1)
			(trainInItinerary T17 IE1)
			(not (trainIsOverlapping T17))
			(not (stopIsOccupied S_I))
			(not (trainIsStopping T17))
			(not (trainHasStoppedAtStop T17 S_I))
		)
		:effect (and
			(trainIsStoppingAtStop T17 S_I)
			(trainHasReachedTheStop T17 S_I)
			(trainHasReachedAStop T17)
			(trainIsStopping T17)
			(assign (trainStopTime T17) 0 )
			(stopIsOccupied S_I)
			(not (itineraryIsReserved IE1))
		)
	)
	(:event T17_endStop_IE1_S_I
		:parameters()
		:precondition (and
			(>= (trainStopTime T17) 100 )
			(trainInItinerary T17 IE1)
			(trainIsStoppingAtStop T17 S_I)
			(stopIsOccupied S_I)
		)
		:effect (and
			(assign (trainStopTime T17) 0 )
			(not (trainIsStoppingAtStop T17 S_I))
			(not (trainIsStopping T17))
			(trainHasStoppedAtStop T17 S_I)
			(trainHasStopped T17)
			(not (stopIsOccupied S_I))
			(not (binBitIsBlocked cdbbs))
			(not (binBitIsBlocked cdbbp))
			(not (binBitIsBlocked cdbbl))
			(not (binBitIsBlocked cdbbe))
			(not (binBitIsBlocked cdbaz))
			(not (binBitIsBlocked cdbau))
			(not (binBitIsBlocked cdbap))
		)
	)
	(:event T17_completeItinerary_I1W
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1W) 60 )
			(itineraryIsReserved I1W)
			(trainInItinerary T17 I1W)
			(not (trainHasCompletedItinerary T17 I1W))
			(not (trainHasExitedStation T17))
		)
		:effect (and
			(trainHasCompletedItinerary T17 I1W)
		)
	)
	(:event T17_completeBinBit_I1W_cdbai
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1W) 15 )
			(trainInItinerary T17 I1W)
			(binBitIsBlocked cdbai)
		)
		:effect (and
			(not (binBitIsBlocked cdbai))
		)
	)
	(:event T17_completeBinBit_I1W_cdbaf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1W) 30 )
			(trainInItinerary T17 I1W)
			(binBitIsBlocked cdbaf)
		)
		:effect (and
			(not (binBitIsBlocked cdbaf))
		)
	)
	(:event T17_completeBinBit_I1W_cdbad
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1W) 45 )
			(trainInItinerary T17 I1W)
			(binBitIsBlocked cdbad)
		)
		:effect (and
			(not (binBitIsBlocked cdbad))
		)
	)
	(:event T17_completeItinerary_IE2
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 60 )
			(itineraryIsReserved IE2)
			(trainInItinerary T17 IE2)
			(not (trainHasCompletedItinerary T17 IE2))
			(not (trainHasExitedStation T17))
		)
		:effect (and
			(trainHasCompletedItinerary T17 IE2)
		)
	)
	(:event T17_completeBinBit_IE2_cdbbs
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 7 )
			(trainInItinerary T17 IE2)
			(binBitIsBlocked cdbbs)
		)
		:effect (and
			(not (binBitIsBlocked cdbbs))
		)
	)
	(:event T17_completeBinBit_IE2_cdbbp
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 15 )
			(trainInItinerary T17 IE2)
			(binBitIsBlocked cdbbp)
		)
		:effect (and
			(not (binBitIsBlocked cdbbp))
		)
	)
	(:event T17_completeBinBit_IE2_cdbbl
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 22 )
			(trainInItinerary T17 IE2)
			(binBitIsBlocked cdbbl)
		)
		:effect (and
			(not (binBitIsBlocked cdbbl))
		)
	)
	(:event T17_completeBinBit_IE2_cdbbj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 30 )
			(trainInItinerary T17 IE2)
			(binBitIsBlocked cdbbj)
		)
		:effect (and
			(not (binBitIsBlocked cdbbj))
		)
	)
	(:event T17_completeBinBit_IE2_cdbbf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 37 )
			(trainInItinerary T17 IE2)
			(binBitIsBlocked cdbbf)
		)
		:effect (and
			(not (binBitIsBlocked cdbbf))
		)
	)
	(:event T17_completeBinBit_IE2_cdbba
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 45 )
			(trainInItinerary T17 IE2)
			(binBitIsBlocked cdbba)
		)
		:effect (and
			(not (binBitIsBlocked cdbba))
		)
	)
	(:event T17_completeBinBit_IE2_cdbav
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 52 )
			(trainInItinerary T17 IE2)
			(binBitIsBlocked cdbav)
		)
		:effect (and
			(not (binBitIsBlocked cdbav))
		)
	)
	(:action T17_beginStop_IE2_S_II
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T17 IE2)
			(trainInItinerary T17 IE2)
			(not (trainIsOverlapping T17))
			(not (stopIsOccupied S_II))
			(not (trainIsStopping T17))
			(not (trainHasStoppedAtStop T17 S_II))
		)
		:effect (and
			(trainIsStoppingAtStop T17 S_II)
			(trainHasReachedTheStop T17 S_II)
			(trainHasReachedAStop T17)
			(trainIsStopping T17)
			(assign (trainStopTime T17) 0 )
			(stopIsOccupied S_II)
			(not (itineraryIsReserved IE2))
		)
	)
	(:event T17_endStop_IE2_S_II
		:parameters()
		:precondition (and
			(>= (trainStopTime T17) 100 )
			(trainInItinerary T17 IE2)
			(trainIsStoppingAtStop T17 S_II)
			(stopIsOccupied S_II)
		)
		:effect (and
			(assign (trainStopTime T17) 0 )
			(not (trainIsStoppingAtStop T17 S_II))
			(not (trainIsStopping T17))
			(trainHasStoppedAtStop T17 S_II)
			(trainHasStopped T17)
			(not (stopIsOccupied S_II))
			(not (binBitIsBlocked cdbbs))
			(not (binBitIsBlocked cdbbp))
			(not (binBitIsBlocked cdbbl))
			(not (binBitIsBlocked cdbbj))
			(not (binBitIsBlocked cdbbf))
			(not (binBitIsBlocked cdbba))
			(not (binBitIsBlocked cdbav))
			(not (binBitIsBlocked cdbaq))
		)
	)
	(:event T17_completeItinerary_I2W
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2W) 60 )
			(itineraryIsReserved I2W)
			(trainInItinerary T17 I2W)
			(not (trainHasCompletedItinerary T17 I2W))
			(not (trainHasExitedStation T17))
		)
		:effect (and
			(trainHasCompletedItinerary T17 I2W)
		)
	)
	(:event T17_completeBinBit_I2W_cdbal
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2W) 12 )
			(trainInItinerary T17 I2W)
			(binBitIsBlocked cdbal)
		)
		:effect (and
			(not (binBitIsBlocked cdbal))
		)
	)
	(:event T17_completeBinBit_I2W_cdbaj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2W) 24 )
			(trainInItinerary T17 I2W)
			(binBitIsBlocked cdbaj)
		)
		:effect (and
			(not (binBitIsBlocked cdbaj))
		)
	)
	(:event T17_completeBinBit_I2W_cdbaf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2W) 36 )
			(trainInItinerary T17 I2W)
			(binBitIsBlocked cdbaf)
		)
		:effect (and
			(not (binBitIsBlocked cdbaf))
		)
	)
	(:event T17_completeBinBit_I2W_cdbad
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2W) 48 )
			(trainInItinerary T17 I2W)
			(binBitIsBlocked cdbad)
		)
		:effect (and
			(not (binBitIsBlocked cdbad))
		)
	)
	(:event T17_completeItinerary_IE3
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 60 )
			(itineraryIsReserved IE3)
			(trainInItinerary T17 IE3)
			(not (trainHasCompletedItinerary T17 IE3))
			(not (trainHasExitedStation T17))
		)
		:effect (and
			(trainHasCompletedItinerary T17 IE3)
		)
	)
	(:event T17_completeBinBit_IE3_cdbbs
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 7 )
			(trainInItinerary T17 IE3)
			(binBitIsBlocked cdbbs)
		)
		:effect (and
			(not (binBitIsBlocked cdbbs))
		)
	)
	(:event T17_completeBinBit_IE3_cdbbp
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 15 )
			(trainInItinerary T17 IE3)
			(binBitIsBlocked cdbbp)
		)
		:effect (and
			(not (binBitIsBlocked cdbbp))
		)
	)
	(:event T17_completeBinBit_IE3_cdbbl
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 22 )
			(trainInItinerary T17 IE3)
			(binBitIsBlocked cdbbl)
		)
		:effect (and
			(not (binBitIsBlocked cdbbl))
		)
	)
	(:event T17_completeBinBit_IE3_cdbbj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 30 )
			(trainInItinerary T17 IE3)
			(binBitIsBlocked cdbbj)
		)
		:effect (and
			(not (binBitIsBlocked cdbbj))
		)
	)
	(:event T17_completeBinBit_IE3_cdbbg
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 37 )
			(trainInItinerary T17 IE3)
			(binBitIsBlocked cdbbg)
		)
		:effect (and
			(not (binBitIsBlocked cdbbg))
		)
	)
	(:event T17_completeBinBit_IE3_cdbbb
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 45 )
			(trainInItinerary T17 IE3)
			(binBitIsBlocked cdbbb)
		)
		:effect (and
			(not (binBitIsBlocked cdbbb))
		)
	)
	(:event T17_completeBinBit_IE3_cdbaw
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 52 )
			(trainInItinerary T17 IE3)
			(binBitIsBlocked cdbaw)
		)
		:effect (and
			(not (binBitIsBlocked cdbaw))
		)
	)
	(:action T17_beginStop_IE3_S_III
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T17 IE3)
			(trainInItinerary T17 IE3)
			(not (trainIsOverlapping T17))
			(not (stopIsOccupied S_III))
			(not (trainIsStopping T17))
			(not (trainHasStoppedAtStop T17 S_III))
		)
		:effect (and
			(trainIsStoppingAtStop T17 S_III)
			(trainHasReachedTheStop T17 S_III)
			(trainHasReachedAStop T17)
			(trainIsStopping T17)
			(assign (trainStopTime T17) 0 )
			(stopIsOccupied S_III)
			(not (itineraryIsReserved IE3))
		)
	)
	(:event T17_endStop_IE3_S_III
		:parameters()
		:precondition (and
			(>= (trainStopTime T17) 100 )
			(trainInItinerary T17 IE3)
			(trainIsStoppingAtStop T17 S_III)
			(stopIsOccupied S_III)
		)
		:effect (and
			(assign (trainStopTime T17) 0 )
			(not (trainIsStoppingAtStop T17 S_III))
			(not (trainIsStopping T17))
			(trainHasStoppedAtStop T17 S_III)
			(trainHasStopped T17)
			(not (stopIsOccupied S_III))
			(not (binBitIsBlocked cdbbs))
			(not (binBitIsBlocked cdbbp))
			(not (binBitIsBlocked cdbbl))
			(not (binBitIsBlocked cdbbj))
			(not (binBitIsBlocked cdbbg))
			(not (binBitIsBlocked cdbbb))
			(not (binBitIsBlocked cdbaw))
			(not (binBitIsBlocked cdbar))
		)
	)
	(:event T17_completeItinerary_I3W
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3W) 60 )
			(itineraryIsReserved I3W)
			(trainInItinerary T17 I3W)
			(not (trainHasCompletedItinerary T17 I3W))
			(not (trainHasExitedStation T17))
		)
		:effect (and
			(trainHasCompletedItinerary T17 I3W)
		)
	)
	(:event T17_completeBinBit_I3W_cdbam
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3W) 12 )
			(trainInItinerary T17 I3W)
			(binBitIsBlocked cdbam)
		)
		:effect (and
			(not (binBitIsBlocked cdbam))
		)
	)
	(:event T17_completeBinBit_I3W_cdbaj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3W) 24 )
			(trainInItinerary T17 I3W)
			(binBitIsBlocked cdbaj)
		)
		:effect (and
			(not (binBitIsBlocked cdbaj))
		)
	)
	(:event T17_completeBinBit_I3W_cdbaf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3W) 36 )
			(trainInItinerary T17 I3W)
			(binBitIsBlocked cdbaf)
		)
		:effect (and
			(not (binBitIsBlocked cdbaf))
		)
	)
	(:event T17_completeBinBit_I3W_cdbad
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3W) 48 )
			(trainInItinerary T17 I3W)
			(binBitIsBlocked cdbad)
		)
		:effect (and
			(not (binBitIsBlocked cdbad))
		)
	)
	(:event T17_completeItinerary_IE4
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 60 )
			(itineraryIsReserved IE4)
			(trainInItinerary T17 IE4)
			(not (trainHasCompletedItinerary T17 IE4))
			(not (trainHasExitedStation T17))
		)
		:effect (and
			(trainHasCompletedItinerary T17 IE4)
		)
	)
	(:event T17_completeBinBit_IE4_cdbbs
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 7 )
			(trainInItinerary T17 IE4)
			(binBitIsBlocked cdbbs)
		)
		:effect (and
			(not (binBitIsBlocked cdbbs))
		)
	)
	(:event T17_completeBinBit_IE4_cdbbq
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 15 )
			(trainInItinerary T17 IE4)
			(binBitIsBlocked cdbbq)
		)
		:effect (and
			(not (binBitIsBlocked cdbbq))
		)
	)
	(:event T17_completeBinBit_IE4_cdbbn
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 22 )
			(trainInItinerary T17 IE4)
			(binBitIsBlocked cdbbn)
		)
		:effect (and
			(not (binBitIsBlocked cdbbn))
		)
	)
	(:event T17_completeBinBit_IE4_cdbbk
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 30 )
			(trainInItinerary T17 IE4)
			(binBitIsBlocked cdbbk)
		)
		:effect (and
			(not (binBitIsBlocked cdbbk))
		)
	)
	(:event T17_completeBinBit_IE4_cdbbh
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 37 )
			(trainInItinerary T17 IE4)
			(binBitIsBlocked cdbbh)
		)
		:effect (and
			(not (binBitIsBlocked cdbbh))
		)
	)
	(:event T17_completeBinBit_IE4_cdbbc
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 45 )
			(trainInItinerary T17 IE4)
			(binBitIsBlocked cdbbc)
		)
		:effect (and
			(not (binBitIsBlocked cdbbc))
		)
	)
	(:event T17_completeBinBit_IE4_cdbax
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 52 )
			(trainInItinerary T17 IE4)
			(binBitIsBlocked cdbax)
		)
		:effect (and
			(not (binBitIsBlocked cdbax))
		)
	)
	(:action T17_beginStop_IE4_S_IV
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T17 IE4)
			(trainInItinerary T17 IE4)
			(not (trainIsOverlapping T17))
			(not (stopIsOccupied S_IV))
			(not (trainIsStopping T17))
			(not (trainHasStoppedAtStop T17 S_IV))
		)
		:effect (and
			(trainIsStoppingAtStop T17 S_IV)
			(trainHasReachedTheStop T17 S_IV)
			(trainHasReachedAStop T17)
			(trainIsStopping T17)
			(assign (trainStopTime T17) 0 )
			(stopIsOccupied S_IV)
			(not (itineraryIsReserved IE4))
		)
	)
	(:event T17_endStop_IE4_S_IV
		:parameters()
		:precondition (and
			(>= (trainStopTime T17) 100 )
			(trainInItinerary T17 IE4)
			(trainIsStoppingAtStop T17 S_IV)
			(stopIsOccupied S_IV)
		)
		:effect (and
			(assign (trainStopTime T17) 0 )
			(not (trainIsStoppingAtStop T17 S_IV))
			(not (trainIsStopping T17))
			(trainHasStoppedAtStop T17 S_IV)
			(trainHasStopped T17)
			(not (stopIsOccupied S_IV))
			(not (binBitIsBlocked cdbbs))
			(not (binBitIsBlocked cdbbq))
			(not (binBitIsBlocked cdbbn))
			(not (binBitIsBlocked cdbbk))
			(not (binBitIsBlocked cdbbh))
			(not (binBitIsBlocked cdbbc))
			(not (binBitIsBlocked cdbax))
			(not (binBitIsBlocked cdbas))
		)
	)
	(:event T17_completeItinerary_I4W
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4W) 60 )
			(itineraryIsReserved I4W)
			(trainInItinerary T17 I4W)
			(not (trainHasCompletedItinerary T17 I4W))
			(not (trainHasExitedStation T17))
		)
		:effect (and
			(trainHasCompletedItinerary T17 I4W)
		)
	)
	(:event T17_completeBinBit_I4W_cdban
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4W) 12 )
			(trainInItinerary T17 I4W)
			(binBitIsBlocked cdban)
		)
		:effect (and
			(not (binBitIsBlocked cdban))
		)
	)
	(:event T17_completeBinBit_I4W_cdbak
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4W) 24 )
			(trainInItinerary T17 I4W)
			(binBitIsBlocked cdbak)
		)
		:effect (and
			(not (binBitIsBlocked cdbak))
		)
	)
	(:event T17_completeBinBit_I4W_cdbah
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4W) 36 )
			(trainInItinerary T17 I4W)
			(binBitIsBlocked cdbah)
		)
		:effect (and
			(not (binBitIsBlocked cdbah))
		)
	)
	(:event T17_completeBinBit_I4W_cdbae
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4W) 48 )
			(trainInItinerary T17 I4W)
			(binBitIsBlocked cdbae)
		)
		:effect (and
			(not (binBitIsBlocked cdbae))
		)
	)
	(:event T17_completeItinerary_IE5
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 60 )
			(itineraryIsReserved IE5)
			(trainInItinerary T17 IE5)
			(not (trainHasCompletedItinerary T17 IE5))
			(not (trainHasExitedStation T17))
		)
		:effect (and
			(trainHasCompletedItinerary T17 IE5)
		)
	)
	(:event T17_completeBinBit_IE5_cdbbs
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 7 )
			(trainInItinerary T17 IE5)
			(binBitIsBlocked cdbbs)
		)
		:effect (and
			(not (binBitIsBlocked cdbbs))
		)
	)
	(:event T17_completeBinBit_IE5_cdbbq
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 15 )
			(trainInItinerary T17 IE5)
			(binBitIsBlocked cdbbq)
		)
		:effect (and
			(not (binBitIsBlocked cdbbq))
		)
	)
	(:event T17_completeBinBit_IE5_cdbbn
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 22 )
			(trainInItinerary T17 IE5)
			(binBitIsBlocked cdbbn)
		)
		:effect (and
			(not (binBitIsBlocked cdbbn))
		)
	)
	(:event T17_completeBinBit_IE5_cdbbk
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 30 )
			(trainInItinerary T17 IE5)
			(binBitIsBlocked cdbbk)
		)
		:effect (and
			(not (binBitIsBlocked cdbbk))
		)
	)
	(:event T17_completeBinBit_IE5_cdbbi
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 37 )
			(trainInItinerary T17 IE5)
			(binBitIsBlocked cdbbi)
		)
		:effect (and
			(not (binBitIsBlocked cdbbi))
		)
	)
	(:event T17_completeBinBit_IE5_cdbbd
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 45 )
			(trainInItinerary T17 IE5)
			(binBitIsBlocked cdbbd)
		)
		:effect (and
			(not (binBitIsBlocked cdbbd))
		)
	)
	(:event T17_completeBinBit_IE5_cdbay
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 52 )
			(trainInItinerary T17 IE5)
			(binBitIsBlocked cdbay)
		)
		:effect (and
			(not (binBitIsBlocked cdbay))
		)
	)
	(:action T17_beginStop_IE5_S_V
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T17 IE5)
			(trainInItinerary T17 IE5)
			(not (trainIsOverlapping T17))
			(not (stopIsOccupied S_V))
			(not (trainIsStopping T17))
			(not (trainHasStoppedAtStop T17 S_V))
		)
		:effect (and
			(trainIsStoppingAtStop T17 S_V)
			(trainHasReachedTheStop T17 S_V)
			(trainHasReachedAStop T17)
			(trainIsStopping T17)
			(assign (trainStopTime T17) 0 )
			(stopIsOccupied S_V)
			(not (itineraryIsReserved IE5))
		)
	)
	(:event T17_endStop_IE5_S_V
		:parameters()
		:precondition (and
			(>= (trainStopTime T17) 100 )
			(trainInItinerary T17 IE5)
			(trainIsStoppingAtStop T17 S_V)
			(stopIsOccupied S_V)
		)
		:effect (and
			(assign (trainStopTime T17) 0 )
			(not (trainIsStoppingAtStop T17 S_V))
			(not (trainIsStopping T17))
			(trainHasStoppedAtStop T17 S_V)
			(trainHasStopped T17)
			(not (stopIsOccupied S_V))
			(not (binBitIsBlocked cdbbs))
			(not (binBitIsBlocked cdbbq))
			(not (binBitIsBlocked cdbbn))
			(not (binBitIsBlocked cdbbk))
			(not (binBitIsBlocked cdbbi))
			(not (binBitIsBlocked cdbbd))
			(not (binBitIsBlocked cdbay))
			(not (binBitIsBlocked cdbat))
		)
	)
	(:event T17_completeItinerary_I5W
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5W) 60 )
			(itineraryIsReserved I5W)
			(trainInItinerary T17 I5W)
			(not (trainHasCompletedItinerary T17 I5W))
			(not (trainHasExitedStation T17))
		)
		:effect (and
			(trainHasCompletedItinerary T17 I5W)
		)
	)
	(:event T17_completeBinBit_I5W_cdbao
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5W) 12 )
			(trainInItinerary T17 I5W)
			(binBitIsBlocked cdbao)
		)
		:effect (and
			(not (binBitIsBlocked cdbao))
		)
	)
	(:event T17_completeBinBit_I5W_cdbak
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5W) 24 )
			(trainInItinerary T17 I5W)
			(binBitIsBlocked cdbak)
		)
		:effect (and
			(not (binBitIsBlocked cdbak))
		)
	)
	(:event T17_completeBinBit_I5W_cdbah
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5W) 36 )
			(trainInItinerary T17 I5W)
			(binBitIsBlocked cdbah)
		)
		:effect (and
			(not (binBitIsBlocked cdbah))
		)
	)
	(:event T17_completeBinBit_I5W_cdbae
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5W) 48 )
			(trainInItinerary T17 I5W)
			(binBitIsBlocked cdbae)
		)
		:effect (and
			(not (binBitIsBlocked cdbae))
		)
	)
	(:action T17_overlaps_IE1_I1W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T17 IE1)
			(trainInItinerary T17 IE1)
			(not (trainIsStopping T17))
			(not (itineraryIsReserved I1W))
			(not (flagIsBlockedDueToOverlap F1L))
			(not (binBitIsBlocked cdbai))
			(not (binBitIsBlocked cdbaf))
			(not (binBitIsBlocked cdbad))
			(not (binBitIsBlocked cdbab))
			(trainHasStopped T17)
		)
		:effect (and
			(itineraryIsReserved I1W)
			(trainInItinerary T17 I1W)
			(trainIsOverlapping T17)
			(flagIsBlockedDueToOverlap F1L)
			(binBitIsBlocked cdbai)
			(binBitIsBlocked cdbaf)
			(binBitIsBlocked cdbad)
			(binBitIsBlocked cdbab)
		)
	)
	(:event T17_endOverlap_IE1_I1W
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F1L) 1 )
			(flagIsBlockedDueToOverlap F1L)
			(trainInItinerary T17 IE1)
			(trainInItinerary T17 I1W)
		)
		:effect (and
			(not (itineraryIsReserved IE1))
			(not (trainIsOverlapping T17))
			(assign (timeElapsedReservedItinerary IE1) 0 )
			(not (trainInItinerary T17 IE1))
			(not (flagIsBlockedDueToOverlap F1L))
			(assign (timeElapsedOverlappedFlag F1L) 0 )
			(not (binBitIsBlocked cdbap))
		)
	)
	(:action T17_overlaps_IE2_I2W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T17 IE2)
			(trainInItinerary T17 IE2)
			(not (trainIsStopping T17))
			(not (itineraryIsReserved I2W))
			(not (flagIsBlockedDueToOverlap F2L))
			(not (binBitIsBlocked cdbal))
			(not (binBitIsBlocked cdbaj))
			(not (binBitIsBlocked cdbaf))
			(not (binBitIsBlocked cdbad))
			(not (binBitIsBlocked cdbab))
			(trainHasStopped T17)
		)
		:effect (and
			(itineraryIsReserved I2W)
			(trainInItinerary T17 I2W)
			(trainIsOverlapping T17)
			(flagIsBlockedDueToOverlap F2L)
			(binBitIsBlocked cdbal)
			(binBitIsBlocked cdbaj)
			(binBitIsBlocked cdbaf)
			(binBitIsBlocked cdbad)
			(binBitIsBlocked cdbab)
		)
	)
	(:event T17_endOverlap_IE2_I2W
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F2L) 1 )
			(flagIsBlockedDueToOverlap F2L)
			(trainInItinerary T17 IE2)
			(trainInItinerary T17 I2W)
		)
		:effect (and
			(not (itineraryIsReserved IE2))
			(not (trainIsOverlapping T17))
			(assign (timeElapsedReservedItinerary IE2) 0 )
			(not (trainInItinerary T17 IE2))
			(not (flagIsBlockedDueToOverlap F2L))
			(assign (timeElapsedOverlappedFlag F2L) 0 )
			(not (binBitIsBlocked cdbaq))
		)
	)
	(:action T17_overlaps_IE3_I3W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T17 IE3)
			(trainInItinerary T17 IE3)
			(not (trainIsStopping T17))
			(not (itineraryIsReserved I3W))
			(not (flagIsBlockedDueToOverlap F3L))
			(not (binBitIsBlocked cdbam))
			(not (binBitIsBlocked cdbaj))
			(not (binBitIsBlocked cdbaf))
			(not (binBitIsBlocked cdbad))
			(not (binBitIsBlocked cdbab))
			(trainHasStopped T17)
		)
		:effect (and
			(itineraryIsReserved I3W)
			(trainInItinerary T17 I3W)
			(trainIsOverlapping T17)
			(flagIsBlockedDueToOverlap F3L)
			(binBitIsBlocked cdbam)
			(binBitIsBlocked cdbaj)
			(binBitIsBlocked cdbaf)
			(binBitIsBlocked cdbad)
			(binBitIsBlocked cdbab)
		)
	)
	(:event T17_endOverlap_IE3_I3W
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F3L) 1 )
			(flagIsBlockedDueToOverlap F3L)
			(trainInItinerary T17 IE3)
			(trainInItinerary T17 I3W)
		)
		:effect (and
			(not (itineraryIsReserved IE3))
			(not (trainIsOverlapping T17))
			(assign (timeElapsedReservedItinerary IE3) 0 )
			(not (trainInItinerary T17 IE3))
			(not (flagIsBlockedDueToOverlap F3L))
			(assign (timeElapsedOverlappedFlag F3L) 0 )
			(not (binBitIsBlocked cdbar))
		)
	)
	(:action T17_overlaps_IE4_I4W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T17 IE4)
			(trainInItinerary T17 IE4)
			(not (trainIsStopping T17))
			(not (itineraryIsReserved I4W))
			(not (flagIsBlockedDueToOverlap F4L))
			(not (binBitIsBlocked cdban))
			(not (binBitIsBlocked cdbak))
			(not (binBitIsBlocked cdbah))
			(not (binBitIsBlocked cdbae))
			(not (binBitIsBlocked cdbab))
			(trainHasStopped T17)
		)
		:effect (and
			(itineraryIsReserved I4W)
			(trainInItinerary T17 I4W)
			(trainIsOverlapping T17)
			(flagIsBlockedDueToOverlap F4L)
			(binBitIsBlocked cdban)
			(binBitIsBlocked cdbak)
			(binBitIsBlocked cdbah)
			(binBitIsBlocked cdbae)
			(binBitIsBlocked cdbab)
		)
	)
	(:event T17_endOverlap_IE4_I4W
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F4L) 1 )
			(flagIsBlockedDueToOverlap F4L)
			(trainInItinerary T17 IE4)
			(trainInItinerary T17 I4W)
		)
		:effect (and
			(not (itineraryIsReserved IE4))
			(not (trainIsOverlapping T17))
			(assign (timeElapsedReservedItinerary IE4) 0 )
			(not (trainInItinerary T17 IE4))
			(not (flagIsBlockedDueToOverlap F4L))
			(assign (timeElapsedOverlappedFlag F4L) 0 )
			(not (binBitIsBlocked cdbas))
		)
	)
	(:action T17_overlaps_IE5_I5W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T17 IE5)
			(trainInItinerary T17 IE5)
			(not (trainIsStopping T17))
			(not (itineraryIsReserved I5W))
			(not (flagIsBlockedDueToOverlap F5L))
			(not (binBitIsBlocked cdbao))
			(not (binBitIsBlocked cdbak))
			(not (binBitIsBlocked cdbah))
			(not (binBitIsBlocked cdbae))
			(not (binBitIsBlocked cdbab))
			(trainHasStopped T17)
		)
		:effect (and
			(itineraryIsReserved I5W)
			(trainInItinerary T17 I5W)
			(trainIsOverlapping T17)
			(flagIsBlockedDueToOverlap F5L)
			(binBitIsBlocked cdbao)
			(binBitIsBlocked cdbak)
			(binBitIsBlocked cdbah)
			(binBitIsBlocked cdbae)
			(binBitIsBlocked cdbab)
		)
	)
	(:event T17_endOverlap_IE5_I5W
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F5L) 1 )
			(flagIsBlockedDueToOverlap F5L)
			(trainInItinerary T17 IE5)
			(trainInItinerary T17 I5W)
		)
		:effect (and
			(not (itineraryIsReserved IE5))
			(not (trainIsOverlapping T17))
			(assign (timeElapsedReservedItinerary IE5) 0 )
			(not (trainInItinerary T17 IE5))
			(not (flagIsBlockedDueToOverlap F5L))
			(assign (timeElapsedOverlappedFlag F5L) 0 )
			(not (binBitIsBlocked cdbat))
		)
	)
	(:event T18_arrivesAtEndpoint_W_plus
		:parameters()
		:precondition (and
			(>= time  1929 )
			(not (trainHasEnteredStation T18))
			(not (trainIsAtEndpoint T18 W_plus))
		)
		:effect (and
			(trainIsAtEndpoint T18 W_plus)
			(trainHasArrivedAtStation T18)
			(assign (trainEntryIndex T18) (trainsArrivedAtEndpoint W_plus))
			(increase (trainsArrivedAtEndpoint W_plus) 1 )
		)
	)
	(:action T18_entersStation_IW1
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T18 W_plus)
			(not (trainHasExitedStation T18))
			(not (trainHasEnteredStation T18))
			(= (trainEntryIndex T18) (trainsEnteredFromEndpoint W_plus))
			(not (binBitIsBlocked cdbaa))
			(not (binBitIsBlocked cdbac))
			(not (binBitIsBlocked cdbaf))
			(not (binBitIsBlocked cdbai))
			(not (binBitIsBlocked cdbap))
			(not (binBitIsBlocked cdbau))
			(not (binBitIsBlocked cdbaz))
		)
		:effect (and
			(not (trainIsAtEndpoint T18 W_plus))
			(itineraryIsReserved IW1)
			(not (trainEntersStationAt T18 F01))
			(trainInItinerary T18 IW1)
			(trainHasEnteredStation T18)
			(increase (trainsEnteredFromEndpoint W_plus) 1 )
			(binBitIsBlocked cdbaa)
			(binBitIsBlocked cdbac)
			(binBitIsBlocked cdbaf)
			(binBitIsBlocked cdbai)
			(binBitIsBlocked cdbap)
			(binBitIsBlocked cdbau)
			(binBitIsBlocked cdbaz)
		)
	)
	(:action T18_entersStation_IW2
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T18 W_plus)
			(not (trainHasExitedStation T18))
			(not (trainHasEnteredStation T18))
			(= (trainEntryIndex T18) (trainsEnteredFromEndpoint W_plus))
			(not (binBitIsBlocked cdbaa))
			(not (binBitIsBlocked cdbac))
			(not (binBitIsBlocked cdbaf))
			(not (binBitIsBlocked cdbaj))
			(not (binBitIsBlocked cdbal))
			(not (binBitIsBlocked cdbaq))
			(not (binBitIsBlocked cdbav))
			(not (binBitIsBlocked cdbba))
		)
		:effect (and
			(not (trainIsAtEndpoint T18 W_plus))
			(itineraryIsReserved IW2)
			(not (trainEntersStationAt T18 F01))
			(trainInItinerary T18 IW2)
			(trainHasEnteredStation T18)
			(increase (trainsEnteredFromEndpoint W_plus) 1 )
			(binBitIsBlocked cdbaa)
			(binBitIsBlocked cdbac)
			(binBitIsBlocked cdbaf)
			(binBitIsBlocked cdbaj)
			(binBitIsBlocked cdbal)
			(binBitIsBlocked cdbaq)
			(binBitIsBlocked cdbav)
			(binBitIsBlocked cdbba)
		)
	)
	(:action T18_entersStation_IW3
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T18 W_plus)
			(not (trainHasExitedStation T18))
			(not (trainHasEnteredStation T18))
			(= (trainEntryIndex T18) (trainsEnteredFromEndpoint W_plus))
			(not (binBitIsBlocked cdbaa))
			(not (binBitIsBlocked cdbac))
			(not (binBitIsBlocked cdbaf))
			(not (binBitIsBlocked cdbaj))
			(not (binBitIsBlocked cdbam))
			(not (binBitIsBlocked cdbar))
			(not (binBitIsBlocked cdbaw))
			(not (binBitIsBlocked cdbbb))
		)
		:effect (and
			(not (trainIsAtEndpoint T18 W_plus))
			(itineraryIsReserved IW3)
			(not (trainEntersStationAt T18 F01))
			(trainInItinerary T18 IW3)
			(trainHasEnteredStation T18)
			(increase (trainsEnteredFromEndpoint W_plus) 1 )
			(binBitIsBlocked cdbaa)
			(binBitIsBlocked cdbac)
			(binBitIsBlocked cdbaf)
			(binBitIsBlocked cdbaj)
			(binBitIsBlocked cdbam)
			(binBitIsBlocked cdbar)
			(binBitIsBlocked cdbaw)
			(binBitIsBlocked cdbbb)
		)
	)
	(:action T18_entersStation_IW4
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T18 W_plus)
			(not (trainHasExitedStation T18))
			(not (trainHasEnteredStation T18))
			(= (trainEntryIndex T18) (trainsEnteredFromEndpoint W_plus))
			(not (binBitIsBlocked cdbaa))
			(not (binBitIsBlocked cdbac))
			(not (binBitIsBlocked cdbag))
			(not (binBitIsBlocked cdbak))
			(not (binBitIsBlocked cdban))
			(not (binBitIsBlocked cdbas))
			(not (binBitIsBlocked cdbax))
			(not (binBitIsBlocked cdbbc))
		)
		:effect (and
			(not (trainIsAtEndpoint T18 W_plus))
			(itineraryIsReserved IW4)
			(not (trainEntersStationAt T18 F01))
			(trainInItinerary T18 IW4)
			(trainHasEnteredStation T18)
			(increase (trainsEnteredFromEndpoint W_plus) 1 )
			(binBitIsBlocked cdbaa)
			(binBitIsBlocked cdbac)
			(binBitIsBlocked cdbag)
			(binBitIsBlocked cdbak)
			(binBitIsBlocked cdban)
			(binBitIsBlocked cdbas)
			(binBitIsBlocked cdbax)
			(binBitIsBlocked cdbbc)
		)
	)
	(:action T18_entersStation_IW5
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T18 W_plus)
			(not (trainHasExitedStation T18))
			(not (trainHasEnteredStation T18))
			(= (trainEntryIndex T18) (trainsEnteredFromEndpoint W_plus))
			(not (binBitIsBlocked cdbaa))
			(not (binBitIsBlocked cdbac))
			(not (binBitIsBlocked cdbag))
			(not (binBitIsBlocked cdbak))
			(not (binBitIsBlocked cdbao))
			(not (binBitIsBlocked cdbat))
			(not (binBitIsBlocked cdbay))
			(not (binBitIsBlocked cdbbd))
		)
		:effect (and
			(not (trainIsAtEndpoint T18 W_plus))
			(itineraryIsReserved IW5)
			(not (trainEntersStationAt T18 F01))
			(trainInItinerary T18 IW5)
			(trainHasEnteredStation T18)
			(increase (trainsEnteredFromEndpoint W_plus) 1 )
			(binBitIsBlocked cdbaa)
			(binBitIsBlocked cdbac)
			(binBitIsBlocked cdbag)
			(binBitIsBlocked cdbak)
			(binBitIsBlocked cdbao)
			(binBitIsBlocked cdbat)
			(binBitIsBlocked cdbay)
			(binBitIsBlocked cdbbd)
		)
	)
	(:action T18_exitsStation_I1E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T18 I1E)
			(not (trainHasExitedStation T18))
		)
		:effect (and
			(not (itineraryIsReserved I1E))
			(not (trainInItinerary T18 I1E))
			(trainExitsStationAt T18 F03)
			(assign (timeElapsedReservedItinerary I1E) 0 )
			(trainHasExitedStation T18)
			(not (binBitIsBlocked cdbbr))
		)
	)
	(:action T18_exitsStation_I2E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T18 I2E)
			(not (trainHasExitedStation T18))
		)
		:effect (and
			(not (itineraryIsReserved I2E))
			(not (trainInItinerary T18 I2E))
			(trainExitsStationAt T18 F03)
			(assign (timeElapsedReservedItinerary I2E) 0 )
			(trainHasExitedStation T18)
			(not (binBitIsBlocked cdbbr))
		)
	)
	(:action T18_exitsStation_I3E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T18 I3E)
			(not (trainHasExitedStation T18))
		)
		:effect (and
			(not (itineraryIsReserved I3E))
			(not (trainInItinerary T18 I3E))
			(trainExitsStationAt T18 F03)
			(assign (timeElapsedReservedItinerary I3E) 0 )
			(trainHasExitedStation T18)
			(not (binBitIsBlocked cdbbr))
		)
	)
	(:action T18_exitsStation_I4E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T18 I4E)
			(not (trainHasExitedStation T18))
		)
		:effect (and
			(not (itineraryIsReserved I4E))
			(not (trainInItinerary T18 I4E))
			(trainExitsStationAt T18 F03)
			(assign (timeElapsedReservedItinerary I4E) 0 )
			(trainHasExitedStation T18)
			(not (binBitIsBlocked cdbbr))
		)
	)
	(:action T18_exitsStation_I5E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T18 I5E)
			(not (trainHasExitedStation T18))
		)
		:effect (and
			(not (itineraryIsReserved I5E))
			(not (trainInItinerary T18 I5E))
			(trainExitsStationAt T18 F03)
			(assign (timeElapsedReservedItinerary I5E) 0 )
			(trainHasExitedStation T18)
			(not (binBitIsBlocked cdbbr))
		)
	)
	(:event T18_completeItinerary_IW1
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 60 )
			(itineraryIsReserved IW1)
			(trainInItinerary T18 IW1)
			(not (trainHasCompletedItinerary T18 IW1))
			(not (trainHasExitedStation T18))
		)
		:effect (and
			(trainHasCompletedItinerary T18 IW1)
		)
	)
	(:event T18_completeBinBit_IW1_cdbaa
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 8 )
			(trainInItinerary T18 IW1)
			(binBitIsBlocked cdbaa)
		)
		:effect (and
			(not (binBitIsBlocked cdbaa))
		)
	)
	(:event T18_completeBinBit_IW1_cdbac
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 17 )
			(trainInItinerary T18 IW1)
			(binBitIsBlocked cdbac)
		)
		:effect (and
			(not (binBitIsBlocked cdbac))
		)
	)
	(:event T18_completeBinBit_IW1_cdbaf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 25 )
			(trainInItinerary T18 IW1)
			(binBitIsBlocked cdbaf)
		)
		:effect (and
			(not (binBitIsBlocked cdbaf))
		)
	)
	(:event T18_completeBinBit_IW1_cdbai
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 34 )
			(trainInItinerary T18 IW1)
			(binBitIsBlocked cdbai)
		)
		:effect (and
			(not (binBitIsBlocked cdbai))
		)
	)
	(:event T18_completeBinBit_IW1_cdbap
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 42 )
			(trainInItinerary T18 IW1)
			(binBitIsBlocked cdbap)
		)
		:effect (and
			(not (binBitIsBlocked cdbap))
		)
	)
	(:event T18_completeBinBit_IW1_cdbau
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 51 )
			(trainInItinerary T18 IW1)
			(binBitIsBlocked cdbau)
		)
		:effect (and
			(not (binBitIsBlocked cdbau))
		)
	)
	(:event T18_completeItinerary_I1E
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1E) 60 )
			(itineraryIsReserved I1E)
			(trainInItinerary T18 I1E)
			(not (trainHasCompletedItinerary T18 I1E))
			(not (trainHasExitedStation T18))
		)
		:effect (and
			(trainHasCompletedItinerary T18 I1E)
		)
	)
	(:event T18_completeBinBit_I1E_cdbbe
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1E) 15 )
			(trainInItinerary T18 I1E)
			(binBitIsBlocked cdbbe)
		)
		:effect (and
			(not (binBitIsBlocked cdbbe))
		)
	)
	(:event T18_completeBinBit_I1E_cdbbl
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1E) 30 )
			(trainInItinerary T18 I1E)
			(binBitIsBlocked cdbbl)
		)
		:effect (and
			(not (binBitIsBlocked cdbbl))
		)
	)
	(:event T18_completeBinBit_I1E_cdbbo
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1E) 45 )
			(trainInItinerary T18 I1E)
			(binBitIsBlocked cdbbo)
		)
		:effect (and
			(not (binBitIsBlocked cdbbo))
		)
	)
	(:event T18_completeItinerary_IW2
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 60 )
			(itineraryIsReserved IW2)
			(trainInItinerary T18 IW2)
			(not (trainHasCompletedItinerary T18 IW2))
			(not (trainHasExitedStation T18))
		)
		:effect (and
			(trainHasCompletedItinerary T18 IW2)
		)
	)
	(:event T18_completeBinBit_IW2_cdbaa
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 7 )
			(trainInItinerary T18 IW2)
			(binBitIsBlocked cdbaa)
		)
		:effect (and
			(not (binBitIsBlocked cdbaa))
		)
	)
	(:event T18_completeBinBit_IW2_cdbac
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 15 )
			(trainInItinerary T18 IW2)
			(binBitIsBlocked cdbac)
		)
		:effect (and
			(not (binBitIsBlocked cdbac))
		)
	)
	(:event T18_completeBinBit_IW2_cdbaf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 22 )
			(trainInItinerary T18 IW2)
			(binBitIsBlocked cdbaf)
		)
		:effect (and
			(not (binBitIsBlocked cdbaf))
		)
	)
	(:event T18_completeBinBit_IW2_cdbaj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 30 )
			(trainInItinerary T18 IW2)
			(binBitIsBlocked cdbaj)
		)
		:effect (and
			(not (binBitIsBlocked cdbaj))
		)
	)
	(:event T18_completeBinBit_IW2_cdbal
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 37 )
			(trainInItinerary T18 IW2)
			(binBitIsBlocked cdbal)
		)
		:effect (and
			(not (binBitIsBlocked cdbal))
		)
	)
	(:event T18_completeBinBit_IW2_cdbaq
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 45 )
			(trainInItinerary T18 IW2)
			(binBitIsBlocked cdbaq)
		)
		:effect (and
			(not (binBitIsBlocked cdbaq))
		)
	)
	(:event T18_completeBinBit_IW2_cdbav
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 52 )
			(trainInItinerary T18 IW2)
			(binBitIsBlocked cdbav)
		)
		:effect (and
			(not (binBitIsBlocked cdbav))
		)
	)
	(:event T18_completeItinerary_I2E
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2E) 60 )
			(itineraryIsReserved I2E)
			(trainInItinerary T18 I2E)
			(not (trainHasCompletedItinerary T18 I2E))
			(not (trainHasExitedStation T18))
		)
		:effect (and
			(trainHasCompletedItinerary T18 I2E)
		)
	)
	(:event T18_completeBinBit_I2E_cdbbf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2E) 12 )
			(trainInItinerary T18 I2E)
			(binBitIsBlocked cdbbf)
		)
		:effect (and
			(not (binBitIsBlocked cdbbf))
		)
	)
	(:event T18_completeBinBit_I2E_cdbbj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2E) 24 )
			(trainInItinerary T18 I2E)
			(binBitIsBlocked cdbbj)
		)
		:effect (and
			(not (binBitIsBlocked cdbbj))
		)
	)
	(:event T18_completeBinBit_I2E_cdbbl
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2E) 36 )
			(trainInItinerary T18 I2E)
			(binBitIsBlocked cdbbl)
		)
		:effect (and
			(not (binBitIsBlocked cdbbl))
		)
	)
	(:event T18_completeBinBit_I2E_cdbbo
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2E) 48 )
			(trainInItinerary T18 I2E)
			(binBitIsBlocked cdbbo)
		)
		:effect (and
			(not (binBitIsBlocked cdbbo))
		)
	)
	(:event T18_completeItinerary_IW3
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 60 )
			(itineraryIsReserved IW3)
			(trainInItinerary T18 IW3)
			(not (trainHasCompletedItinerary T18 IW3))
			(not (trainHasExitedStation T18))
		)
		:effect (and
			(trainHasCompletedItinerary T18 IW3)
		)
	)
	(:event T18_completeBinBit_IW3_cdbaa
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 7 )
			(trainInItinerary T18 IW3)
			(binBitIsBlocked cdbaa)
		)
		:effect (and
			(not (binBitIsBlocked cdbaa))
		)
	)
	(:event T18_completeBinBit_IW3_cdbac
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 15 )
			(trainInItinerary T18 IW3)
			(binBitIsBlocked cdbac)
		)
		:effect (and
			(not (binBitIsBlocked cdbac))
		)
	)
	(:event T18_completeBinBit_IW3_cdbaf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 22 )
			(trainInItinerary T18 IW3)
			(binBitIsBlocked cdbaf)
		)
		:effect (and
			(not (binBitIsBlocked cdbaf))
		)
	)
	(:event T18_completeBinBit_IW3_cdbaj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 30 )
			(trainInItinerary T18 IW3)
			(binBitIsBlocked cdbaj)
		)
		:effect (and
			(not (binBitIsBlocked cdbaj))
		)
	)
	(:event T18_completeBinBit_IW3_cdbam
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 37 )
			(trainInItinerary T18 IW3)
			(binBitIsBlocked cdbam)
		)
		:effect (and
			(not (binBitIsBlocked cdbam))
		)
	)
	(:event T18_completeBinBit_IW3_cdbar
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 45 )
			(trainInItinerary T18 IW3)
			(binBitIsBlocked cdbar)
		)
		:effect (and
			(not (binBitIsBlocked cdbar))
		)
	)
	(:event T18_completeBinBit_IW3_cdbaw
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 52 )
			(trainInItinerary T18 IW3)
			(binBitIsBlocked cdbaw)
		)
		:effect (and
			(not (binBitIsBlocked cdbaw))
		)
	)
	(:event T18_completeItinerary_I3E
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3E) 60 )
			(itineraryIsReserved I3E)
			(trainInItinerary T18 I3E)
			(not (trainHasCompletedItinerary T18 I3E))
			(not (trainHasExitedStation T18))
		)
		:effect (and
			(trainHasCompletedItinerary T18 I3E)
		)
	)
	(:event T18_completeBinBit_I3E_cdbbg
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3E) 12 )
			(trainInItinerary T18 I3E)
			(binBitIsBlocked cdbbg)
		)
		:effect (and
			(not (binBitIsBlocked cdbbg))
		)
	)
	(:event T18_completeBinBit_I3E_cdbbj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3E) 24 )
			(trainInItinerary T18 I3E)
			(binBitIsBlocked cdbbj)
		)
		:effect (and
			(not (binBitIsBlocked cdbbj))
		)
	)
	(:event T18_completeBinBit_I3E_cdbbl
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3E) 36 )
			(trainInItinerary T18 I3E)
			(binBitIsBlocked cdbbl)
		)
		:effect (and
			(not (binBitIsBlocked cdbbl))
		)
	)
	(:event T18_completeBinBit_I3E_cdbbo
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3E) 48 )
			(trainInItinerary T18 I3E)
			(binBitIsBlocked cdbbo)
		)
		:effect (and
			(not (binBitIsBlocked cdbbo))
		)
	)
	(:event T18_completeItinerary_IW4
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 60 )
			(itineraryIsReserved IW4)
			(trainInItinerary T18 IW4)
			(not (trainHasCompletedItinerary T18 IW4))
			(not (trainHasExitedStation T18))
		)
		:effect (and
			(trainHasCompletedItinerary T18 IW4)
		)
	)
	(:event T18_completeBinBit_IW4_cdbaa
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 7 )
			(trainInItinerary T18 IW4)
			(binBitIsBlocked cdbaa)
		)
		:effect (and
			(not (binBitIsBlocked cdbaa))
		)
	)
	(:event T18_completeBinBit_IW4_cdbac
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 15 )
			(trainInItinerary T18 IW4)
			(binBitIsBlocked cdbac)
		)
		:effect (and
			(not (binBitIsBlocked cdbac))
		)
	)
	(:event T18_completeBinBit_IW4_cdbag
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 22 )
			(trainInItinerary T18 IW4)
			(binBitIsBlocked cdbag)
		)
		:effect (and
			(not (binBitIsBlocked cdbag))
		)
	)
	(:event T18_completeBinBit_IW4_cdbak
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 30 )
			(trainInItinerary T18 IW4)
			(binBitIsBlocked cdbak)
		)
		:effect (and
			(not (binBitIsBlocked cdbak))
		)
	)
	(:event T18_completeBinBit_IW4_cdban
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 37 )
			(trainInItinerary T18 IW4)
			(binBitIsBlocked cdban)
		)
		:effect (and
			(not (binBitIsBlocked cdban))
		)
	)
	(:event T18_completeBinBit_IW4_cdbas
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 45 )
			(trainInItinerary T18 IW4)
			(binBitIsBlocked cdbas)
		)
		:effect (and
			(not (binBitIsBlocked cdbas))
		)
	)
	(:event T18_completeBinBit_IW4_cdbax
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 52 )
			(trainInItinerary T18 IW4)
			(binBitIsBlocked cdbax)
		)
		:effect (and
			(not (binBitIsBlocked cdbax))
		)
	)
	(:event T18_completeItinerary_I4E
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4E) 60 )
			(itineraryIsReserved I4E)
			(trainInItinerary T18 I4E)
			(not (trainHasCompletedItinerary T18 I4E))
			(not (trainHasExitedStation T18))
		)
		:effect (and
			(trainHasCompletedItinerary T18 I4E)
		)
	)
	(:event T18_completeBinBit_I4E_cdbbh
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4E) 12 )
			(trainInItinerary T18 I4E)
			(binBitIsBlocked cdbbh)
		)
		:effect (and
			(not (binBitIsBlocked cdbbh))
		)
	)
	(:event T18_completeBinBit_I4E_cdbbk
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4E) 24 )
			(trainInItinerary T18 I4E)
			(binBitIsBlocked cdbbk)
		)
		:effect (and
			(not (binBitIsBlocked cdbbk))
		)
	)
	(:event T18_completeBinBit_I4E_cdbbm
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4E) 36 )
			(trainInItinerary T18 I4E)
			(binBitIsBlocked cdbbm)
		)
		:effect (and
			(not (binBitIsBlocked cdbbm))
		)
	)
	(:event T18_completeBinBit_I4E_cdbbo
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4E) 48 )
			(trainInItinerary T18 I4E)
			(binBitIsBlocked cdbbo)
		)
		:effect (and
			(not (binBitIsBlocked cdbbo))
		)
	)
	(:event T18_completeItinerary_IW5
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 60 )
			(itineraryIsReserved IW5)
			(trainInItinerary T18 IW5)
			(not (trainHasCompletedItinerary T18 IW5))
			(not (trainHasExitedStation T18))
		)
		:effect (and
			(trainHasCompletedItinerary T18 IW5)
		)
	)
	(:event T18_completeBinBit_IW5_cdbaa
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 7 )
			(trainInItinerary T18 IW5)
			(binBitIsBlocked cdbaa)
		)
		:effect (and
			(not (binBitIsBlocked cdbaa))
		)
	)
	(:event T18_completeBinBit_IW5_cdbac
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 15 )
			(trainInItinerary T18 IW5)
			(binBitIsBlocked cdbac)
		)
		:effect (and
			(not (binBitIsBlocked cdbac))
		)
	)
	(:event T18_completeBinBit_IW5_cdbag
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 22 )
			(trainInItinerary T18 IW5)
			(binBitIsBlocked cdbag)
		)
		:effect (and
			(not (binBitIsBlocked cdbag))
		)
	)
	(:event T18_completeBinBit_IW5_cdbak
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 30 )
			(trainInItinerary T18 IW5)
			(binBitIsBlocked cdbak)
		)
		:effect (and
			(not (binBitIsBlocked cdbak))
		)
	)
	(:event T18_completeBinBit_IW5_cdbao
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 37 )
			(trainInItinerary T18 IW5)
			(binBitIsBlocked cdbao)
		)
		:effect (and
			(not (binBitIsBlocked cdbao))
		)
	)
	(:event T18_completeBinBit_IW5_cdbat
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 45 )
			(trainInItinerary T18 IW5)
			(binBitIsBlocked cdbat)
		)
		:effect (and
			(not (binBitIsBlocked cdbat))
		)
	)
	(:event T18_completeBinBit_IW5_cdbay
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 52 )
			(trainInItinerary T18 IW5)
			(binBitIsBlocked cdbay)
		)
		:effect (and
			(not (binBitIsBlocked cdbay))
		)
	)
	(:event T18_completeItinerary_I5E
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5E) 60 )
			(itineraryIsReserved I5E)
			(trainInItinerary T18 I5E)
			(not (trainHasCompletedItinerary T18 I5E))
			(not (trainHasExitedStation T18))
		)
		:effect (and
			(trainHasCompletedItinerary T18 I5E)
		)
	)
	(:event T18_completeBinBit_I5E_cdbbi
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5E) 12 )
			(trainInItinerary T18 I5E)
			(binBitIsBlocked cdbbi)
		)
		:effect (and
			(not (binBitIsBlocked cdbbi))
		)
	)
	(:event T18_completeBinBit_I5E_cdbbk
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5E) 24 )
			(trainInItinerary T18 I5E)
			(binBitIsBlocked cdbbk)
		)
		:effect (and
			(not (binBitIsBlocked cdbbk))
		)
	)
	(:event T18_completeBinBit_I5E_cdbbm
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5E) 36 )
			(trainInItinerary T18 I5E)
			(binBitIsBlocked cdbbm)
		)
		:effect (and
			(not (binBitIsBlocked cdbbm))
		)
	)
	(:event T18_completeBinBit_I5E_cdbbo
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5E) 48 )
			(trainInItinerary T18 I5E)
			(binBitIsBlocked cdbbo)
		)
		:effect (and
			(not (binBitIsBlocked cdbbo))
		)
	)
	(:action T18_overlaps_IW1_I1E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T18 IW1)
			(trainInItinerary T18 IW1)
			(not (trainIsStopping T18))
			(not (itineraryIsReserved I1E))
			(not (flagIsBlockedDueToOverlap F1R))
			(not (binBitIsBlocked cdbbe))
			(not (binBitIsBlocked cdbbl))
			(not (binBitIsBlocked cdbbo))
			(not (binBitIsBlocked cdbbr))
		)
		:effect (and
			(itineraryIsReserved I1E)
			(trainInItinerary T18 I1E)
			(trainIsOverlapping T18)
			(flagIsBlockedDueToOverlap F1R)
			(binBitIsBlocked cdbbe)
			(binBitIsBlocked cdbbl)
			(binBitIsBlocked cdbbo)
			(binBitIsBlocked cdbbr)
		)
	)
	(:event T18_endOverlap_IW1_I1E
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F1R) 1 )
			(flagIsBlockedDueToOverlap F1R)
			(trainInItinerary T18 IW1)
			(trainInItinerary T18 I1E)
		)
		:effect (and
			(not (itineraryIsReserved IW1))
			(not (trainIsOverlapping T18))
			(assign (timeElapsedReservedItinerary IW1) 0 )
			(not (trainInItinerary T18 IW1))
			(not (flagIsBlockedDueToOverlap F1R))
			(assign (timeElapsedOverlappedFlag F1R) 0 )
			(not (binBitIsBlocked cdbaz))
		)
	)
	(:action T18_overlaps_IW2_I2E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T18 IW2)
			(trainInItinerary T18 IW2)
			(not (trainIsStopping T18))
			(not (itineraryIsReserved I2E))
			(not (flagIsBlockedDueToOverlap F2R))
			(not (binBitIsBlocked cdbbf))
			(not (binBitIsBlocked cdbbj))
			(not (binBitIsBlocked cdbbl))
			(not (binBitIsBlocked cdbbo))
			(not (binBitIsBlocked cdbbr))
		)
		:effect (and
			(itineraryIsReserved I2E)
			(trainInItinerary T18 I2E)
			(trainIsOverlapping T18)
			(flagIsBlockedDueToOverlap F2R)
			(binBitIsBlocked cdbbf)
			(binBitIsBlocked cdbbj)
			(binBitIsBlocked cdbbl)
			(binBitIsBlocked cdbbo)
			(binBitIsBlocked cdbbr)
		)
	)
	(:event T18_endOverlap_IW2_I2E
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F2R) 1 )
			(flagIsBlockedDueToOverlap F2R)
			(trainInItinerary T18 IW2)
			(trainInItinerary T18 I2E)
		)
		:effect (and
			(not (itineraryIsReserved IW2))
			(not (trainIsOverlapping T18))
			(assign (timeElapsedReservedItinerary IW2) 0 )
			(not (trainInItinerary T18 IW2))
			(not (flagIsBlockedDueToOverlap F2R))
			(assign (timeElapsedOverlappedFlag F2R) 0 )
			(not (binBitIsBlocked cdbba))
		)
	)
	(:action T18_overlaps_IW3_I3E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T18 IW3)
			(trainInItinerary T18 IW3)
			(not (trainIsStopping T18))
			(not (itineraryIsReserved I3E))
			(not (flagIsBlockedDueToOverlap F3R))
			(not (binBitIsBlocked cdbbg))
			(not (binBitIsBlocked cdbbj))
			(not (binBitIsBlocked cdbbl))
			(not (binBitIsBlocked cdbbo))
			(not (binBitIsBlocked cdbbr))
		)
		:effect (and
			(itineraryIsReserved I3E)
			(trainInItinerary T18 I3E)
			(trainIsOverlapping T18)
			(flagIsBlockedDueToOverlap F3R)
			(binBitIsBlocked cdbbg)
			(binBitIsBlocked cdbbj)
			(binBitIsBlocked cdbbl)
			(binBitIsBlocked cdbbo)
			(binBitIsBlocked cdbbr)
		)
	)
	(:event T18_endOverlap_IW3_I3E
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F3R) 1 )
			(flagIsBlockedDueToOverlap F3R)
			(trainInItinerary T18 IW3)
			(trainInItinerary T18 I3E)
		)
		:effect (and
			(not (itineraryIsReserved IW3))
			(not (trainIsOverlapping T18))
			(assign (timeElapsedReservedItinerary IW3) 0 )
			(not (trainInItinerary T18 IW3))
			(not (flagIsBlockedDueToOverlap F3R))
			(assign (timeElapsedOverlappedFlag F3R) 0 )
			(not (binBitIsBlocked cdbbb))
		)
	)
	(:action T18_overlaps_IW4_I4E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T18 IW4)
			(trainInItinerary T18 IW4)
			(not (trainIsStopping T18))
			(not (itineraryIsReserved I4E))
			(not (flagIsBlockedDueToOverlap F4R))
			(not (binBitIsBlocked cdbbh))
			(not (binBitIsBlocked cdbbk))
			(not (binBitIsBlocked cdbbm))
			(not (binBitIsBlocked cdbbo))
			(not (binBitIsBlocked cdbbr))
		)
		:effect (and
			(itineraryIsReserved I4E)
			(trainInItinerary T18 I4E)
			(trainIsOverlapping T18)
			(flagIsBlockedDueToOverlap F4R)
			(binBitIsBlocked cdbbh)
			(binBitIsBlocked cdbbk)
			(binBitIsBlocked cdbbm)
			(binBitIsBlocked cdbbo)
			(binBitIsBlocked cdbbr)
		)
	)
	(:event T18_endOverlap_IW4_I4E
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F4R) 1 )
			(flagIsBlockedDueToOverlap F4R)
			(trainInItinerary T18 IW4)
			(trainInItinerary T18 I4E)
		)
		:effect (and
			(not (itineraryIsReserved IW4))
			(not (trainIsOverlapping T18))
			(assign (timeElapsedReservedItinerary IW4) 0 )
			(not (trainInItinerary T18 IW4))
			(not (flagIsBlockedDueToOverlap F4R))
			(assign (timeElapsedOverlappedFlag F4R) 0 )
			(not (binBitIsBlocked cdbbc))
		)
	)
	(:action T18_overlaps_IW5_I5E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T18 IW5)
			(trainInItinerary T18 IW5)
			(not (trainIsStopping T18))
			(not (itineraryIsReserved I5E))
			(not (flagIsBlockedDueToOverlap F5R))
			(not (binBitIsBlocked cdbbi))
			(not (binBitIsBlocked cdbbk))
			(not (binBitIsBlocked cdbbm))
			(not (binBitIsBlocked cdbbo))
			(not (binBitIsBlocked cdbbr))
		)
		:effect (and
			(itineraryIsReserved I5E)
			(trainInItinerary T18 I5E)
			(trainIsOverlapping T18)
			(flagIsBlockedDueToOverlap F5R)
			(binBitIsBlocked cdbbi)
			(binBitIsBlocked cdbbk)
			(binBitIsBlocked cdbbm)
			(binBitIsBlocked cdbbo)
			(binBitIsBlocked cdbbr)
		)
	)
	(:event T18_endOverlap_IW5_I5E
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F5R) 1 )
			(flagIsBlockedDueToOverlap F5R)
			(trainInItinerary T18 IW5)
			(trainInItinerary T18 I5E)
		)
		:effect (and
			(not (itineraryIsReserved IW5))
			(not (trainIsOverlapping T18))
			(assign (timeElapsedReservedItinerary IW5) 0 )
			(not (trainInItinerary T18 IW5))
			(not (flagIsBlockedDueToOverlap F5R))
			(assign (timeElapsedOverlappedFlag F5R) 0 )
			(not (binBitIsBlocked cdbbd))
		)
	)
	(:action T19_exitsStation_I1W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T19 I1W)
			(not (trainHasExitedStation T19))
		)
		:effect (and
			(not (itineraryIsReserved I1W))
			(not (trainInItinerary T19 I1W))
			(trainExitsStationAt T19 F02)
			(assign (timeElapsedReservedItinerary I1W) 0 )
			(trainHasExitedStation T19)
			(not (binBitIsBlocked cdbab))
		)
	)
	(:action T19_exitsStation_I2W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T19 I2W)
			(not (trainHasExitedStation T19))
		)
		:effect (and
			(not (itineraryIsReserved I2W))
			(not (trainInItinerary T19 I2W))
			(trainExitsStationAt T19 F02)
			(assign (timeElapsedReservedItinerary I2W) 0 )
			(trainHasExitedStation T19)
			(not (binBitIsBlocked cdbab))
		)
	)
	(:action T19_exitsStation_I3W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T19 I3W)
			(not (trainHasExitedStation T19))
		)
		:effect (and
			(not (itineraryIsReserved I3W))
			(not (trainInItinerary T19 I3W))
			(trainExitsStationAt T19 F02)
			(assign (timeElapsedReservedItinerary I3W) 0 )
			(trainHasExitedStation T19)
			(not (binBitIsBlocked cdbab))
		)
	)
	(:action T19_exitsStation_I4W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T19 I4W)
			(not (trainHasExitedStation T19))
		)
		:effect (and
			(not (itineraryIsReserved I4W))
			(not (trainInItinerary T19 I4W))
			(trainExitsStationAt T19 F02)
			(assign (timeElapsedReservedItinerary I4W) 0 )
			(trainHasExitedStation T19)
			(not (binBitIsBlocked cdbab))
		)
	)
	(:action T19_exitsStation_I5W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T19 I5W)
			(not (trainHasExitedStation T19))
		)
		:effect (and
			(not (itineraryIsReserved I5W))
			(not (trainInItinerary T19 I5W))
			(trainExitsStationAt T19 F02)
			(assign (timeElapsedReservedItinerary I5W) 0 )
			(trainHasExitedStation T19)
			(not (binBitIsBlocked cdbab))
		)
	)
	(:event T19_arrivesAtEndpoint_E_plus
		:parameters()
		:precondition (and
			(>= time  3167 )
			(not (trainHasEnteredStation T19))
			(not (trainIsAtEndpoint T19 E_plus))
		)
		:effect (and
			(trainIsAtEndpoint T19 E_plus)
			(trainHasArrivedAtStation T19)
			(assign (trainEntryIndex T19) (trainsArrivedAtEndpoint E_plus))
			(increase (trainsArrivedAtEndpoint E_plus) 1 )
		)
	)
	(:action T19_entersStation_IE1
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T19 E_plus)
			(not (trainHasExitedStation T19))
			(not (trainHasEnteredStation T19))
			(= (trainEntryIndex T19) (trainsEnteredFromEndpoint E_plus))
			(not (binBitIsBlocked cdbbs))
			(not (binBitIsBlocked cdbbp))
			(not (binBitIsBlocked cdbbl))
			(not (binBitIsBlocked cdbbe))
			(not (binBitIsBlocked cdbaz))
			(not (binBitIsBlocked cdbau))
			(not (binBitIsBlocked cdbap))
		)
		:effect (and
			(not (trainIsAtEndpoint T19 E_plus))
			(itineraryIsReserved IE1)
			(not (trainEntersStationAt T19 F04))
			(trainInItinerary T19 IE1)
			(trainHasEnteredStation T19)
			(increase (trainsEnteredFromEndpoint E_plus) 1 )
			(binBitIsBlocked cdbbs)
			(binBitIsBlocked cdbbp)
			(binBitIsBlocked cdbbl)
			(binBitIsBlocked cdbbe)
			(binBitIsBlocked cdbaz)
			(binBitIsBlocked cdbau)
			(binBitIsBlocked cdbap)
		)
	)
	(:action T19_entersStation_IE2
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T19 E_plus)
			(not (trainHasExitedStation T19))
			(not (trainHasEnteredStation T19))
			(= (trainEntryIndex T19) (trainsEnteredFromEndpoint E_plus))
			(not (binBitIsBlocked cdbbs))
			(not (binBitIsBlocked cdbbp))
			(not (binBitIsBlocked cdbbl))
			(not (binBitIsBlocked cdbbj))
			(not (binBitIsBlocked cdbbf))
			(not (binBitIsBlocked cdbba))
			(not (binBitIsBlocked cdbav))
			(not (binBitIsBlocked cdbaq))
		)
		:effect (and
			(not (trainIsAtEndpoint T19 E_plus))
			(itineraryIsReserved IE2)
			(not (trainEntersStationAt T19 F04))
			(trainInItinerary T19 IE2)
			(trainHasEnteredStation T19)
			(increase (trainsEnteredFromEndpoint E_plus) 1 )
			(binBitIsBlocked cdbbs)
			(binBitIsBlocked cdbbp)
			(binBitIsBlocked cdbbl)
			(binBitIsBlocked cdbbj)
			(binBitIsBlocked cdbbf)
			(binBitIsBlocked cdbba)
			(binBitIsBlocked cdbav)
			(binBitIsBlocked cdbaq)
		)
	)
	(:action T19_entersStation_IE3
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T19 E_plus)
			(not (trainHasExitedStation T19))
			(not (trainHasEnteredStation T19))
			(= (trainEntryIndex T19) (trainsEnteredFromEndpoint E_plus))
			(not (binBitIsBlocked cdbbs))
			(not (binBitIsBlocked cdbbp))
			(not (binBitIsBlocked cdbbl))
			(not (binBitIsBlocked cdbbj))
			(not (binBitIsBlocked cdbbg))
			(not (binBitIsBlocked cdbbb))
			(not (binBitIsBlocked cdbaw))
			(not (binBitIsBlocked cdbar))
		)
		:effect (and
			(not (trainIsAtEndpoint T19 E_plus))
			(itineraryIsReserved IE3)
			(not (trainEntersStationAt T19 F04))
			(trainInItinerary T19 IE3)
			(trainHasEnteredStation T19)
			(increase (trainsEnteredFromEndpoint E_plus) 1 )
			(binBitIsBlocked cdbbs)
			(binBitIsBlocked cdbbp)
			(binBitIsBlocked cdbbl)
			(binBitIsBlocked cdbbj)
			(binBitIsBlocked cdbbg)
			(binBitIsBlocked cdbbb)
			(binBitIsBlocked cdbaw)
			(binBitIsBlocked cdbar)
		)
	)
	(:action T19_entersStation_IE4
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T19 E_plus)
			(not (trainHasExitedStation T19))
			(not (trainHasEnteredStation T19))
			(= (trainEntryIndex T19) (trainsEnteredFromEndpoint E_plus))
			(not (binBitIsBlocked cdbbs))
			(not (binBitIsBlocked cdbbq))
			(not (binBitIsBlocked cdbbn))
			(not (binBitIsBlocked cdbbk))
			(not (binBitIsBlocked cdbbh))
			(not (binBitIsBlocked cdbbc))
			(not (binBitIsBlocked cdbax))
			(not (binBitIsBlocked cdbas))
		)
		:effect (and
			(not (trainIsAtEndpoint T19 E_plus))
			(itineraryIsReserved IE4)
			(not (trainEntersStationAt T19 F04))
			(trainInItinerary T19 IE4)
			(trainHasEnteredStation T19)
			(increase (trainsEnteredFromEndpoint E_plus) 1 )
			(binBitIsBlocked cdbbs)
			(binBitIsBlocked cdbbq)
			(binBitIsBlocked cdbbn)
			(binBitIsBlocked cdbbk)
			(binBitIsBlocked cdbbh)
			(binBitIsBlocked cdbbc)
			(binBitIsBlocked cdbax)
			(binBitIsBlocked cdbas)
		)
	)
	(:action T19_entersStation_IE5
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T19 E_plus)
			(not (trainHasExitedStation T19))
			(not (trainHasEnteredStation T19))
			(= (trainEntryIndex T19) (trainsEnteredFromEndpoint E_plus))
			(not (binBitIsBlocked cdbbs))
			(not (binBitIsBlocked cdbbq))
			(not (binBitIsBlocked cdbbn))
			(not (binBitIsBlocked cdbbk))
			(not (binBitIsBlocked cdbbi))
			(not (binBitIsBlocked cdbbd))
			(not (binBitIsBlocked cdbay))
			(not (binBitIsBlocked cdbat))
		)
		:effect (and
			(not (trainIsAtEndpoint T19 E_plus))
			(itineraryIsReserved IE5)
			(not (trainEntersStationAt T19 F04))
			(trainInItinerary T19 IE5)
			(trainHasEnteredStation T19)
			(increase (trainsEnteredFromEndpoint E_plus) 1 )
			(binBitIsBlocked cdbbs)
			(binBitIsBlocked cdbbq)
			(binBitIsBlocked cdbbn)
			(binBitIsBlocked cdbbk)
			(binBitIsBlocked cdbbi)
			(binBitIsBlocked cdbbd)
			(binBitIsBlocked cdbay)
			(binBitIsBlocked cdbat)
		)
	)
	(:event T19_completeItinerary_IE1
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 60 )
			(itineraryIsReserved IE1)
			(trainInItinerary T19 IE1)
			(not (trainHasCompletedItinerary T19 IE1))
			(not (trainHasExitedStation T19))
		)
		:effect (and
			(trainHasCompletedItinerary T19 IE1)
		)
	)
	(:event T19_completeBinBit_IE1_cdbbs
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 8 )
			(trainInItinerary T19 IE1)
			(binBitIsBlocked cdbbs)
		)
		:effect (and
			(not (binBitIsBlocked cdbbs))
		)
	)
	(:event T19_completeBinBit_IE1_cdbbp
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 17 )
			(trainInItinerary T19 IE1)
			(binBitIsBlocked cdbbp)
		)
		:effect (and
			(not (binBitIsBlocked cdbbp))
		)
	)
	(:event T19_completeBinBit_IE1_cdbbl
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 25 )
			(trainInItinerary T19 IE1)
			(binBitIsBlocked cdbbl)
		)
		:effect (and
			(not (binBitIsBlocked cdbbl))
		)
	)
	(:event T19_completeBinBit_IE1_cdbbe
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 34 )
			(trainInItinerary T19 IE1)
			(binBitIsBlocked cdbbe)
		)
		:effect (and
			(not (binBitIsBlocked cdbbe))
		)
	)
	(:event T19_completeBinBit_IE1_cdbaz
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 42 )
			(trainInItinerary T19 IE1)
			(binBitIsBlocked cdbaz)
		)
		:effect (and
			(not (binBitIsBlocked cdbaz))
		)
	)
	(:event T19_completeBinBit_IE1_cdbau
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 51 )
			(trainInItinerary T19 IE1)
			(binBitIsBlocked cdbau)
		)
		:effect (and
			(not (binBitIsBlocked cdbau))
		)
	)
	(:event T19_completeItinerary_I1W
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1W) 60 )
			(itineraryIsReserved I1W)
			(trainInItinerary T19 I1W)
			(not (trainHasCompletedItinerary T19 I1W))
			(not (trainHasExitedStation T19))
		)
		:effect (and
			(trainHasCompletedItinerary T19 I1W)
		)
	)
	(:event T19_completeBinBit_I1W_cdbai
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1W) 15 )
			(trainInItinerary T19 I1W)
			(binBitIsBlocked cdbai)
		)
		:effect (and
			(not (binBitIsBlocked cdbai))
		)
	)
	(:event T19_completeBinBit_I1W_cdbaf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1W) 30 )
			(trainInItinerary T19 I1W)
			(binBitIsBlocked cdbaf)
		)
		:effect (and
			(not (binBitIsBlocked cdbaf))
		)
	)
	(:event T19_completeBinBit_I1W_cdbad
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1W) 45 )
			(trainInItinerary T19 I1W)
			(binBitIsBlocked cdbad)
		)
		:effect (and
			(not (binBitIsBlocked cdbad))
		)
	)
	(:event T19_completeItinerary_IE2
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 60 )
			(itineraryIsReserved IE2)
			(trainInItinerary T19 IE2)
			(not (trainHasCompletedItinerary T19 IE2))
			(not (trainHasExitedStation T19))
		)
		:effect (and
			(trainHasCompletedItinerary T19 IE2)
		)
	)
	(:event T19_completeBinBit_IE2_cdbbs
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 7 )
			(trainInItinerary T19 IE2)
			(binBitIsBlocked cdbbs)
		)
		:effect (and
			(not (binBitIsBlocked cdbbs))
		)
	)
	(:event T19_completeBinBit_IE2_cdbbp
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 15 )
			(trainInItinerary T19 IE2)
			(binBitIsBlocked cdbbp)
		)
		:effect (and
			(not (binBitIsBlocked cdbbp))
		)
	)
	(:event T19_completeBinBit_IE2_cdbbl
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 22 )
			(trainInItinerary T19 IE2)
			(binBitIsBlocked cdbbl)
		)
		:effect (and
			(not (binBitIsBlocked cdbbl))
		)
	)
	(:event T19_completeBinBit_IE2_cdbbj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 30 )
			(trainInItinerary T19 IE2)
			(binBitIsBlocked cdbbj)
		)
		:effect (and
			(not (binBitIsBlocked cdbbj))
		)
	)
	(:event T19_completeBinBit_IE2_cdbbf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 37 )
			(trainInItinerary T19 IE2)
			(binBitIsBlocked cdbbf)
		)
		:effect (and
			(not (binBitIsBlocked cdbbf))
		)
	)
	(:event T19_completeBinBit_IE2_cdbba
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 45 )
			(trainInItinerary T19 IE2)
			(binBitIsBlocked cdbba)
		)
		:effect (and
			(not (binBitIsBlocked cdbba))
		)
	)
	(:event T19_completeBinBit_IE2_cdbav
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 52 )
			(trainInItinerary T19 IE2)
			(binBitIsBlocked cdbav)
		)
		:effect (and
			(not (binBitIsBlocked cdbav))
		)
	)
	(:event T19_completeItinerary_I2W
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2W) 60 )
			(itineraryIsReserved I2W)
			(trainInItinerary T19 I2W)
			(not (trainHasCompletedItinerary T19 I2W))
			(not (trainHasExitedStation T19))
		)
		:effect (and
			(trainHasCompletedItinerary T19 I2W)
		)
	)
	(:event T19_completeBinBit_I2W_cdbal
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2W) 12 )
			(trainInItinerary T19 I2W)
			(binBitIsBlocked cdbal)
		)
		:effect (and
			(not (binBitIsBlocked cdbal))
		)
	)
	(:event T19_completeBinBit_I2W_cdbaj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2W) 24 )
			(trainInItinerary T19 I2W)
			(binBitIsBlocked cdbaj)
		)
		:effect (and
			(not (binBitIsBlocked cdbaj))
		)
	)
	(:event T19_completeBinBit_I2W_cdbaf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2W) 36 )
			(trainInItinerary T19 I2W)
			(binBitIsBlocked cdbaf)
		)
		:effect (and
			(not (binBitIsBlocked cdbaf))
		)
	)
	(:event T19_completeBinBit_I2W_cdbad
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2W) 48 )
			(trainInItinerary T19 I2W)
			(binBitIsBlocked cdbad)
		)
		:effect (and
			(not (binBitIsBlocked cdbad))
		)
	)
	(:event T19_completeItinerary_IE3
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 60 )
			(itineraryIsReserved IE3)
			(trainInItinerary T19 IE3)
			(not (trainHasCompletedItinerary T19 IE3))
			(not (trainHasExitedStation T19))
		)
		:effect (and
			(trainHasCompletedItinerary T19 IE3)
		)
	)
	(:event T19_completeBinBit_IE3_cdbbs
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 7 )
			(trainInItinerary T19 IE3)
			(binBitIsBlocked cdbbs)
		)
		:effect (and
			(not (binBitIsBlocked cdbbs))
		)
	)
	(:event T19_completeBinBit_IE3_cdbbp
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 15 )
			(trainInItinerary T19 IE3)
			(binBitIsBlocked cdbbp)
		)
		:effect (and
			(not (binBitIsBlocked cdbbp))
		)
	)
	(:event T19_completeBinBit_IE3_cdbbl
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 22 )
			(trainInItinerary T19 IE3)
			(binBitIsBlocked cdbbl)
		)
		:effect (and
			(not (binBitIsBlocked cdbbl))
		)
	)
	(:event T19_completeBinBit_IE3_cdbbj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 30 )
			(trainInItinerary T19 IE3)
			(binBitIsBlocked cdbbj)
		)
		:effect (and
			(not (binBitIsBlocked cdbbj))
		)
	)
	(:event T19_completeBinBit_IE3_cdbbg
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 37 )
			(trainInItinerary T19 IE3)
			(binBitIsBlocked cdbbg)
		)
		:effect (and
			(not (binBitIsBlocked cdbbg))
		)
	)
	(:event T19_completeBinBit_IE3_cdbbb
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 45 )
			(trainInItinerary T19 IE3)
			(binBitIsBlocked cdbbb)
		)
		:effect (and
			(not (binBitIsBlocked cdbbb))
		)
	)
	(:event T19_completeBinBit_IE3_cdbaw
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 52 )
			(trainInItinerary T19 IE3)
			(binBitIsBlocked cdbaw)
		)
		:effect (and
			(not (binBitIsBlocked cdbaw))
		)
	)
	(:event T19_completeItinerary_I3W
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3W) 60 )
			(itineraryIsReserved I3W)
			(trainInItinerary T19 I3W)
			(not (trainHasCompletedItinerary T19 I3W))
			(not (trainHasExitedStation T19))
		)
		:effect (and
			(trainHasCompletedItinerary T19 I3W)
		)
	)
	(:event T19_completeBinBit_I3W_cdbam
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3W) 12 )
			(trainInItinerary T19 I3W)
			(binBitIsBlocked cdbam)
		)
		:effect (and
			(not (binBitIsBlocked cdbam))
		)
	)
	(:event T19_completeBinBit_I3W_cdbaj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3W) 24 )
			(trainInItinerary T19 I3W)
			(binBitIsBlocked cdbaj)
		)
		:effect (and
			(not (binBitIsBlocked cdbaj))
		)
	)
	(:event T19_completeBinBit_I3W_cdbaf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3W) 36 )
			(trainInItinerary T19 I3W)
			(binBitIsBlocked cdbaf)
		)
		:effect (and
			(not (binBitIsBlocked cdbaf))
		)
	)
	(:event T19_completeBinBit_I3W_cdbad
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3W) 48 )
			(trainInItinerary T19 I3W)
			(binBitIsBlocked cdbad)
		)
		:effect (and
			(not (binBitIsBlocked cdbad))
		)
	)
	(:event T19_completeItinerary_IE4
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 60 )
			(itineraryIsReserved IE4)
			(trainInItinerary T19 IE4)
			(not (trainHasCompletedItinerary T19 IE4))
			(not (trainHasExitedStation T19))
		)
		:effect (and
			(trainHasCompletedItinerary T19 IE4)
		)
	)
	(:event T19_completeBinBit_IE4_cdbbs
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 7 )
			(trainInItinerary T19 IE4)
			(binBitIsBlocked cdbbs)
		)
		:effect (and
			(not (binBitIsBlocked cdbbs))
		)
	)
	(:event T19_completeBinBit_IE4_cdbbq
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 15 )
			(trainInItinerary T19 IE4)
			(binBitIsBlocked cdbbq)
		)
		:effect (and
			(not (binBitIsBlocked cdbbq))
		)
	)
	(:event T19_completeBinBit_IE4_cdbbn
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 22 )
			(trainInItinerary T19 IE4)
			(binBitIsBlocked cdbbn)
		)
		:effect (and
			(not (binBitIsBlocked cdbbn))
		)
	)
	(:event T19_completeBinBit_IE4_cdbbk
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 30 )
			(trainInItinerary T19 IE4)
			(binBitIsBlocked cdbbk)
		)
		:effect (and
			(not (binBitIsBlocked cdbbk))
		)
	)
	(:event T19_completeBinBit_IE4_cdbbh
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 37 )
			(trainInItinerary T19 IE4)
			(binBitIsBlocked cdbbh)
		)
		:effect (and
			(not (binBitIsBlocked cdbbh))
		)
	)
	(:event T19_completeBinBit_IE4_cdbbc
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 45 )
			(trainInItinerary T19 IE4)
			(binBitIsBlocked cdbbc)
		)
		:effect (and
			(not (binBitIsBlocked cdbbc))
		)
	)
	(:event T19_completeBinBit_IE4_cdbax
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 52 )
			(trainInItinerary T19 IE4)
			(binBitIsBlocked cdbax)
		)
		:effect (and
			(not (binBitIsBlocked cdbax))
		)
	)
	(:event T19_completeItinerary_I4W
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4W) 60 )
			(itineraryIsReserved I4W)
			(trainInItinerary T19 I4W)
			(not (trainHasCompletedItinerary T19 I4W))
			(not (trainHasExitedStation T19))
		)
		:effect (and
			(trainHasCompletedItinerary T19 I4W)
		)
	)
	(:event T19_completeBinBit_I4W_cdban
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4W) 12 )
			(trainInItinerary T19 I4W)
			(binBitIsBlocked cdban)
		)
		:effect (and
			(not (binBitIsBlocked cdban))
		)
	)
	(:event T19_completeBinBit_I4W_cdbak
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4W) 24 )
			(trainInItinerary T19 I4W)
			(binBitIsBlocked cdbak)
		)
		:effect (and
			(not (binBitIsBlocked cdbak))
		)
	)
	(:event T19_completeBinBit_I4W_cdbah
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4W) 36 )
			(trainInItinerary T19 I4W)
			(binBitIsBlocked cdbah)
		)
		:effect (and
			(not (binBitIsBlocked cdbah))
		)
	)
	(:event T19_completeBinBit_I4W_cdbae
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4W) 48 )
			(trainInItinerary T19 I4W)
			(binBitIsBlocked cdbae)
		)
		:effect (and
			(not (binBitIsBlocked cdbae))
		)
	)
	(:event T19_completeItinerary_IE5
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 60 )
			(itineraryIsReserved IE5)
			(trainInItinerary T19 IE5)
			(not (trainHasCompletedItinerary T19 IE5))
			(not (trainHasExitedStation T19))
		)
		:effect (and
			(trainHasCompletedItinerary T19 IE5)
		)
	)
	(:event T19_completeBinBit_IE5_cdbbs
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 7 )
			(trainInItinerary T19 IE5)
			(binBitIsBlocked cdbbs)
		)
		:effect (and
			(not (binBitIsBlocked cdbbs))
		)
	)
	(:event T19_completeBinBit_IE5_cdbbq
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 15 )
			(trainInItinerary T19 IE5)
			(binBitIsBlocked cdbbq)
		)
		:effect (and
			(not (binBitIsBlocked cdbbq))
		)
	)
	(:event T19_completeBinBit_IE5_cdbbn
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 22 )
			(trainInItinerary T19 IE5)
			(binBitIsBlocked cdbbn)
		)
		:effect (and
			(not (binBitIsBlocked cdbbn))
		)
	)
	(:event T19_completeBinBit_IE5_cdbbk
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 30 )
			(trainInItinerary T19 IE5)
			(binBitIsBlocked cdbbk)
		)
		:effect (and
			(not (binBitIsBlocked cdbbk))
		)
	)
	(:event T19_completeBinBit_IE5_cdbbi
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 37 )
			(trainInItinerary T19 IE5)
			(binBitIsBlocked cdbbi)
		)
		:effect (and
			(not (binBitIsBlocked cdbbi))
		)
	)
	(:event T19_completeBinBit_IE5_cdbbd
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 45 )
			(trainInItinerary T19 IE5)
			(binBitIsBlocked cdbbd)
		)
		:effect (and
			(not (binBitIsBlocked cdbbd))
		)
	)
	(:event T19_completeBinBit_IE5_cdbay
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 52 )
			(trainInItinerary T19 IE5)
			(binBitIsBlocked cdbay)
		)
		:effect (and
			(not (binBitIsBlocked cdbay))
		)
	)
	(:event T19_completeItinerary_I5W
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5W) 60 )
			(itineraryIsReserved I5W)
			(trainInItinerary T19 I5W)
			(not (trainHasCompletedItinerary T19 I5W))
			(not (trainHasExitedStation T19))
		)
		:effect (and
			(trainHasCompletedItinerary T19 I5W)
		)
	)
	(:event T19_completeBinBit_I5W_cdbao
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5W) 12 )
			(trainInItinerary T19 I5W)
			(binBitIsBlocked cdbao)
		)
		:effect (and
			(not (binBitIsBlocked cdbao))
		)
	)
	(:event T19_completeBinBit_I5W_cdbak
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5W) 24 )
			(trainInItinerary T19 I5W)
			(binBitIsBlocked cdbak)
		)
		:effect (and
			(not (binBitIsBlocked cdbak))
		)
	)
	(:event T19_completeBinBit_I5W_cdbah
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5W) 36 )
			(trainInItinerary T19 I5W)
			(binBitIsBlocked cdbah)
		)
		:effect (and
			(not (binBitIsBlocked cdbah))
		)
	)
	(:event T19_completeBinBit_I5W_cdbae
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5W) 48 )
			(trainInItinerary T19 I5W)
			(binBitIsBlocked cdbae)
		)
		:effect (and
			(not (binBitIsBlocked cdbae))
		)
	)
	(:action T19_overlaps_IE1_I1W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T19 IE1)
			(trainInItinerary T19 IE1)
			(not (trainIsStopping T19))
			(not (itineraryIsReserved I1W))
			(not (flagIsBlockedDueToOverlap F1L))
			(not (binBitIsBlocked cdbai))
			(not (binBitIsBlocked cdbaf))
			(not (binBitIsBlocked cdbad))
			(not (binBitIsBlocked cdbab))
		)
		:effect (and
			(itineraryIsReserved I1W)
			(trainInItinerary T19 I1W)
			(trainIsOverlapping T19)
			(flagIsBlockedDueToOverlap F1L)
			(binBitIsBlocked cdbai)
			(binBitIsBlocked cdbaf)
			(binBitIsBlocked cdbad)
			(binBitIsBlocked cdbab)
		)
	)
	(:event T19_endOverlap_IE1_I1W
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F1L) 1 )
			(flagIsBlockedDueToOverlap F1L)
			(trainInItinerary T19 IE1)
			(trainInItinerary T19 I1W)
		)
		:effect (and
			(not (itineraryIsReserved IE1))
			(not (trainIsOverlapping T19))
			(assign (timeElapsedReservedItinerary IE1) 0 )
			(not (trainInItinerary T19 IE1))
			(not (flagIsBlockedDueToOverlap F1L))
			(assign (timeElapsedOverlappedFlag F1L) 0 )
			(not (binBitIsBlocked cdbap))
		)
	)
	(:action T19_overlaps_IE2_I2W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T19 IE2)
			(trainInItinerary T19 IE2)
			(not (trainIsStopping T19))
			(not (itineraryIsReserved I2W))
			(not (flagIsBlockedDueToOverlap F2L))
			(not (binBitIsBlocked cdbal))
			(not (binBitIsBlocked cdbaj))
			(not (binBitIsBlocked cdbaf))
			(not (binBitIsBlocked cdbad))
			(not (binBitIsBlocked cdbab))
		)
		:effect (and
			(itineraryIsReserved I2W)
			(trainInItinerary T19 I2W)
			(trainIsOverlapping T19)
			(flagIsBlockedDueToOverlap F2L)
			(binBitIsBlocked cdbal)
			(binBitIsBlocked cdbaj)
			(binBitIsBlocked cdbaf)
			(binBitIsBlocked cdbad)
			(binBitIsBlocked cdbab)
		)
	)
	(:event T19_endOverlap_IE2_I2W
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F2L) 1 )
			(flagIsBlockedDueToOverlap F2L)
			(trainInItinerary T19 IE2)
			(trainInItinerary T19 I2W)
		)
		:effect (and
			(not (itineraryIsReserved IE2))
			(not (trainIsOverlapping T19))
			(assign (timeElapsedReservedItinerary IE2) 0 )
			(not (trainInItinerary T19 IE2))
			(not (flagIsBlockedDueToOverlap F2L))
			(assign (timeElapsedOverlappedFlag F2L) 0 )
			(not (binBitIsBlocked cdbaq))
		)
	)
	(:action T19_overlaps_IE3_I3W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T19 IE3)
			(trainInItinerary T19 IE3)
			(not (trainIsStopping T19))
			(not (itineraryIsReserved I3W))
			(not (flagIsBlockedDueToOverlap F3L))
			(not (binBitIsBlocked cdbam))
			(not (binBitIsBlocked cdbaj))
			(not (binBitIsBlocked cdbaf))
			(not (binBitIsBlocked cdbad))
			(not (binBitIsBlocked cdbab))
		)
		:effect (and
			(itineraryIsReserved I3W)
			(trainInItinerary T19 I3W)
			(trainIsOverlapping T19)
			(flagIsBlockedDueToOverlap F3L)
			(binBitIsBlocked cdbam)
			(binBitIsBlocked cdbaj)
			(binBitIsBlocked cdbaf)
			(binBitIsBlocked cdbad)
			(binBitIsBlocked cdbab)
		)
	)
	(:event T19_endOverlap_IE3_I3W
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F3L) 1 )
			(flagIsBlockedDueToOverlap F3L)
			(trainInItinerary T19 IE3)
			(trainInItinerary T19 I3W)
		)
		:effect (and
			(not (itineraryIsReserved IE3))
			(not (trainIsOverlapping T19))
			(assign (timeElapsedReservedItinerary IE3) 0 )
			(not (trainInItinerary T19 IE3))
			(not (flagIsBlockedDueToOverlap F3L))
			(assign (timeElapsedOverlappedFlag F3L) 0 )
			(not (binBitIsBlocked cdbar))
		)
	)
	(:action T19_overlaps_IE4_I4W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T19 IE4)
			(trainInItinerary T19 IE4)
			(not (trainIsStopping T19))
			(not (itineraryIsReserved I4W))
			(not (flagIsBlockedDueToOverlap F4L))
			(not (binBitIsBlocked cdban))
			(not (binBitIsBlocked cdbak))
			(not (binBitIsBlocked cdbah))
			(not (binBitIsBlocked cdbae))
			(not (binBitIsBlocked cdbab))
		)
		:effect (and
			(itineraryIsReserved I4W)
			(trainInItinerary T19 I4W)
			(trainIsOverlapping T19)
			(flagIsBlockedDueToOverlap F4L)
			(binBitIsBlocked cdban)
			(binBitIsBlocked cdbak)
			(binBitIsBlocked cdbah)
			(binBitIsBlocked cdbae)
			(binBitIsBlocked cdbab)
		)
	)
	(:event T19_endOverlap_IE4_I4W
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F4L) 1 )
			(flagIsBlockedDueToOverlap F4L)
			(trainInItinerary T19 IE4)
			(trainInItinerary T19 I4W)
		)
		:effect (and
			(not (itineraryIsReserved IE4))
			(not (trainIsOverlapping T19))
			(assign (timeElapsedReservedItinerary IE4) 0 )
			(not (trainInItinerary T19 IE4))
			(not (flagIsBlockedDueToOverlap F4L))
			(assign (timeElapsedOverlappedFlag F4L) 0 )
			(not (binBitIsBlocked cdbas))
		)
	)
	(:action T19_overlaps_IE5_I5W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T19 IE5)
			(trainInItinerary T19 IE5)
			(not (trainIsStopping T19))
			(not (itineraryIsReserved I5W))
			(not (flagIsBlockedDueToOverlap F5L))
			(not (binBitIsBlocked cdbao))
			(not (binBitIsBlocked cdbak))
			(not (binBitIsBlocked cdbah))
			(not (binBitIsBlocked cdbae))
			(not (binBitIsBlocked cdbab))
		)
		:effect (and
			(itineraryIsReserved I5W)
			(trainInItinerary T19 I5W)
			(trainIsOverlapping T19)
			(flagIsBlockedDueToOverlap F5L)
			(binBitIsBlocked cdbao)
			(binBitIsBlocked cdbak)
			(binBitIsBlocked cdbah)
			(binBitIsBlocked cdbae)
			(binBitIsBlocked cdbab)
		)
	)
	(:event T19_endOverlap_IE5_I5W
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F5L) 1 )
			(flagIsBlockedDueToOverlap F5L)
			(trainInItinerary T19 IE5)
			(trainInItinerary T19 I5W)
		)
		:effect (and
			(not (itineraryIsReserved IE5))
			(not (trainIsOverlapping T19))
			(assign (timeElapsedReservedItinerary IE5) 0 )
			(not (trainInItinerary T19 IE5))
			(not (flagIsBlockedDueToOverlap F5L))
			(assign (timeElapsedOverlappedFlag F5L) 0 )
			(not (binBitIsBlocked cdbat))
		)
	)
	(:process incrementElapsedTimeOfReservedItinerary
		:parameters(?i - itinerary)
		:precondition (and
			(itineraryIsReserved ?i)
		)
		:effect (and
			(increase (timeElapsedReservedItinerary ?i) #t )
		)
	)
	(:process incrementOverlapTimeOfBlockedFlag
		:parameters(?f - flag)
		:precondition (and
			(flagIsBlockedDueToOverlap ?f)
		)
		:effect (and
			(increase (timeElapsedOverlappedFlag ?f) #t )
		)
	)
	(:process incrementTrainStayInStation
		:parameters(?t - train)
		:precondition (and
			(trainHasEnteredStation ?t)
			(not (trainHasExitedStation ?t))
		)
		:effect (and
			(increase (trainStayInStation ?t) #t )
		)
	)
	(:process incrementTrainTimeFromArrival
		:parameters(?t - train)
		:precondition (and
			(trainHasArrivedAtStation ?t)
			(not (trainHasExitedStation ?t))
		)
		:effect (and
			(increase (trainTimeFromArrival ?t) #t )
		)
	)
	(:process incrementTrainStopTime
		:parameters(?t - train)
		:precondition (and
			(trainIsStopping ?t)
		)
		:effect (and
			(increase (trainStopTime ?t) #t )
		)
	)
	(:process incrementTime
		:parameters()
		:precondition (and
			(not (alwaysFalse ))
		)
		:effect (and
			(increase time  #t )
		)
	)
)

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
	(:event T1_arrivesAtEndpoint_E_plus
		:parameters()
		:precondition (and
			(>= time  1173 )
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
	(:action T1_beginStop_IE2_S_II
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T1 IE2)
			(trainInItinerary T1 IE2)
			(not (trainIsOverlapping T1))
			(not (stopIsOccupied S_II))
			(not (trainIsStopping T1))
			(not (trainHasStoppedAtStop T1 S_II))
		)
		:effect (and
			(trainIsStoppingAtStop T1 S_II)
			(trainHasReachedTheStop T1 S_II)
			(trainHasReachedAStop T1)
			(trainIsStopping T1)
			(assign (trainStopTime T1) 0 )
			(stopIsOccupied S_II)
			(not (itineraryIsReserved IE2))
		)
	)
	(:event T1_endStop_IE2_S_II
		:parameters()
		:precondition (and
			(>= (trainStopTime T1) 100 )
			(trainInItinerary T1 IE2)
			(trainIsStoppingAtStop T1 S_II)
			(stopIsOccupied S_II)
		)
		:effect (and
			(assign (trainStopTime T1) 0 )
			(not (trainIsStoppingAtStop T1 S_II))
			(not (trainIsStopping T1))
			(trainHasStoppedAtStop T1 S_II)
			(trainHasStopped T1)
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
	(:action T1_trainEndsVoy_IE2_S_II
		:parameters()
		:precondition (and
			(trainInItinerary T1 IE2)
			(trainHasStopped T1)
			(trainHasStoppedAtStop T1 S_II)
			(not (trainHasEndedVoy T1))
		)
		:effect (and
			(not (trainInItinerary T1 IE2))
			(trainHasExitedStation T1)
			(trainHasEndedVoy T1)
			(assign (timeElapsedReservedItinerary IE2) 0 )
		)
	)
	(:event T2_arrivesAtEndpoint_E_plus
		:parameters()
		:precondition (and
			(>= time  518 )
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
	(:action T2_entersStation_IE5
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T2 E_plus)
			(not (trainHasExitedStation T2))
			(not (trainHasEnteredStation T2))
			(= (trainEntryIndex T2) (trainsEnteredFromEndpoint E_plus))
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
			(not (trainIsAtEndpoint T2 E_plus))
			(itineraryIsReserved IE5)
			(not (trainEntersStationAt T2 F04))
			(trainInItinerary T2 IE5)
			(trainHasEnteredStation T2)
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
	(:event T2_completeItinerary_IE5
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 60 )
			(itineraryIsReserved IE5)
			(trainInItinerary T2 IE5)
			(not (trainHasCompletedItinerary T2 IE5))
			(not (trainHasExitedStation T2))
		)
		:effect (and
			(trainHasCompletedItinerary T2 IE5)
		)
	)
	(:event T2_completeBinBit_IE5_cdbbs
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 7 )
			(trainInItinerary T2 IE5)
			(binBitIsBlocked cdbbs)
		)
		:effect (and
			(not (binBitIsBlocked cdbbs))
		)
	)
	(:event T2_completeBinBit_IE5_cdbbq
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 15 )
			(trainInItinerary T2 IE5)
			(binBitIsBlocked cdbbq)
		)
		:effect (and
			(not (binBitIsBlocked cdbbq))
		)
	)
	(:event T2_completeBinBit_IE5_cdbbn
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 22 )
			(trainInItinerary T2 IE5)
			(binBitIsBlocked cdbbn)
		)
		:effect (and
			(not (binBitIsBlocked cdbbn))
		)
	)
	(:event T2_completeBinBit_IE5_cdbbk
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 30 )
			(trainInItinerary T2 IE5)
			(binBitIsBlocked cdbbk)
		)
		:effect (and
			(not (binBitIsBlocked cdbbk))
		)
	)
	(:event T2_completeBinBit_IE5_cdbbi
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 37 )
			(trainInItinerary T2 IE5)
			(binBitIsBlocked cdbbi)
		)
		:effect (and
			(not (binBitIsBlocked cdbbi))
		)
	)
	(:event T2_completeBinBit_IE5_cdbbd
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 45 )
			(trainInItinerary T2 IE5)
			(binBitIsBlocked cdbbd)
		)
		:effect (and
			(not (binBitIsBlocked cdbbd))
		)
	)
	(:event T2_completeBinBit_IE5_cdbay
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 52 )
			(trainInItinerary T2 IE5)
			(binBitIsBlocked cdbay)
		)
		:effect (and
			(not (binBitIsBlocked cdbay))
		)
	)
	(:action T2_beginStop_IE5_S_V
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T2 IE5)
			(trainInItinerary T2 IE5)
			(not (trainIsOverlapping T2))
			(not (stopIsOccupied S_V))
			(not (trainIsStopping T2))
			(not (trainHasStoppedAtStop T2 S_V))
		)
		:effect (and
			(trainIsStoppingAtStop T2 S_V)
			(trainHasReachedTheStop T2 S_V)
			(trainHasReachedAStop T2)
			(trainIsStopping T2)
			(assign (trainStopTime T2) 0 )
			(stopIsOccupied S_V)
			(not (itineraryIsReserved IE5))
		)
	)
	(:event T2_endStop_IE5_S_V
		:parameters()
		:precondition (and
			(>= (trainStopTime T2) 100 )
			(trainInItinerary T2 IE5)
			(trainIsStoppingAtStop T2 S_V)
			(stopIsOccupied S_V)
		)
		:effect (and
			(assign (trainStopTime T2) 0 )
			(not (trainIsStoppingAtStop T2 S_V))
			(not (trainIsStopping T2))
			(trainHasStoppedAtStop T2 S_V)
			(trainHasStopped T2)
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
	(:action T2_trainEndsVoy_IE5_S_V
		:parameters()
		:precondition (and
			(trainInItinerary T2 IE5)
			(trainHasStopped T2)
			(trainHasStoppedAtStop T2 S_V)
			(not (trainHasEndedVoy T2))
		)
		:effect (and
			(not (trainInItinerary T2 IE5))
			(trainHasExitedStation T2)
			(trainHasEndedVoy T2)
			(assign (timeElapsedReservedItinerary IE5) 0 )
		)
	)
	(:event T3_arrivesAtEndpoint_W_plus
		:parameters()
		:precondition (and
			(>= time  1482 )
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
	(:action T3_beginStop_IW3_S_III
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T3 IW3)
			(trainInItinerary T3 IW3)
			(not (trainIsOverlapping T3))
			(not (stopIsOccupied S_III))
			(not (trainIsStopping T3))
			(not (trainHasStoppedAtStop T3 S_III))
		)
		:effect (and
			(trainIsStoppingAtStop T3 S_III)
			(trainHasReachedTheStop T3 S_III)
			(trainHasReachedAStop T3)
			(trainIsStopping T3)
			(assign (trainStopTime T3) 0 )
			(stopIsOccupied S_III)
			(not (itineraryIsReserved IW3))
		)
	)
	(:event T3_endStop_IW3_S_III
		:parameters()
		:precondition (and
			(>= (trainStopTime T3) 100 )
			(trainInItinerary T3 IW3)
			(trainIsStoppingAtStop T3 S_III)
			(stopIsOccupied S_III)
		)
		:effect (and
			(assign (trainStopTime T3) 0 )
			(not (trainIsStoppingAtStop T3 S_III))
			(not (trainIsStopping T3))
			(trainHasStoppedAtStop T3 S_III)
			(trainHasStopped T3)
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
	(:action T3_trainEndsVoy_IW3_S_III
		:parameters()
		:precondition (and
			(trainInItinerary T3 IW3)
			(trainHasStopped T3)
			(trainHasStoppedAtStop T3 S_III)
			(not (trainHasEndedVoy T3))
		)
		:effect (and
			(not (trainInItinerary T3 IW3))
			(trainHasExitedStation T3)
			(trainHasEndedVoy T3)
			(assign (timeElapsedReservedItinerary IW3) 0 )
		)
	)
	(:event T4_arrivesAtEndpoint_W_plus
		:parameters()
		:precondition (and
			(>= time  105 )
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
	(:action T4_entersStation_IW1
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T4 W_plus)
			(not (trainHasExitedStation T4))
			(not (trainHasEnteredStation T4))
			(= (trainEntryIndex T4) (trainsEnteredFromEndpoint W_plus))
			(not (binBitIsBlocked cdbaa))
			(not (binBitIsBlocked cdbac))
			(not (binBitIsBlocked cdbaf))
			(not (binBitIsBlocked cdbai))
			(not (binBitIsBlocked cdbap))
			(not (binBitIsBlocked cdbau))
			(not (binBitIsBlocked cdbaz))
		)
		:effect (and
			(not (trainIsAtEndpoint T4 W_plus))
			(itineraryIsReserved IW1)
			(not (trainEntersStationAt T4 F01))
			(trainInItinerary T4 IW1)
			(trainHasEnteredStation T4)
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
	(:action T4_entersStation_IW2
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
			(not (binBitIsBlocked cdbal))
			(not (binBitIsBlocked cdbaq))
			(not (binBitIsBlocked cdbav))
			(not (binBitIsBlocked cdbba))
		)
		:effect (and
			(not (trainIsAtEndpoint T4 W_plus))
			(itineraryIsReserved IW2)
			(not (trainEntersStationAt T4 F01))
			(trainInItinerary T4 IW2)
			(trainHasEnteredStation T4)
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
	(:action T4_entersStation_IW4
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T4 W_plus)
			(not (trainHasExitedStation T4))
			(not (trainHasEnteredStation T4))
			(= (trainEntryIndex T4) (trainsEnteredFromEndpoint W_plus))
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
			(not (trainIsAtEndpoint T4 W_plus))
			(itineraryIsReserved IW4)
			(not (trainEntersStationAt T4 F01))
			(trainInItinerary T4 IW4)
			(trainHasEnteredStation T4)
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
	(:action T4_entersStation_IW5
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T4 W_plus)
			(not (trainHasExitedStation T4))
			(not (trainHasEnteredStation T4))
			(= (trainEntryIndex T4) (trainsEnteredFromEndpoint W_plus))
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
			(not (trainIsAtEndpoint T4 W_plus))
			(itineraryIsReserved IW5)
			(not (trainEntersStationAt T4 F01))
			(trainInItinerary T4 IW5)
			(trainHasEnteredStation T4)
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
	(:action T4_exitsStation_I1E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T4 I1E)
			(not (trainHasExitedStation T4))
		)
		:effect (and
			(not (itineraryIsReserved I1E))
			(not (trainInItinerary T4 I1E))
			(trainExitsStationAt T4 F03)
			(assign (timeElapsedReservedItinerary I1E) 0 )
			(trainHasExitedStation T4)
			(not (binBitIsBlocked cdbbr))
		)
	)
	(:action T4_exitsStation_I2E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T4 I2E)
			(not (trainHasExitedStation T4))
		)
		:effect (and
			(not (itineraryIsReserved I2E))
			(not (trainInItinerary T4 I2E))
			(trainExitsStationAt T4 F03)
			(assign (timeElapsedReservedItinerary I2E) 0 )
			(trainHasExitedStation T4)
			(not (binBitIsBlocked cdbbr))
		)
	)
	(:action T4_exitsStation_I3E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T4 I3E)
			(not (trainHasExitedStation T4))
		)
		:effect (and
			(not (itineraryIsReserved I3E))
			(not (trainInItinerary T4 I3E))
			(trainExitsStationAt T4 F03)
			(assign (timeElapsedReservedItinerary I3E) 0 )
			(trainHasExitedStation T4)
			(not (binBitIsBlocked cdbbr))
		)
	)
	(:action T4_exitsStation_I4E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T4 I4E)
			(not (trainHasExitedStation T4))
		)
		:effect (and
			(not (itineraryIsReserved I4E))
			(not (trainInItinerary T4 I4E))
			(trainExitsStationAt T4 F03)
			(assign (timeElapsedReservedItinerary I4E) 0 )
			(trainHasExitedStation T4)
			(not (binBitIsBlocked cdbbr))
		)
	)
	(:action T4_exitsStation_I5E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T4 I5E)
			(not (trainHasExitedStation T4))
		)
		:effect (and
			(not (itineraryIsReserved I5E))
			(not (trainInItinerary T4 I5E))
			(trainExitsStationAt T4 F03)
			(assign (timeElapsedReservedItinerary I5E) 0 )
			(trainHasExitedStation T4)
			(not (binBitIsBlocked cdbbr))
		)
	)
	(:event T4_completeItinerary_IW1
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 60 )
			(itineraryIsReserved IW1)
			(trainInItinerary T4 IW1)
			(not (trainHasCompletedItinerary T4 IW1))
			(not (trainHasExitedStation T4))
		)
		:effect (and
			(trainHasCompletedItinerary T4 IW1)
		)
	)
	(:event T4_completeBinBit_IW1_cdbaa
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 8 )
			(trainInItinerary T4 IW1)
			(binBitIsBlocked cdbaa)
		)
		:effect (and
			(not (binBitIsBlocked cdbaa))
		)
	)
	(:event T4_completeBinBit_IW1_cdbac
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 17 )
			(trainInItinerary T4 IW1)
			(binBitIsBlocked cdbac)
		)
		:effect (and
			(not (binBitIsBlocked cdbac))
		)
	)
	(:event T4_completeBinBit_IW1_cdbaf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 25 )
			(trainInItinerary T4 IW1)
			(binBitIsBlocked cdbaf)
		)
		:effect (and
			(not (binBitIsBlocked cdbaf))
		)
	)
	(:event T4_completeBinBit_IW1_cdbai
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 34 )
			(trainInItinerary T4 IW1)
			(binBitIsBlocked cdbai)
		)
		:effect (and
			(not (binBitIsBlocked cdbai))
		)
	)
	(:event T4_completeBinBit_IW1_cdbap
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 42 )
			(trainInItinerary T4 IW1)
			(binBitIsBlocked cdbap)
		)
		:effect (and
			(not (binBitIsBlocked cdbap))
		)
	)
	(:event T4_completeBinBit_IW1_cdbau
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 51 )
			(trainInItinerary T4 IW1)
			(binBitIsBlocked cdbau)
		)
		:effect (and
			(not (binBitIsBlocked cdbau))
		)
	)
	(:event T4_completeItinerary_I1E
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1E) 60 )
			(itineraryIsReserved I1E)
			(trainInItinerary T4 I1E)
			(not (trainHasCompletedItinerary T4 I1E))
			(not (trainHasExitedStation T4))
		)
		:effect (and
			(trainHasCompletedItinerary T4 I1E)
		)
	)
	(:event T4_completeBinBit_I1E_cdbbe
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1E) 15 )
			(trainInItinerary T4 I1E)
			(binBitIsBlocked cdbbe)
		)
		:effect (and
			(not (binBitIsBlocked cdbbe))
		)
	)
	(:event T4_completeBinBit_I1E_cdbbl
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1E) 30 )
			(trainInItinerary T4 I1E)
			(binBitIsBlocked cdbbl)
		)
		:effect (and
			(not (binBitIsBlocked cdbbl))
		)
	)
	(:event T4_completeBinBit_I1E_cdbbo
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1E) 45 )
			(trainInItinerary T4 I1E)
			(binBitIsBlocked cdbbo)
		)
		:effect (and
			(not (binBitIsBlocked cdbbo))
		)
	)
	(:event T4_completeItinerary_IW2
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 60 )
			(itineraryIsReserved IW2)
			(trainInItinerary T4 IW2)
			(not (trainHasCompletedItinerary T4 IW2))
			(not (trainHasExitedStation T4))
		)
		:effect (and
			(trainHasCompletedItinerary T4 IW2)
		)
	)
	(:event T4_completeBinBit_IW2_cdbaa
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 7 )
			(trainInItinerary T4 IW2)
			(binBitIsBlocked cdbaa)
		)
		:effect (and
			(not (binBitIsBlocked cdbaa))
		)
	)
	(:event T4_completeBinBit_IW2_cdbac
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 15 )
			(trainInItinerary T4 IW2)
			(binBitIsBlocked cdbac)
		)
		:effect (and
			(not (binBitIsBlocked cdbac))
		)
	)
	(:event T4_completeBinBit_IW2_cdbaf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 22 )
			(trainInItinerary T4 IW2)
			(binBitIsBlocked cdbaf)
		)
		:effect (and
			(not (binBitIsBlocked cdbaf))
		)
	)
	(:event T4_completeBinBit_IW2_cdbaj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 30 )
			(trainInItinerary T4 IW2)
			(binBitIsBlocked cdbaj)
		)
		:effect (and
			(not (binBitIsBlocked cdbaj))
		)
	)
	(:event T4_completeBinBit_IW2_cdbal
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 37 )
			(trainInItinerary T4 IW2)
			(binBitIsBlocked cdbal)
		)
		:effect (and
			(not (binBitIsBlocked cdbal))
		)
	)
	(:event T4_completeBinBit_IW2_cdbaq
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 45 )
			(trainInItinerary T4 IW2)
			(binBitIsBlocked cdbaq)
		)
		:effect (and
			(not (binBitIsBlocked cdbaq))
		)
	)
	(:event T4_completeBinBit_IW2_cdbav
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 52 )
			(trainInItinerary T4 IW2)
			(binBitIsBlocked cdbav)
		)
		:effect (and
			(not (binBitIsBlocked cdbav))
		)
	)
	(:event T4_completeItinerary_I2E
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2E) 60 )
			(itineraryIsReserved I2E)
			(trainInItinerary T4 I2E)
			(not (trainHasCompletedItinerary T4 I2E))
			(not (trainHasExitedStation T4))
		)
		:effect (and
			(trainHasCompletedItinerary T4 I2E)
		)
	)
	(:event T4_completeBinBit_I2E_cdbbf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2E) 12 )
			(trainInItinerary T4 I2E)
			(binBitIsBlocked cdbbf)
		)
		:effect (and
			(not (binBitIsBlocked cdbbf))
		)
	)
	(:event T4_completeBinBit_I2E_cdbbj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2E) 24 )
			(trainInItinerary T4 I2E)
			(binBitIsBlocked cdbbj)
		)
		:effect (and
			(not (binBitIsBlocked cdbbj))
		)
	)
	(:event T4_completeBinBit_I2E_cdbbl
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2E) 36 )
			(trainInItinerary T4 I2E)
			(binBitIsBlocked cdbbl)
		)
		:effect (and
			(not (binBitIsBlocked cdbbl))
		)
	)
	(:event T4_completeBinBit_I2E_cdbbo
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2E) 48 )
			(trainInItinerary T4 I2E)
			(binBitIsBlocked cdbbo)
		)
		:effect (and
			(not (binBitIsBlocked cdbbo))
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
	(:event T4_completeItinerary_I3E
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3E) 60 )
			(itineraryIsReserved I3E)
			(trainInItinerary T4 I3E)
			(not (trainHasCompletedItinerary T4 I3E))
			(not (trainHasExitedStation T4))
		)
		:effect (and
			(trainHasCompletedItinerary T4 I3E)
		)
	)
	(:event T4_completeBinBit_I3E_cdbbg
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3E) 12 )
			(trainInItinerary T4 I3E)
			(binBitIsBlocked cdbbg)
		)
		:effect (and
			(not (binBitIsBlocked cdbbg))
		)
	)
	(:event T4_completeBinBit_I3E_cdbbj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3E) 24 )
			(trainInItinerary T4 I3E)
			(binBitIsBlocked cdbbj)
		)
		:effect (and
			(not (binBitIsBlocked cdbbj))
		)
	)
	(:event T4_completeBinBit_I3E_cdbbl
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3E) 36 )
			(trainInItinerary T4 I3E)
			(binBitIsBlocked cdbbl)
		)
		:effect (and
			(not (binBitIsBlocked cdbbl))
		)
	)
	(:event T4_completeBinBit_I3E_cdbbo
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3E) 48 )
			(trainInItinerary T4 I3E)
			(binBitIsBlocked cdbbo)
		)
		:effect (and
			(not (binBitIsBlocked cdbbo))
		)
	)
	(:event T4_completeItinerary_IW4
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 60 )
			(itineraryIsReserved IW4)
			(trainInItinerary T4 IW4)
			(not (trainHasCompletedItinerary T4 IW4))
			(not (trainHasExitedStation T4))
		)
		:effect (and
			(trainHasCompletedItinerary T4 IW4)
		)
	)
	(:event T4_completeBinBit_IW4_cdbaa
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 7 )
			(trainInItinerary T4 IW4)
			(binBitIsBlocked cdbaa)
		)
		:effect (and
			(not (binBitIsBlocked cdbaa))
		)
	)
	(:event T4_completeBinBit_IW4_cdbac
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 15 )
			(trainInItinerary T4 IW4)
			(binBitIsBlocked cdbac)
		)
		:effect (and
			(not (binBitIsBlocked cdbac))
		)
	)
	(:event T4_completeBinBit_IW4_cdbag
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 22 )
			(trainInItinerary T4 IW4)
			(binBitIsBlocked cdbag)
		)
		:effect (and
			(not (binBitIsBlocked cdbag))
		)
	)
	(:event T4_completeBinBit_IW4_cdbak
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 30 )
			(trainInItinerary T4 IW4)
			(binBitIsBlocked cdbak)
		)
		:effect (and
			(not (binBitIsBlocked cdbak))
		)
	)
	(:event T4_completeBinBit_IW4_cdban
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 37 )
			(trainInItinerary T4 IW4)
			(binBitIsBlocked cdban)
		)
		:effect (and
			(not (binBitIsBlocked cdban))
		)
	)
	(:event T4_completeBinBit_IW4_cdbas
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 45 )
			(trainInItinerary T4 IW4)
			(binBitIsBlocked cdbas)
		)
		:effect (and
			(not (binBitIsBlocked cdbas))
		)
	)
	(:event T4_completeBinBit_IW4_cdbax
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 52 )
			(trainInItinerary T4 IW4)
			(binBitIsBlocked cdbax)
		)
		:effect (and
			(not (binBitIsBlocked cdbax))
		)
	)
	(:event T4_completeItinerary_I4E
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4E) 60 )
			(itineraryIsReserved I4E)
			(trainInItinerary T4 I4E)
			(not (trainHasCompletedItinerary T4 I4E))
			(not (trainHasExitedStation T4))
		)
		:effect (and
			(trainHasCompletedItinerary T4 I4E)
		)
	)
	(:event T4_completeBinBit_I4E_cdbbh
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4E) 12 )
			(trainInItinerary T4 I4E)
			(binBitIsBlocked cdbbh)
		)
		:effect (and
			(not (binBitIsBlocked cdbbh))
		)
	)
	(:event T4_completeBinBit_I4E_cdbbk
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4E) 24 )
			(trainInItinerary T4 I4E)
			(binBitIsBlocked cdbbk)
		)
		:effect (and
			(not (binBitIsBlocked cdbbk))
		)
	)
	(:event T4_completeBinBit_I4E_cdbbm
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4E) 36 )
			(trainInItinerary T4 I4E)
			(binBitIsBlocked cdbbm)
		)
		:effect (and
			(not (binBitIsBlocked cdbbm))
		)
	)
	(:event T4_completeBinBit_I4E_cdbbo
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4E) 48 )
			(trainInItinerary T4 I4E)
			(binBitIsBlocked cdbbo)
		)
		:effect (and
			(not (binBitIsBlocked cdbbo))
		)
	)
	(:event T4_completeItinerary_IW5
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 60 )
			(itineraryIsReserved IW5)
			(trainInItinerary T4 IW5)
			(not (trainHasCompletedItinerary T4 IW5))
			(not (trainHasExitedStation T4))
		)
		:effect (and
			(trainHasCompletedItinerary T4 IW5)
		)
	)
	(:event T4_completeBinBit_IW5_cdbaa
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 7 )
			(trainInItinerary T4 IW5)
			(binBitIsBlocked cdbaa)
		)
		:effect (and
			(not (binBitIsBlocked cdbaa))
		)
	)
	(:event T4_completeBinBit_IW5_cdbac
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 15 )
			(trainInItinerary T4 IW5)
			(binBitIsBlocked cdbac)
		)
		:effect (and
			(not (binBitIsBlocked cdbac))
		)
	)
	(:event T4_completeBinBit_IW5_cdbag
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 22 )
			(trainInItinerary T4 IW5)
			(binBitIsBlocked cdbag)
		)
		:effect (and
			(not (binBitIsBlocked cdbag))
		)
	)
	(:event T4_completeBinBit_IW5_cdbak
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 30 )
			(trainInItinerary T4 IW5)
			(binBitIsBlocked cdbak)
		)
		:effect (and
			(not (binBitIsBlocked cdbak))
		)
	)
	(:event T4_completeBinBit_IW5_cdbao
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 37 )
			(trainInItinerary T4 IW5)
			(binBitIsBlocked cdbao)
		)
		:effect (and
			(not (binBitIsBlocked cdbao))
		)
	)
	(:event T4_completeBinBit_IW5_cdbat
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 45 )
			(trainInItinerary T4 IW5)
			(binBitIsBlocked cdbat)
		)
		:effect (and
			(not (binBitIsBlocked cdbat))
		)
	)
	(:event T4_completeBinBit_IW5_cdbay
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 52 )
			(trainInItinerary T4 IW5)
			(binBitIsBlocked cdbay)
		)
		:effect (and
			(not (binBitIsBlocked cdbay))
		)
	)
	(:event T4_completeItinerary_I5E
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5E) 60 )
			(itineraryIsReserved I5E)
			(trainInItinerary T4 I5E)
			(not (trainHasCompletedItinerary T4 I5E))
			(not (trainHasExitedStation T4))
		)
		:effect (and
			(trainHasCompletedItinerary T4 I5E)
		)
	)
	(:event T4_completeBinBit_I5E_cdbbi
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5E) 12 )
			(trainInItinerary T4 I5E)
			(binBitIsBlocked cdbbi)
		)
		:effect (and
			(not (binBitIsBlocked cdbbi))
		)
	)
	(:event T4_completeBinBit_I5E_cdbbk
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5E) 24 )
			(trainInItinerary T4 I5E)
			(binBitIsBlocked cdbbk)
		)
		:effect (and
			(not (binBitIsBlocked cdbbk))
		)
	)
	(:event T4_completeBinBit_I5E_cdbbm
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5E) 36 )
			(trainInItinerary T4 I5E)
			(binBitIsBlocked cdbbm)
		)
		:effect (and
			(not (binBitIsBlocked cdbbm))
		)
	)
	(:event T4_completeBinBit_I5E_cdbbo
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5E) 48 )
			(trainInItinerary T4 I5E)
			(binBitIsBlocked cdbbo)
		)
		:effect (and
			(not (binBitIsBlocked cdbbo))
		)
	)
	(:action T4_overlaps_IW1_I1E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T4 IW1)
			(trainInItinerary T4 IW1)
			(not (trainIsStopping T4))
			(not (itineraryIsReserved I1E))
			(not (flagIsBlockedDueToOverlap F1R))
			(not (binBitIsBlocked cdbbe))
			(not (binBitIsBlocked cdbbl))
			(not (binBitIsBlocked cdbbo))
			(not (binBitIsBlocked cdbbr))
		)
		:effect (and
			(itineraryIsReserved I1E)
			(trainInItinerary T4 I1E)
			(trainIsOverlapping T4)
			(flagIsBlockedDueToOverlap F1R)
			(binBitIsBlocked cdbbe)
			(binBitIsBlocked cdbbl)
			(binBitIsBlocked cdbbo)
			(binBitIsBlocked cdbbr)
		)
	)
	(:event T4_endOverlap_IW1_I1E
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F1R) 1 )
			(flagIsBlockedDueToOverlap F1R)
			(trainInItinerary T4 IW1)
			(trainInItinerary T4 I1E)
		)
		:effect (and
			(not (itineraryIsReserved IW1))
			(not (trainIsOverlapping T4))
			(assign (timeElapsedReservedItinerary IW1) 0 )
			(not (trainInItinerary T4 IW1))
			(not (flagIsBlockedDueToOverlap F1R))
			(assign (timeElapsedOverlappedFlag F1R) 0 )
			(not (binBitIsBlocked cdbaz))
		)
	)
	(:action T4_overlaps_IW2_I2E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T4 IW2)
			(trainInItinerary T4 IW2)
			(not (trainIsStopping T4))
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
			(trainInItinerary T4 I2E)
			(trainIsOverlapping T4)
			(flagIsBlockedDueToOverlap F2R)
			(binBitIsBlocked cdbbf)
			(binBitIsBlocked cdbbj)
			(binBitIsBlocked cdbbl)
			(binBitIsBlocked cdbbo)
			(binBitIsBlocked cdbbr)
		)
	)
	(:event T4_endOverlap_IW2_I2E
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F2R) 1 )
			(flagIsBlockedDueToOverlap F2R)
			(trainInItinerary T4 IW2)
			(trainInItinerary T4 I2E)
		)
		:effect (and
			(not (itineraryIsReserved IW2))
			(not (trainIsOverlapping T4))
			(assign (timeElapsedReservedItinerary IW2) 0 )
			(not (trainInItinerary T4 IW2))
			(not (flagIsBlockedDueToOverlap F2R))
			(assign (timeElapsedOverlappedFlag F2R) 0 )
			(not (binBitIsBlocked cdbba))
		)
	)
	(:action T4_overlaps_IW3_I3E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T4 IW3)
			(trainInItinerary T4 IW3)
			(not (trainIsStopping T4))
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
			(trainInItinerary T4 I3E)
			(trainIsOverlapping T4)
			(flagIsBlockedDueToOverlap F3R)
			(binBitIsBlocked cdbbg)
			(binBitIsBlocked cdbbj)
			(binBitIsBlocked cdbbl)
			(binBitIsBlocked cdbbo)
			(binBitIsBlocked cdbbr)
		)
	)
	(:event T4_endOverlap_IW3_I3E
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F3R) 1 )
			(flagIsBlockedDueToOverlap F3R)
			(trainInItinerary T4 IW3)
			(trainInItinerary T4 I3E)
		)
		:effect (and
			(not (itineraryIsReserved IW3))
			(not (trainIsOverlapping T4))
			(assign (timeElapsedReservedItinerary IW3) 0 )
			(not (trainInItinerary T4 IW3))
			(not (flagIsBlockedDueToOverlap F3R))
			(assign (timeElapsedOverlappedFlag F3R) 0 )
			(not (binBitIsBlocked cdbbb))
		)
	)
	(:action T4_overlaps_IW4_I4E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T4 IW4)
			(trainInItinerary T4 IW4)
			(not (trainIsStopping T4))
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
			(trainInItinerary T4 I4E)
			(trainIsOverlapping T4)
			(flagIsBlockedDueToOverlap F4R)
			(binBitIsBlocked cdbbh)
			(binBitIsBlocked cdbbk)
			(binBitIsBlocked cdbbm)
			(binBitIsBlocked cdbbo)
			(binBitIsBlocked cdbbr)
		)
	)
	(:event T4_endOverlap_IW4_I4E
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F4R) 1 )
			(flagIsBlockedDueToOverlap F4R)
			(trainInItinerary T4 IW4)
			(trainInItinerary T4 I4E)
		)
		:effect (and
			(not (itineraryIsReserved IW4))
			(not (trainIsOverlapping T4))
			(assign (timeElapsedReservedItinerary IW4) 0 )
			(not (trainInItinerary T4 IW4))
			(not (flagIsBlockedDueToOverlap F4R))
			(assign (timeElapsedOverlappedFlag F4R) 0 )
			(not (binBitIsBlocked cdbbc))
		)
	)
	(:action T4_overlaps_IW5_I5E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T4 IW5)
			(trainInItinerary T4 IW5)
			(not (trainIsStopping T4))
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
			(trainInItinerary T4 I5E)
			(trainIsOverlapping T4)
			(flagIsBlockedDueToOverlap F5R)
			(binBitIsBlocked cdbbi)
			(binBitIsBlocked cdbbk)
			(binBitIsBlocked cdbbm)
			(binBitIsBlocked cdbbo)
			(binBitIsBlocked cdbbr)
		)
	)
	(:event T4_endOverlap_IW5_I5E
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F5R) 1 )
			(flagIsBlockedDueToOverlap F5R)
			(trainInItinerary T4 IW5)
			(trainInItinerary T4 I5E)
		)
		:effect (and
			(not (itineraryIsReserved IW5))
			(not (trainIsOverlapping T4))
			(assign (timeElapsedReservedItinerary IW5) 0 )
			(not (trainInItinerary T4 IW5))
			(not (flagIsBlockedDueToOverlap F5R))
			(assign (timeElapsedOverlappedFlag F5R) 0 )
			(not (binBitIsBlocked cdbbd))
		)
	)
	(:event T5_arrivesAtEndpoint_W_plus
		:parameters()
		:precondition (and
			(>= time  2594 )
			(not (trainHasEnteredStation T5))
			(not (trainIsAtEndpoint T5 W_plus))
		)
		:effect (and
			(trainIsAtEndpoint T5 W_plus)
			(trainHasArrivedAtStation T5)
			(assign (trainEntryIndex T5) (trainsArrivedAtEndpoint W_plus))
			(increase (trainsArrivedAtEndpoint W_plus) 1 )
		)
	)
	(:action T5_entersStation_IW4
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T5 W_plus)
			(not (trainHasExitedStation T5))
			(not (trainHasEnteredStation T5))
			(= (trainEntryIndex T5) (trainsEnteredFromEndpoint W_plus))
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
			(not (trainIsAtEndpoint T5 W_plus))
			(itineraryIsReserved IW4)
			(not (trainEntersStationAt T5 F01))
			(trainInItinerary T5 IW4)
			(trainHasEnteredStation T5)
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
	(:event T5_completeItinerary_IW4
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 60 )
			(itineraryIsReserved IW4)
			(trainInItinerary T5 IW4)
			(not (trainHasCompletedItinerary T5 IW4))
			(not (trainHasExitedStation T5))
		)
		:effect (and
			(trainHasCompletedItinerary T5 IW4)
		)
	)
	(:event T5_completeBinBit_IW4_cdbaa
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 7 )
			(trainInItinerary T5 IW4)
			(binBitIsBlocked cdbaa)
		)
		:effect (and
			(not (binBitIsBlocked cdbaa))
		)
	)
	(:event T5_completeBinBit_IW4_cdbac
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 15 )
			(trainInItinerary T5 IW4)
			(binBitIsBlocked cdbac)
		)
		:effect (and
			(not (binBitIsBlocked cdbac))
		)
	)
	(:event T5_completeBinBit_IW4_cdbag
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 22 )
			(trainInItinerary T5 IW4)
			(binBitIsBlocked cdbag)
		)
		:effect (and
			(not (binBitIsBlocked cdbag))
		)
	)
	(:event T5_completeBinBit_IW4_cdbak
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 30 )
			(trainInItinerary T5 IW4)
			(binBitIsBlocked cdbak)
		)
		:effect (and
			(not (binBitIsBlocked cdbak))
		)
	)
	(:event T5_completeBinBit_IW4_cdban
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 37 )
			(trainInItinerary T5 IW4)
			(binBitIsBlocked cdban)
		)
		:effect (and
			(not (binBitIsBlocked cdban))
		)
	)
	(:event T5_completeBinBit_IW4_cdbas
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 45 )
			(trainInItinerary T5 IW4)
			(binBitIsBlocked cdbas)
		)
		:effect (and
			(not (binBitIsBlocked cdbas))
		)
	)
	(:event T5_completeBinBit_IW4_cdbax
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 52 )
			(trainInItinerary T5 IW4)
			(binBitIsBlocked cdbax)
		)
		:effect (and
			(not (binBitIsBlocked cdbax))
		)
	)
	(:action T5_beginStop_IW4_S_IV
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T5 IW4)
			(trainInItinerary T5 IW4)
			(not (trainIsOverlapping T5))
			(not (stopIsOccupied S_IV))
			(not (trainIsStopping T5))
			(not (trainHasStoppedAtStop T5 S_IV))
		)
		:effect (and
			(trainIsStoppingAtStop T5 S_IV)
			(trainHasReachedTheStop T5 S_IV)
			(trainHasReachedAStop T5)
			(trainIsStopping T5)
			(assign (trainStopTime T5) 0 )
			(stopIsOccupied S_IV)
			(not (itineraryIsReserved IW4))
		)
	)
	(:event T5_endStop_IW4_S_IV
		:parameters()
		:precondition (and
			(>= (trainStopTime T5) 100 )
			(trainInItinerary T5 IW4)
			(trainIsStoppingAtStop T5 S_IV)
			(stopIsOccupied S_IV)
		)
		:effect (and
			(assign (trainStopTime T5) 0 )
			(not (trainIsStoppingAtStop T5 S_IV))
			(not (trainIsStopping T5))
			(trainHasStoppedAtStop T5 S_IV)
			(trainHasStopped T5)
			(not (stopIsOccupied S_IV))
			(not (binBitIsBlocked cdbaa))
			(not (binBitIsBlocked cdbac))
			(not (binBitIsBlocked cdbag))
			(not (binBitIsBlocked cdbak))
			(not (binBitIsBlocked cdban))
			(not (binBitIsBlocked cdbas))
			(not (binBitIsBlocked cdbax))
			(not (binBitIsBlocked cdbbc))
		)
	)
	(:action T5_trainEndsVoy_IW4_S_IV
		:parameters()
		:precondition (and
			(trainInItinerary T5 IW4)
			(trainHasStopped T5)
			(trainHasStoppedAtStop T5 S_IV)
			(not (trainHasEndedVoy T5))
		)
		:effect (and
			(not (trainInItinerary T5 IW4))
			(trainHasExitedStation T5)
			(trainHasEndedVoy T5)
			(assign (timeElapsedReservedItinerary IW4) 0 )
		)
	)
	(:event T6_arrivesAtEndpoint_W_plus
		:parameters()
		:precondition (and
			(>= time  22 )
			(not (trainHasEnteredStation T6))
			(not (trainIsAtEndpoint T6 W_plus))
		)
		:effect (and
			(trainIsAtEndpoint T6 W_plus)
			(trainHasArrivedAtStation T6)
			(assign (trainEntryIndex T6) (trainsArrivedAtEndpoint W_plus))
			(increase (trainsArrivedAtEndpoint W_plus) 1 )
		)
	)
	(:action T6_entersStation_IW1
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T6 W_plus)
			(not (trainHasExitedStation T6))
			(not (trainHasEnteredStation T6))
			(= (trainEntryIndex T6) (trainsEnteredFromEndpoint W_plus))
			(not (binBitIsBlocked cdbaa))
			(not (binBitIsBlocked cdbac))
			(not (binBitIsBlocked cdbaf))
			(not (binBitIsBlocked cdbai))
			(not (binBitIsBlocked cdbap))
			(not (binBitIsBlocked cdbau))
			(not (binBitIsBlocked cdbaz))
		)
		:effect (and
			(not (trainIsAtEndpoint T6 W_plus))
			(itineraryIsReserved IW1)
			(not (trainEntersStationAt T6 F01))
			(trainInItinerary T6 IW1)
			(trainHasEnteredStation T6)
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
	(:event T6_completeItinerary_IW1
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 60 )
			(itineraryIsReserved IW1)
			(trainInItinerary T6 IW1)
			(not (trainHasCompletedItinerary T6 IW1))
			(not (trainHasExitedStation T6))
		)
		:effect (and
			(trainHasCompletedItinerary T6 IW1)
		)
	)
	(:event T6_completeBinBit_IW1_cdbaa
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 8 )
			(trainInItinerary T6 IW1)
			(binBitIsBlocked cdbaa)
		)
		:effect (and
			(not (binBitIsBlocked cdbaa))
		)
	)
	(:event T6_completeBinBit_IW1_cdbac
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 17 )
			(trainInItinerary T6 IW1)
			(binBitIsBlocked cdbac)
		)
		:effect (and
			(not (binBitIsBlocked cdbac))
		)
	)
	(:event T6_completeBinBit_IW1_cdbaf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 25 )
			(trainInItinerary T6 IW1)
			(binBitIsBlocked cdbaf)
		)
		:effect (and
			(not (binBitIsBlocked cdbaf))
		)
	)
	(:event T6_completeBinBit_IW1_cdbai
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 34 )
			(trainInItinerary T6 IW1)
			(binBitIsBlocked cdbai)
		)
		:effect (and
			(not (binBitIsBlocked cdbai))
		)
	)
	(:event T6_completeBinBit_IW1_cdbap
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 42 )
			(trainInItinerary T6 IW1)
			(binBitIsBlocked cdbap)
		)
		:effect (and
			(not (binBitIsBlocked cdbap))
		)
	)
	(:event T6_completeBinBit_IW1_cdbau
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 51 )
			(trainInItinerary T6 IW1)
			(binBitIsBlocked cdbau)
		)
		:effect (and
			(not (binBitIsBlocked cdbau))
		)
	)
	(:action T6_beginStop_IW1_S_I
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T6 IW1)
			(trainInItinerary T6 IW1)
			(not (trainIsOverlapping T6))
			(not (stopIsOccupied S_I))
			(not (trainIsStopping T6))
			(not (trainHasStoppedAtStop T6 S_I))
		)
		:effect (and
			(trainIsStoppingAtStop T6 S_I)
			(trainHasReachedTheStop T6 S_I)
			(trainHasReachedAStop T6)
			(trainIsStopping T6)
			(assign (trainStopTime T6) 0 )
			(stopIsOccupied S_I)
			(not (itineraryIsReserved IW1))
		)
	)
	(:event T6_endStop_IW1_S_I
		:parameters()
		:precondition (and
			(>= (trainStopTime T6) 100 )
			(trainInItinerary T6 IW1)
			(trainIsStoppingAtStop T6 S_I)
			(stopIsOccupied S_I)
		)
		:effect (and
			(assign (trainStopTime T6) 0 )
			(not (trainIsStoppingAtStop T6 S_I))
			(not (trainIsStopping T6))
			(trainHasStoppedAtStop T6 S_I)
			(trainHasStopped T6)
			(not (stopIsOccupied S_I))
			(not (binBitIsBlocked cdbaa))
			(not (binBitIsBlocked cdbac))
			(not (binBitIsBlocked cdbaf))
			(not (binBitIsBlocked cdbai))
			(not (binBitIsBlocked cdbap))
			(not (binBitIsBlocked cdbau))
			(not (binBitIsBlocked cdbaz))
		)
	)
	(:action T6_trainEndsVoy_IW1_S_I
		:parameters()
		:precondition (and
			(trainInItinerary T6 IW1)
			(trainHasStopped T6)
			(trainHasStoppedAtStop T6 S_I)
			(not (trainHasEndedVoy T6))
		)
		:effect (and
			(not (trainInItinerary T6 IW1))
			(trainHasExitedStation T6)
			(trainHasEndedVoy T6)
			(assign (timeElapsedReservedItinerary IW1) 0 )
		)
	)
	(:action T7_exitsStation_I1W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T7 I1W)
			(not (trainHasExitedStation T7))
		)
		:effect (and
			(not (itineraryIsReserved I1W))
			(not (trainInItinerary T7 I1W))
			(trainExitsStationAt T7 F02)
			(assign (timeElapsedReservedItinerary I1W) 0 )
			(trainHasExitedStation T7)
			(not (binBitIsBlocked cdbab))
		)
	)
	(:action T7_exitsStation_I2W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T7 I2W)
			(not (trainHasExitedStation T7))
		)
		:effect (and
			(not (itineraryIsReserved I2W))
			(not (trainInItinerary T7 I2W))
			(trainExitsStationAt T7 F02)
			(assign (timeElapsedReservedItinerary I2W) 0 )
			(trainHasExitedStation T7)
			(not (binBitIsBlocked cdbab))
		)
	)
	(:action T7_exitsStation_I3W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T7 I3W)
			(not (trainHasExitedStation T7))
		)
		:effect (and
			(not (itineraryIsReserved I3W))
			(not (trainInItinerary T7 I3W))
			(trainExitsStationAt T7 F02)
			(assign (timeElapsedReservedItinerary I3W) 0 )
			(trainHasExitedStation T7)
			(not (binBitIsBlocked cdbab))
		)
	)
	(:action T7_exitsStation_I4W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T7 I4W)
			(not (trainHasExitedStation T7))
		)
		:effect (and
			(not (itineraryIsReserved I4W))
			(not (trainInItinerary T7 I4W))
			(trainExitsStationAt T7 F02)
			(assign (timeElapsedReservedItinerary I4W) 0 )
			(trainHasExitedStation T7)
			(not (binBitIsBlocked cdbab))
		)
	)
	(:action T7_exitsStation_I5W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T7 I5W)
			(not (trainHasExitedStation T7))
		)
		:effect (and
			(not (itineraryIsReserved I5W))
			(not (trainInItinerary T7 I5W))
			(trainExitsStationAt T7 F02)
			(assign (timeElapsedReservedItinerary I5W) 0 )
			(trainHasExitedStation T7)
			(not (binBitIsBlocked cdbab))
		)
	)
	(:event T7_arrivesAtEndpoint_E_plus
		:parameters()
		:precondition (and
			(>= time  2151 )
			(not (trainHasEnteredStation T7))
			(not (trainIsAtEndpoint T7 E_plus))
		)
		:effect (and
			(trainIsAtEndpoint T7 E_plus)
			(trainHasArrivedAtStation T7)
			(assign (trainEntryIndex T7) (trainsArrivedAtEndpoint E_plus))
			(increase (trainsArrivedAtEndpoint E_plus) 1 )
		)
	)
	(:action T7_entersStation_IE1
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T7 E_plus)
			(not (trainHasExitedStation T7))
			(not (trainHasEnteredStation T7))
			(= (trainEntryIndex T7) (trainsEnteredFromEndpoint E_plus))
			(not (binBitIsBlocked cdbbs))
			(not (binBitIsBlocked cdbbp))
			(not (binBitIsBlocked cdbbl))
			(not (binBitIsBlocked cdbbe))
			(not (binBitIsBlocked cdbaz))
			(not (binBitIsBlocked cdbau))
			(not (binBitIsBlocked cdbap))
		)
		:effect (and
			(not (trainIsAtEndpoint T7 E_plus))
			(itineraryIsReserved IE1)
			(not (trainEntersStationAt T7 F04))
			(trainInItinerary T7 IE1)
			(trainHasEnteredStation T7)
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
	(:action T7_entersStation_IE2
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T7 E_plus)
			(not (trainHasExitedStation T7))
			(not (trainHasEnteredStation T7))
			(= (trainEntryIndex T7) (trainsEnteredFromEndpoint E_plus))
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
			(not (trainIsAtEndpoint T7 E_plus))
			(itineraryIsReserved IE2)
			(not (trainEntersStationAt T7 F04))
			(trainInItinerary T7 IE2)
			(trainHasEnteredStation T7)
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
	(:action T7_entersStation_IE3
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T7 E_plus)
			(not (trainHasExitedStation T7))
			(not (trainHasEnteredStation T7))
			(= (trainEntryIndex T7) (trainsEnteredFromEndpoint E_plus))
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
			(not (trainIsAtEndpoint T7 E_plus))
			(itineraryIsReserved IE3)
			(not (trainEntersStationAt T7 F04))
			(trainInItinerary T7 IE3)
			(trainHasEnteredStation T7)
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
	(:action T7_entersStation_IE4
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T7 E_plus)
			(not (trainHasExitedStation T7))
			(not (trainHasEnteredStation T7))
			(= (trainEntryIndex T7) (trainsEnteredFromEndpoint E_plus))
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
			(not (trainIsAtEndpoint T7 E_plus))
			(itineraryIsReserved IE4)
			(not (trainEntersStationAt T7 F04))
			(trainInItinerary T7 IE4)
			(trainHasEnteredStation T7)
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
	(:action T7_entersStation_IE5
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T7 E_plus)
			(not (trainHasExitedStation T7))
			(not (trainHasEnteredStation T7))
			(= (trainEntryIndex T7) (trainsEnteredFromEndpoint E_plus))
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
			(not (trainIsAtEndpoint T7 E_plus))
			(itineraryIsReserved IE5)
			(not (trainEntersStationAt T7 F04))
			(trainInItinerary T7 IE5)
			(trainHasEnteredStation T7)
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
	(:event T7_completeItinerary_IE1
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 60 )
			(itineraryIsReserved IE1)
			(trainInItinerary T7 IE1)
			(not (trainHasCompletedItinerary T7 IE1))
			(not (trainHasExitedStation T7))
		)
		:effect (and
			(trainHasCompletedItinerary T7 IE1)
		)
	)
	(:event T7_completeBinBit_IE1_cdbbs
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 8 )
			(trainInItinerary T7 IE1)
			(binBitIsBlocked cdbbs)
		)
		:effect (and
			(not (binBitIsBlocked cdbbs))
		)
	)
	(:event T7_completeBinBit_IE1_cdbbp
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 17 )
			(trainInItinerary T7 IE1)
			(binBitIsBlocked cdbbp)
		)
		:effect (and
			(not (binBitIsBlocked cdbbp))
		)
	)
	(:event T7_completeBinBit_IE1_cdbbl
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 25 )
			(trainInItinerary T7 IE1)
			(binBitIsBlocked cdbbl)
		)
		:effect (and
			(not (binBitIsBlocked cdbbl))
		)
	)
	(:event T7_completeBinBit_IE1_cdbbe
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 34 )
			(trainInItinerary T7 IE1)
			(binBitIsBlocked cdbbe)
		)
		:effect (and
			(not (binBitIsBlocked cdbbe))
		)
	)
	(:event T7_completeBinBit_IE1_cdbaz
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 42 )
			(trainInItinerary T7 IE1)
			(binBitIsBlocked cdbaz)
		)
		:effect (and
			(not (binBitIsBlocked cdbaz))
		)
	)
	(:event T7_completeBinBit_IE1_cdbau
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 51 )
			(trainInItinerary T7 IE1)
			(binBitIsBlocked cdbau)
		)
		:effect (and
			(not (binBitIsBlocked cdbau))
		)
	)
	(:event T7_completeItinerary_I1W
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1W) 60 )
			(itineraryIsReserved I1W)
			(trainInItinerary T7 I1W)
			(not (trainHasCompletedItinerary T7 I1W))
			(not (trainHasExitedStation T7))
		)
		:effect (and
			(trainHasCompletedItinerary T7 I1W)
		)
	)
	(:event T7_completeBinBit_I1W_cdbai
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1W) 15 )
			(trainInItinerary T7 I1W)
			(binBitIsBlocked cdbai)
		)
		:effect (and
			(not (binBitIsBlocked cdbai))
		)
	)
	(:event T7_completeBinBit_I1W_cdbaf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1W) 30 )
			(trainInItinerary T7 I1W)
			(binBitIsBlocked cdbaf)
		)
		:effect (and
			(not (binBitIsBlocked cdbaf))
		)
	)
	(:event T7_completeBinBit_I1W_cdbad
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1W) 45 )
			(trainInItinerary T7 I1W)
			(binBitIsBlocked cdbad)
		)
		:effect (and
			(not (binBitIsBlocked cdbad))
		)
	)
	(:event T7_completeItinerary_IE2
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 60 )
			(itineraryIsReserved IE2)
			(trainInItinerary T7 IE2)
			(not (trainHasCompletedItinerary T7 IE2))
			(not (trainHasExitedStation T7))
		)
		:effect (and
			(trainHasCompletedItinerary T7 IE2)
		)
	)
	(:event T7_completeBinBit_IE2_cdbbs
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 7 )
			(trainInItinerary T7 IE2)
			(binBitIsBlocked cdbbs)
		)
		:effect (and
			(not (binBitIsBlocked cdbbs))
		)
	)
	(:event T7_completeBinBit_IE2_cdbbp
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 15 )
			(trainInItinerary T7 IE2)
			(binBitIsBlocked cdbbp)
		)
		:effect (and
			(not (binBitIsBlocked cdbbp))
		)
	)
	(:event T7_completeBinBit_IE2_cdbbl
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 22 )
			(trainInItinerary T7 IE2)
			(binBitIsBlocked cdbbl)
		)
		:effect (and
			(not (binBitIsBlocked cdbbl))
		)
	)
	(:event T7_completeBinBit_IE2_cdbbj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 30 )
			(trainInItinerary T7 IE2)
			(binBitIsBlocked cdbbj)
		)
		:effect (and
			(not (binBitIsBlocked cdbbj))
		)
	)
	(:event T7_completeBinBit_IE2_cdbbf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 37 )
			(trainInItinerary T7 IE2)
			(binBitIsBlocked cdbbf)
		)
		:effect (and
			(not (binBitIsBlocked cdbbf))
		)
	)
	(:event T7_completeBinBit_IE2_cdbba
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 45 )
			(trainInItinerary T7 IE2)
			(binBitIsBlocked cdbba)
		)
		:effect (and
			(not (binBitIsBlocked cdbba))
		)
	)
	(:event T7_completeBinBit_IE2_cdbav
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 52 )
			(trainInItinerary T7 IE2)
			(binBitIsBlocked cdbav)
		)
		:effect (and
			(not (binBitIsBlocked cdbav))
		)
	)
	(:event T7_completeItinerary_I2W
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2W) 60 )
			(itineraryIsReserved I2W)
			(trainInItinerary T7 I2W)
			(not (trainHasCompletedItinerary T7 I2W))
			(not (trainHasExitedStation T7))
		)
		:effect (and
			(trainHasCompletedItinerary T7 I2W)
		)
	)
	(:event T7_completeBinBit_I2W_cdbal
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2W) 12 )
			(trainInItinerary T7 I2W)
			(binBitIsBlocked cdbal)
		)
		:effect (and
			(not (binBitIsBlocked cdbal))
		)
	)
	(:event T7_completeBinBit_I2W_cdbaj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2W) 24 )
			(trainInItinerary T7 I2W)
			(binBitIsBlocked cdbaj)
		)
		:effect (and
			(not (binBitIsBlocked cdbaj))
		)
	)
	(:event T7_completeBinBit_I2W_cdbaf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2W) 36 )
			(trainInItinerary T7 I2W)
			(binBitIsBlocked cdbaf)
		)
		:effect (and
			(not (binBitIsBlocked cdbaf))
		)
	)
	(:event T7_completeBinBit_I2W_cdbad
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2W) 48 )
			(trainInItinerary T7 I2W)
			(binBitIsBlocked cdbad)
		)
		:effect (and
			(not (binBitIsBlocked cdbad))
		)
	)
	(:event T7_completeItinerary_IE3
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 60 )
			(itineraryIsReserved IE3)
			(trainInItinerary T7 IE3)
			(not (trainHasCompletedItinerary T7 IE3))
			(not (trainHasExitedStation T7))
		)
		:effect (and
			(trainHasCompletedItinerary T7 IE3)
		)
	)
	(:event T7_completeBinBit_IE3_cdbbs
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 7 )
			(trainInItinerary T7 IE3)
			(binBitIsBlocked cdbbs)
		)
		:effect (and
			(not (binBitIsBlocked cdbbs))
		)
	)
	(:event T7_completeBinBit_IE3_cdbbp
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 15 )
			(trainInItinerary T7 IE3)
			(binBitIsBlocked cdbbp)
		)
		:effect (and
			(not (binBitIsBlocked cdbbp))
		)
	)
	(:event T7_completeBinBit_IE3_cdbbl
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 22 )
			(trainInItinerary T7 IE3)
			(binBitIsBlocked cdbbl)
		)
		:effect (and
			(not (binBitIsBlocked cdbbl))
		)
	)
	(:event T7_completeBinBit_IE3_cdbbj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 30 )
			(trainInItinerary T7 IE3)
			(binBitIsBlocked cdbbj)
		)
		:effect (and
			(not (binBitIsBlocked cdbbj))
		)
	)
	(:event T7_completeBinBit_IE3_cdbbg
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 37 )
			(trainInItinerary T7 IE3)
			(binBitIsBlocked cdbbg)
		)
		:effect (and
			(not (binBitIsBlocked cdbbg))
		)
	)
	(:event T7_completeBinBit_IE3_cdbbb
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 45 )
			(trainInItinerary T7 IE3)
			(binBitIsBlocked cdbbb)
		)
		:effect (and
			(not (binBitIsBlocked cdbbb))
		)
	)
	(:event T7_completeBinBit_IE3_cdbaw
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 52 )
			(trainInItinerary T7 IE3)
			(binBitIsBlocked cdbaw)
		)
		:effect (and
			(not (binBitIsBlocked cdbaw))
		)
	)
	(:event T7_completeItinerary_I3W
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3W) 60 )
			(itineraryIsReserved I3W)
			(trainInItinerary T7 I3W)
			(not (trainHasCompletedItinerary T7 I3W))
			(not (trainHasExitedStation T7))
		)
		:effect (and
			(trainHasCompletedItinerary T7 I3W)
		)
	)
	(:event T7_completeBinBit_I3W_cdbam
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3W) 12 )
			(trainInItinerary T7 I3W)
			(binBitIsBlocked cdbam)
		)
		:effect (and
			(not (binBitIsBlocked cdbam))
		)
	)
	(:event T7_completeBinBit_I3W_cdbaj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3W) 24 )
			(trainInItinerary T7 I3W)
			(binBitIsBlocked cdbaj)
		)
		:effect (and
			(not (binBitIsBlocked cdbaj))
		)
	)
	(:event T7_completeBinBit_I3W_cdbaf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3W) 36 )
			(trainInItinerary T7 I3W)
			(binBitIsBlocked cdbaf)
		)
		:effect (and
			(not (binBitIsBlocked cdbaf))
		)
	)
	(:event T7_completeBinBit_I3W_cdbad
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3W) 48 )
			(trainInItinerary T7 I3W)
			(binBitIsBlocked cdbad)
		)
		:effect (and
			(not (binBitIsBlocked cdbad))
		)
	)
	(:event T7_completeItinerary_IE4
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 60 )
			(itineraryIsReserved IE4)
			(trainInItinerary T7 IE4)
			(not (trainHasCompletedItinerary T7 IE4))
			(not (trainHasExitedStation T7))
		)
		:effect (and
			(trainHasCompletedItinerary T7 IE4)
		)
	)
	(:event T7_completeBinBit_IE4_cdbbs
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 7 )
			(trainInItinerary T7 IE4)
			(binBitIsBlocked cdbbs)
		)
		:effect (and
			(not (binBitIsBlocked cdbbs))
		)
	)
	(:event T7_completeBinBit_IE4_cdbbq
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 15 )
			(trainInItinerary T7 IE4)
			(binBitIsBlocked cdbbq)
		)
		:effect (and
			(not (binBitIsBlocked cdbbq))
		)
	)
	(:event T7_completeBinBit_IE4_cdbbn
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 22 )
			(trainInItinerary T7 IE4)
			(binBitIsBlocked cdbbn)
		)
		:effect (and
			(not (binBitIsBlocked cdbbn))
		)
	)
	(:event T7_completeBinBit_IE4_cdbbk
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 30 )
			(trainInItinerary T7 IE4)
			(binBitIsBlocked cdbbk)
		)
		:effect (and
			(not (binBitIsBlocked cdbbk))
		)
	)
	(:event T7_completeBinBit_IE4_cdbbh
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 37 )
			(trainInItinerary T7 IE4)
			(binBitIsBlocked cdbbh)
		)
		:effect (and
			(not (binBitIsBlocked cdbbh))
		)
	)
	(:event T7_completeBinBit_IE4_cdbbc
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 45 )
			(trainInItinerary T7 IE4)
			(binBitIsBlocked cdbbc)
		)
		:effect (and
			(not (binBitIsBlocked cdbbc))
		)
	)
	(:event T7_completeBinBit_IE4_cdbax
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 52 )
			(trainInItinerary T7 IE4)
			(binBitIsBlocked cdbax)
		)
		:effect (and
			(not (binBitIsBlocked cdbax))
		)
	)
	(:event T7_completeItinerary_I4W
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4W) 60 )
			(itineraryIsReserved I4W)
			(trainInItinerary T7 I4W)
			(not (trainHasCompletedItinerary T7 I4W))
			(not (trainHasExitedStation T7))
		)
		:effect (and
			(trainHasCompletedItinerary T7 I4W)
		)
	)
	(:event T7_completeBinBit_I4W_cdban
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4W) 12 )
			(trainInItinerary T7 I4W)
			(binBitIsBlocked cdban)
		)
		:effect (and
			(not (binBitIsBlocked cdban))
		)
	)
	(:event T7_completeBinBit_I4W_cdbak
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4W) 24 )
			(trainInItinerary T7 I4W)
			(binBitIsBlocked cdbak)
		)
		:effect (and
			(not (binBitIsBlocked cdbak))
		)
	)
	(:event T7_completeBinBit_I4W_cdbah
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4W) 36 )
			(trainInItinerary T7 I4W)
			(binBitIsBlocked cdbah)
		)
		:effect (and
			(not (binBitIsBlocked cdbah))
		)
	)
	(:event T7_completeBinBit_I4W_cdbae
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4W) 48 )
			(trainInItinerary T7 I4W)
			(binBitIsBlocked cdbae)
		)
		:effect (and
			(not (binBitIsBlocked cdbae))
		)
	)
	(:event T7_completeItinerary_IE5
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 60 )
			(itineraryIsReserved IE5)
			(trainInItinerary T7 IE5)
			(not (trainHasCompletedItinerary T7 IE5))
			(not (trainHasExitedStation T7))
		)
		:effect (and
			(trainHasCompletedItinerary T7 IE5)
		)
	)
	(:event T7_completeBinBit_IE5_cdbbs
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 7 )
			(trainInItinerary T7 IE5)
			(binBitIsBlocked cdbbs)
		)
		:effect (and
			(not (binBitIsBlocked cdbbs))
		)
	)
	(:event T7_completeBinBit_IE5_cdbbq
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 15 )
			(trainInItinerary T7 IE5)
			(binBitIsBlocked cdbbq)
		)
		:effect (and
			(not (binBitIsBlocked cdbbq))
		)
	)
	(:event T7_completeBinBit_IE5_cdbbn
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 22 )
			(trainInItinerary T7 IE5)
			(binBitIsBlocked cdbbn)
		)
		:effect (and
			(not (binBitIsBlocked cdbbn))
		)
	)
	(:event T7_completeBinBit_IE5_cdbbk
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 30 )
			(trainInItinerary T7 IE5)
			(binBitIsBlocked cdbbk)
		)
		:effect (and
			(not (binBitIsBlocked cdbbk))
		)
	)
	(:event T7_completeBinBit_IE5_cdbbi
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 37 )
			(trainInItinerary T7 IE5)
			(binBitIsBlocked cdbbi)
		)
		:effect (and
			(not (binBitIsBlocked cdbbi))
		)
	)
	(:event T7_completeBinBit_IE5_cdbbd
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 45 )
			(trainInItinerary T7 IE5)
			(binBitIsBlocked cdbbd)
		)
		:effect (and
			(not (binBitIsBlocked cdbbd))
		)
	)
	(:event T7_completeBinBit_IE5_cdbay
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 52 )
			(trainInItinerary T7 IE5)
			(binBitIsBlocked cdbay)
		)
		:effect (and
			(not (binBitIsBlocked cdbay))
		)
	)
	(:event T7_completeItinerary_I5W
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5W) 60 )
			(itineraryIsReserved I5W)
			(trainInItinerary T7 I5W)
			(not (trainHasCompletedItinerary T7 I5W))
			(not (trainHasExitedStation T7))
		)
		:effect (and
			(trainHasCompletedItinerary T7 I5W)
		)
	)
	(:event T7_completeBinBit_I5W_cdbao
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5W) 12 )
			(trainInItinerary T7 I5W)
			(binBitIsBlocked cdbao)
		)
		:effect (and
			(not (binBitIsBlocked cdbao))
		)
	)
	(:event T7_completeBinBit_I5W_cdbak
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5W) 24 )
			(trainInItinerary T7 I5W)
			(binBitIsBlocked cdbak)
		)
		:effect (and
			(not (binBitIsBlocked cdbak))
		)
	)
	(:event T7_completeBinBit_I5W_cdbah
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5W) 36 )
			(trainInItinerary T7 I5W)
			(binBitIsBlocked cdbah)
		)
		:effect (and
			(not (binBitIsBlocked cdbah))
		)
	)
	(:event T7_completeBinBit_I5W_cdbae
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5W) 48 )
			(trainInItinerary T7 I5W)
			(binBitIsBlocked cdbae)
		)
		:effect (and
			(not (binBitIsBlocked cdbae))
		)
	)
	(:action T7_overlaps_IE1_I1W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T7 IE1)
			(trainInItinerary T7 IE1)
			(not (trainIsStopping T7))
			(not (itineraryIsReserved I1W))
			(not (flagIsBlockedDueToOverlap F1L))
			(not (binBitIsBlocked cdbai))
			(not (binBitIsBlocked cdbaf))
			(not (binBitIsBlocked cdbad))
			(not (binBitIsBlocked cdbab))
		)
		:effect (and
			(itineraryIsReserved I1W)
			(trainInItinerary T7 I1W)
			(trainIsOverlapping T7)
			(flagIsBlockedDueToOverlap F1L)
			(binBitIsBlocked cdbai)
			(binBitIsBlocked cdbaf)
			(binBitIsBlocked cdbad)
			(binBitIsBlocked cdbab)
		)
	)
	(:event T7_endOverlap_IE1_I1W
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F1L) 1 )
			(flagIsBlockedDueToOverlap F1L)
			(trainInItinerary T7 IE1)
			(trainInItinerary T7 I1W)
		)
		:effect (and
			(not (itineraryIsReserved IE1))
			(not (trainIsOverlapping T7))
			(assign (timeElapsedReservedItinerary IE1) 0 )
			(not (trainInItinerary T7 IE1))
			(not (flagIsBlockedDueToOverlap F1L))
			(assign (timeElapsedOverlappedFlag F1L) 0 )
			(not (binBitIsBlocked cdbap))
		)
	)
	(:action T7_overlaps_IE2_I2W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T7 IE2)
			(trainInItinerary T7 IE2)
			(not (trainIsStopping T7))
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
			(trainInItinerary T7 I2W)
			(trainIsOverlapping T7)
			(flagIsBlockedDueToOverlap F2L)
			(binBitIsBlocked cdbal)
			(binBitIsBlocked cdbaj)
			(binBitIsBlocked cdbaf)
			(binBitIsBlocked cdbad)
			(binBitIsBlocked cdbab)
		)
	)
	(:event T7_endOverlap_IE2_I2W
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F2L) 1 )
			(flagIsBlockedDueToOverlap F2L)
			(trainInItinerary T7 IE2)
			(trainInItinerary T7 I2W)
		)
		:effect (and
			(not (itineraryIsReserved IE2))
			(not (trainIsOverlapping T7))
			(assign (timeElapsedReservedItinerary IE2) 0 )
			(not (trainInItinerary T7 IE2))
			(not (flagIsBlockedDueToOverlap F2L))
			(assign (timeElapsedOverlappedFlag F2L) 0 )
			(not (binBitIsBlocked cdbaq))
		)
	)
	(:action T7_overlaps_IE3_I3W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T7 IE3)
			(trainInItinerary T7 IE3)
			(not (trainIsStopping T7))
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
			(trainInItinerary T7 I3W)
			(trainIsOverlapping T7)
			(flagIsBlockedDueToOverlap F3L)
			(binBitIsBlocked cdbam)
			(binBitIsBlocked cdbaj)
			(binBitIsBlocked cdbaf)
			(binBitIsBlocked cdbad)
			(binBitIsBlocked cdbab)
		)
	)
	(:event T7_endOverlap_IE3_I3W
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F3L) 1 )
			(flagIsBlockedDueToOverlap F3L)
			(trainInItinerary T7 IE3)
			(trainInItinerary T7 I3W)
		)
		:effect (and
			(not (itineraryIsReserved IE3))
			(not (trainIsOverlapping T7))
			(assign (timeElapsedReservedItinerary IE3) 0 )
			(not (trainInItinerary T7 IE3))
			(not (flagIsBlockedDueToOverlap F3L))
			(assign (timeElapsedOverlappedFlag F3L) 0 )
			(not (binBitIsBlocked cdbar))
		)
	)
	(:action T7_overlaps_IE4_I4W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T7 IE4)
			(trainInItinerary T7 IE4)
			(not (trainIsStopping T7))
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
			(trainInItinerary T7 I4W)
			(trainIsOverlapping T7)
			(flagIsBlockedDueToOverlap F4L)
			(binBitIsBlocked cdban)
			(binBitIsBlocked cdbak)
			(binBitIsBlocked cdbah)
			(binBitIsBlocked cdbae)
			(binBitIsBlocked cdbab)
		)
	)
	(:event T7_endOverlap_IE4_I4W
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F4L) 1 )
			(flagIsBlockedDueToOverlap F4L)
			(trainInItinerary T7 IE4)
			(trainInItinerary T7 I4W)
		)
		:effect (and
			(not (itineraryIsReserved IE4))
			(not (trainIsOverlapping T7))
			(assign (timeElapsedReservedItinerary IE4) 0 )
			(not (trainInItinerary T7 IE4))
			(not (flagIsBlockedDueToOverlap F4L))
			(assign (timeElapsedOverlappedFlag F4L) 0 )
			(not (binBitIsBlocked cdbas))
		)
	)
	(:action T7_overlaps_IE5_I5W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T7 IE5)
			(trainInItinerary T7 IE5)
			(not (trainIsStopping T7))
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
			(trainInItinerary T7 I5W)
			(trainIsOverlapping T7)
			(flagIsBlockedDueToOverlap F5L)
			(binBitIsBlocked cdbao)
			(binBitIsBlocked cdbak)
			(binBitIsBlocked cdbah)
			(binBitIsBlocked cdbae)
			(binBitIsBlocked cdbab)
		)
	)
	(:event T7_endOverlap_IE5_I5W
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F5L) 1 )
			(flagIsBlockedDueToOverlap F5L)
			(trainInItinerary T7 IE5)
			(trainInItinerary T7 I5W)
		)
		:effect (and
			(not (itineraryIsReserved IE5))
			(not (trainIsOverlapping T7))
			(assign (timeElapsedReservedItinerary IE5) 0 )
			(not (trainInItinerary T7 IE5))
			(not (flagIsBlockedDueToOverlap F5L))
			(assign (timeElapsedOverlappedFlag F5L) 0 )
			(not (binBitIsBlocked cdbat))
		)
	)
	(:action T8_beginsVoy_S_III_I3E
		:parameters()
		:precondition (and
			(>= time  1606 )
			(trainIsStoppingAtStop T8 S_III)
			(not (binBitIsBlocked cdbbg))
			(not (binBitIsBlocked cdbbj))
			(not (binBitIsBlocked cdbbl))
			(not (binBitIsBlocked cdbbo))
			(not (binBitIsBlocked cdbbr))
		)
		:effect (and
			(not (trainIsStoppingAtStop T8 S_III))
			(not (trainIsStopping T8))
			(trainHasBegunVoy T8)
			(not (stopIsOccupied S_III))
			(itineraryIsReserved I3E)
			(trainInItinerary T8 I3E)
			(binBitIsBlocked cdbbg)
			(binBitIsBlocked cdbbj)
			(binBitIsBlocked cdbbl)
			(binBitIsBlocked cdbbo)
			(binBitIsBlocked cdbbr)
			(not (binBitIsBlocked cdbar))
			(not (binBitIsBlocked cdbaw))
			(not (binBitIsBlocked cdbbb))
		)
	)
	(:action T8_exitsStation_I3E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T8 I3E)
			(not (trainHasExitedStation T8))
		)
		:effect (and
			(not (itineraryIsReserved I3E))
			(not (trainInItinerary T8 I3E))
			(trainExitsStationAt T8 F03)
			(assign (timeElapsedReservedItinerary I3E) 0 )
			(trainHasExitedStation T8)
			(not (binBitIsBlocked cdbbr))
		)
	)
	(:event T8_completeItinerary_I3E
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3E) 60 )
			(itineraryIsReserved I3E)
			(trainInItinerary T8 I3E)
			(not (trainHasCompletedItinerary T8 I3E))
			(not (trainHasExitedStation T8))
		)
		:effect (and
			(trainHasCompletedItinerary T8 I3E)
		)
	)
	(:event T8_completeBinBit_I3E_cdbbg
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3E) 12 )
			(trainInItinerary T8 I3E)
			(binBitIsBlocked cdbbg)
		)
		:effect (and
			(not (binBitIsBlocked cdbbg))
		)
	)
	(:event T8_completeBinBit_I3E_cdbbj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3E) 24 )
			(trainInItinerary T8 I3E)
			(binBitIsBlocked cdbbj)
		)
		:effect (and
			(not (binBitIsBlocked cdbbj))
		)
	)
	(:event T8_completeBinBit_I3E_cdbbl
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3E) 36 )
			(trainInItinerary T8 I3E)
			(binBitIsBlocked cdbbl)
		)
		:effect (and
			(not (binBitIsBlocked cdbbl))
		)
	)
	(:event T8_completeBinBit_I3E_cdbbo
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3E) 48 )
			(trainInItinerary T8 I3E)
			(binBitIsBlocked cdbbo)
		)
		:effect (and
			(not (binBitIsBlocked cdbbo))
		)
	)
	(:action T9_exitsStation_I1W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T9 I1W)
			(not (trainHasExitedStation T9))
		)
		:effect (and
			(not (itineraryIsReserved I1W))
			(not (trainInItinerary T9 I1W))
			(trainExitsStationAt T9 F02)
			(assign (timeElapsedReservedItinerary I1W) 0 )
			(trainHasExitedStation T9)
			(not (binBitIsBlocked cdbab))
		)
	)
	(:action T9_exitsStation_I2W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T9 I2W)
			(not (trainHasExitedStation T9))
		)
		:effect (and
			(not (itineraryIsReserved I2W))
			(not (trainInItinerary T9 I2W))
			(trainExitsStationAt T9 F02)
			(assign (timeElapsedReservedItinerary I2W) 0 )
			(trainHasExitedStation T9)
			(not (binBitIsBlocked cdbab))
		)
	)
	(:action T9_exitsStation_I3W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T9 I3W)
			(not (trainHasExitedStation T9))
		)
		:effect (and
			(not (itineraryIsReserved I3W))
			(not (trainInItinerary T9 I3W))
			(trainExitsStationAt T9 F02)
			(assign (timeElapsedReservedItinerary I3W) 0 )
			(trainHasExitedStation T9)
			(not (binBitIsBlocked cdbab))
		)
	)
	(:action T9_exitsStation_I4W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T9 I4W)
			(not (trainHasExitedStation T9))
		)
		:effect (and
			(not (itineraryIsReserved I4W))
			(not (trainInItinerary T9 I4W))
			(trainExitsStationAt T9 F02)
			(assign (timeElapsedReservedItinerary I4W) 0 )
			(trainHasExitedStation T9)
			(not (binBitIsBlocked cdbab))
		)
	)
	(:action T9_exitsStation_I5W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T9 I5W)
			(not (trainHasExitedStation T9))
		)
		:effect (and
			(not (itineraryIsReserved I5W))
			(not (trainInItinerary T9 I5W))
			(trainExitsStationAt T9 F02)
			(assign (timeElapsedReservedItinerary I5W) 0 )
			(trainHasExitedStation T9)
			(not (binBitIsBlocked cdbab))
		)
	)
	(:event T9_arrivesAtEndpoint_E_plus
		:parameters()
		:precondition (and
			(>= time  3269 )
			(not (trainHasEnteredStation T9))
			(not (trainIsAtEndpoint T9 E_plus))
		)
		:effect (and
			(trainIsAtEndpoint T9 E_plus)
			(trainHasArrivedAtStation T9)
			(assign (trainEntryIndex T9) (trainsArrivedAtEndpoint E_plus))
			(increase (trainsArrivedAtEndpoint E_plus) 1 )
		)
	)
	(:action T9_entersStation_IE1
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T9 E_plus)
			(not (trainHasExitedStation T9))
			(not (trainHasEnteredStation T9))
			(= (trainEntryIndex T9) (trainsEnteredFromEndpoint E_plus))
			(not (binBitIsBlocked cdbbs))
			(not (binBitIsBlocked cdbbp))
			(not (binBitIsBlocked cdbbl))
			(not (binBitIsBlocked cdbbe))
			(not (binBitIsBlocked cdbaz))
			(not (binBitIsBlocked cdbau))
			(not (binBitIsBlocked cdbap))
		)
		:effect (and
			(not (trainIsAtEndpoint T9 E_plus))
			(itineraryIsReserved IE1)
			(not (trainEntersStationAt T9 F04))
			(trainInItinerary T9 IE1)
			(trainHasEnteredStation T9)
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
	(:action T9_entersStation_IE2
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T9 E_plus)
			(not (trainHasExitedStation T9))
			(not (trainHasEnteredStation T9))
			(= (trainEntryIndex T9) (trainsEnteredFromEndpoint E_plus))
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
			(not (trainIsAtEndpoint T9 E_plus))
			(itineraryIsReserved IE2)
			(not (trainEntersStationAt T9 F04))
			(trainInItinerary T9 IE2)
			(trainHasEnteredStation T9)
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
	(:action T9_entersStation_IE3
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T9 E_plus)
			(not (trainHasExitedStation T9))
			(not (trainHasEnteredStation T9))
			(= (trainEntryIndex T9) (trainsEnteredFromEndpoint E_plus))
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
			(not (trainIsAtEndpoint T9 E_plus))
			(itineraryIsReserved IE3)
			(not (trainEntersStationAt T9 F04))
			(trainInItinerary T9 IE3)
			(trainHasEnteredStation T9)
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
	(:action T9_entersStation_IE4
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T9 E_plus)
			(not (trainHasExitedStation T9))
			(not (trainHasEnteredStation T9))
			(= (trainEntryIndex T9) (trainsEnteredFromEndpoint E_plus))
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
			(not (trainIsAtEndpoint T9 E_plus))
			(itineraryIsReserved IE4)
			(not (trainEntersStationAt T9 F04))
			(trainInItinerary T9 IE4)
			(trainHasEnteredStation T9)
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
	(:action T9_entersStation_IE5
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T9 E_plus)
			(not (trainHasExitedStation T9))
			(not (trainHasEnteredStation T9))
			(= (trainEntryIndex T9) (trainsEnteredFromEndpoint E_plus))
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
			(not (trainIsAtEndpoint T9 E_plus))
			(itineraryIsReserved IE5)
			(not (trainEntersStationAt T9 F04))
			(trainInItinerary T9 IE5)
			(trainHasEnteredStation T9)
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
	(:event T9_completeItinerary_IE1
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 60 )
			(itineraryIsReserved IE1)
			(trainInItinerary T9 IE1)
			(not (trainHasCompletedItinerary T9 IE1))
			(not (trainHasExitedStation T9))
		)
		:effect (and
			(trainHasCompletedItinerary T9 IE1)
		)
	)
	(:event T9_completeBinBit_IE1_cdbbs
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 8 )
			(trainInItinerary T9 IE1)
			(binBitIsBlocked cdbbs)
		)
		:effect (and
			(not (binBitIsBlocked cdbbs))
		)
	)
	(:event T9_completeBinBit_IE1_cdbbp
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 17 )
			(trainInItinerary T9 IE1)
			(binBitIsBlocked cdbbp)
		)
		:effect (and
			(not (binBitIsBlocked cdbbp))
		)
	)
	(:event T9_completeBinBit_IE1_cdbbl
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 25 )
			(trainInItinerary T9 IE1)
			(binBitIsBlocked cdbbl)
		)
		:effect (and
			(not (binBitIsBlocked cdbbl))
		)
	)
	(:event T9_completeBinBit_IE1_cdbbe
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 34 )
			(trainInItinerary T9 IE1)
			(binBitIsBlocked cdbbe)
		)
		:effect (and
			(not (binBitIsBlocked cdbbe))
		)
	)
	(:event T9_completeBinBit_IE1_cdbaz
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 42 )
			(trainInItinerary T9 IE1)
			(binBitIsBlocked cdbaz)
		)
		:effect (and
			(not (binBitIsBlocked cdbaz))
		)
	)
	(:event T9_completeBinBit_IE1_cdbau
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 51 )
			(trainInItinerary T9 IE1)
			(binBitIsBlocked cdbau)
		)
		:effect (and
			(not (binBitIsBlocked cdbau))
		)
	)
	(:event T9_completeItinerary_I1W
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1W) 60 )
			(itineraryIsReserved I1W)
			(trainInItinerary T9 I1W)
			(not (trainHasCompletedItinerary T9 I1W))
			(not (trainHasExitedStation T9))
		)
		:effect (and
			(trainHasCompletedItinerary T9 I1W)
		)
	)
	(:event T9_completeBinBit_I1W_cdbai
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1W) 15 )
			(trainInItinerary T9 I1W)
			(binBitIsBlocked cdbai)
		)
		:effect (and
			(not (binBitIsBlocked cdbai))
		)
	)
	(:event T9_completeBinBit_I1W_cdbaf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1W) 30 )
			(trainInItinerary T9 I1W)
			(binBitIsBlocked cdbaf)
		)
		:effect (and
			(not (binBitIsBlocked cdbaf))
		)
	)
	(:event T9_completeBinBit_I1W_cdbad
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1W) 45 )
			(trainInItinerary T9 I1W)
			(binBitIsBlocked cdbad)
		)
		:effect (and
			(not (binBitIsBlocked cdbad))
		)
	)
	(:event T9_completeItinerary_IE2
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 60 )
			(itineraryIsReserved IE2)
			(trainInItinerary T9 IE2)
			(not (trainHasCompletedItinerary T9 IE2))
			(not (trainHasExitedStation T9))
		)
		:effect (and
			(trainHasCompletedItinerary T9 IE2)
		)
	)
	(:event T9_completeBinBit_IE2_cdbbs
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 7 )
			(trainInItinerary T9 IE2)
			(binBitIsBlocked cdbbs)
		)
		:effect (and
			(not (binBitIsBlocked cdbbs))
		)
	)
	(:event T9_completeBinBit_IE2_cdbbp
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 15 )
			(trainInItinerary T9 IE2)
			(binBitIsBlocked cdbbp)
		)
		:effect (and
			(not (binBitIsBlocked cdbbp))
		)
	)
	(:event T9_completeBinBit_IE2_cdbbl
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 22 )
			(trainInItinerary T9 IE2)
			(binBitIsBlocked cdbbl)
		)
		:effect (and
			(not (binBitIsBlocked cdbbl))
		)
	)
	(:event T9_completeBinBit_IE2_cdbbj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 30 )
			(trainInItinerary T9 IE2)
			(binBitIsBlocked cdbbj)
		)
		:effect (and
			(not (binBitIsBlocked cdbbj))
		)
	)
	(:event T9_completeBinBit_IE2_cdbbf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 37 )
			(trainInItinerary T9 IE2)
			(binBitIsBlocked cdbbf)
		)
		:effect (and
			(not (binBitIsBlocked cdbbf))
		)
	)
	(:event T9_completeBinBit_IE2_cdbba
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 45 )
			(trainInItinerary T9 IE2)
			(binBitIsBlocked cdbba)
		)
		:effect (and
			(not (binBitIsBlocked cdbba))
		)
	)
	(:event T9_completeBinBit_IE2_cdbav
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 52 )
			(trainInItinerary T9 IE2)
			(binBitIsBlocked cdbav)
		)
		:effect (and
			(not (binBitIsBlocked cdbav))
		)
	)
	(:event T9_completeItinerary_I2W
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2W) 60 )
			(itineraryIsReserved I2W)
			(trainInItinerary T9 I2W)
			(not (trainHasCompletedItinerary T9 I2W))
			(not (trainHasExitedStation T9))
		)
		:effect (and
			(trainHasCompletedItinerary T9 I2W)
		)
	)
	(:event T9_completeBinBit_I2W_cdbal
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2W) 12 )
			(trainInItinerary T9 I2W)
			(binBitIsBlocked cdbal)
		)
		:effect (and
			(not (binBitIsBlocked cdbal))
		)
	)
	(:event T9_completeBinBit_I2W_cdbaj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2W) 24 )
			(trainInItinerary T9 I2W)
			(binBitIsBlocked cdbaj)
		)
		:effect (and
			(not (binBitIsBlocked cdbaj))
		)
	)
	(:event T9_completeBinBit_I2W_cdbaf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2W) 36 )
			(trainInItinerary T9 I2W)
			(binBitIsBlocked cdbaf)
		)
		:effect (and
			(not (binBitIsBlocked cdbaf))
		)
	)
	(:event T9_completeBinBit_I2W_cdbad
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2W) 48 )
			(trainInItinerary T9 I2W)
			(binBitIsBlocked cdbad)
		)
		:effect (and
			(not (binBitIsBlocked cdbad))
		)
	)
	(:event T9_completeItinerary_IE3
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 60 )
			(itineraryIsReserved IE3)
			(trainInItinerary T9 IE3)
			(not (trainHasCompletedItinerary T9 IE3))
			(not (trainHasExitedStation T9))
		)
		:effect (and
			(trainHasCompletedItinerary T9 IE3)
		)
	)
	(:event T9_completeBinBit_IE3_cdbbs
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 7 )
			(trainInItinerary T9 IE3)
			(binBitIsBlocked cdbbs)
		)
		:effect (and
			(not (binBitIsBlocked cdbbs))
		)
	)
	(:event T9_completeBinBit_IE3_cdbbp
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 15 )
			(trainInItinerary T9 IE3)
			(binBitIsBlocked cdbbp)
		)
		:effect (and
			(not (binBitIsBlocked cdbbp))
		)
	)
	(:event T9_completeBinBit_IE3_cdbbl
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 22 )
			(trainInItinerary T9 IE3)
			(binBitIsBlocked cdbbl)
		)
		:effect (and
			(not (binBitIsBlocked cdbbl))
		)
	)
	(:event T9_completeBinBit_IE3_cdbbj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 30 )
			(trainInItinerary T9 IE3)
			(binBitIsBlocked cdbbj)
		)
		:effect (and
			(not (binBitIsBlocked cdbbj))
		)
	)
	(:event T9_completeBinBit_IE3_cdbbg
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 37 )
			(trainInItinerary T9 IE3)
			(binBitIsBlocked cdbbg)
		)
		:effect (and
			(not (binBitIsBlocked cdbbg))
		)
	)
	(:event T9_completeBinBit_IE3_cdbbb
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 45 )
			(trainInItinerary T9 IE3)
			(binBitIsBlocked cdbbb)
		)
		:effect (and
			(not (binBitIsBlocked cdbbb))
		)
	)
	(:event T9_completeBinBit_IE3_cdbaw
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 52 )
			(trainInItinerary T9 IE3)
			(binBitIsBlocked cdbaw)
		)
		:effect (and
			(not (binBitIsBlocked cdbaw))
		)
	)
	(:event T9_completeItinerary_I3W
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3W) 60 )
			(itineraryIsReserved I3W)
			(trainInItinerary T9 I3W)
			(not (trainHasCompletedItinerary T9 I3W))
			(not (trainHasExitedStation T9))
		)
		:effect (and
			(trainHasCompletedItinerary T9 I3W)
		)
	)
	(:event T9_completeBinBit_I3W_cdbam
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3W) 12 )
			(trainInItinerary T9 I3W)
			(binBitIsBlocked cdbam)
		)
		:effect (and
			(not (binBitIsBlocked cdbam))
		)
	)
	(:event T9_completeBinBit_I3W_cdbaj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3W) 24 )
			(trainInItinerary T9 I3W)
			(binBitIsBlocked cdbaj)
		)
		:effect (and
			(not (binBitIsBlocked cdbaj))
		)
	)
	(:event T9_completeBinBit_I3W_cdbaf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3W) 36 )
			(trainInItinerary T9 I3W)
			(binBitIsBlocked cdbaf)
		)
		:effect (and
			(not (binBitIsBlocked cdbaf))
		)
	)
	(:event T9_completeBinBit_I3W_cdbad
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3W) 48 )
			(trainInItinerary T9 I3W)
			(binBitIsBlocked cdbad)
		)
		:effect (and
			(not (binBitIsBlocked cdbad))
		)
	)
	(:event T9_completeItinerary_IE4
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 60 )
			(itineraryIsReserved IE4)
			(trainInItinerary T9 IE4)
			(not (trainHasCompletedItinerary T9 IE4))
			(not (trainHasExitedStation T9))
		)
		:effect (and
			(trainHasCompletedItinerary T9 IE4)
		)
	)
	(:event T9_completeBinBit_IE4_cdbbs
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 7 )
			(trainInItinerary T9 IE4)
			(binBitIsBlocked cdbbs)
		)
		:effect (and
			(not (binBitIsBlocked cdbbs))
		)
	)
	(:event T9_completeBinBit_IE4_cdbbq
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 15 )
			(trainInItinerary T9 IE4)
			(binBitIsBlocked cdbbq)
		)
		:effect (and
			(not (binBitIsBlocked cdbbq))
		)
	)
	(:event T9_completeBinBit_IE4_cdbbn
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 22 )
			(trainInItinerary T9 IE4)
			(binBitIsBlocked cdbbn)
		)
		:effect (and
			(not (binBitIsBlocked cdbbn))
		)
	)
	(:event T9_completeBinBit_IE4_cdbbk
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 30 )
			(trainInItinerary T9 IE4)
			(binBitIsBlocked cdbbk)
		)
		:effect (and
			(not (binBitIsBlocked cdbbk))
		)
	)
	(:event T9_completeBinBit_IE4_cdbbh
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 37 )
			(trainInItinerary T9 IE4)
			(binBitIsBlocked cdbbh)
		)
		:effect (and
			(not (binBitIsBlocked cdbbh))
		)
	)
	(:event T9_completeBinBit_IE4_cdbbc
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 45 )
			(trainInItinerary T9 IE4)
			(binBitIsBlocked cdbbc)
		)
		:effect (and
			(not (binBitIsBlocked cdbbc))
		)
	)
	(:event T9_completeBinBit_IE4_cdbax
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE4) 52 )
			(trainInItinerary T9 IE4)
			(binBitIsBlocked cdbax)
		)
		:effect (and
			(not (binBitIsBlocked cdbax))
		)
	)
	(:event T9_completeItinerary_I4W
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4W) 60 )
			(itineraryIsReserved I4W)
			(trainInItinerary T9 I4W)
			(not (trainHasCompletedItinerary T9 I4W))
			(not (trainHasExitedStation T9))
		)
		:effect (and
			(trainHasCompletedItinerary T9 I4W)
		)
	)
	(:event T9_completeBinBit_I4W_cdban
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4W) 12 )
			(trainInItinerary T9 I4W)
			(binBitIsBlocked cdban)
		)
		:effect (and
			(not (binBitIsBlocked cdban))
		)
	)
	(:event T9_completeBinBit_I4W_cdbak
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4W) 24 )
			(trainInItinerary T9 I4W)
			(binBitIsBlocked cdbak)
		)
		:effect (and
			(not (binBitIsBlocked cdbak))
		)
	)
	(:event T9_completeBinBit_I4W_cdbah
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4W) 36 )
			(trainInItinerary T9 I4W)
			(binBitIsBlocked cdbah)
		)
		:effect (and
			(not (binBitIsBlocked cdbah))
		)
	)
	(:event T9_completeBinBit_I4W_cdbae
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4W) 48 )
			(trainInItinerary T9 I4W)
			(binBitIsBlocked cdbae)
		)
		:effect (and
			(not (binBitIsBlocked cdbae))
		)
	)
	(:event T9_completeItinerary_IE5
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 60 )
			(itineraryIsReserved IE5)
			(trainInItinerary T9 IE5)
			(not (trainHasCompletedItinerary T9 IE5))
			(not (trainHasExitedStation T9))
		)
		:effect (and
			(trainHasCompletedItinerary T9 IE5)
		)
	)
	(:event T9_completeBinBit_IE5_cdbbs
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 7 )
			(trainInItinerary T9 IE5)
			(binBitIsBlocked cdbbs)
		)
		:effect (and
			(not (binBitIsBlocked cdbbs))
		)
	)
	(:event T9_completeBinBit_IE5_cdbbq
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 15 )
			(trainInItinerary T9 IE5)
			(binBitIsBlocked cdbbq)
		)
		:effect (and
			(not (binBitIsBlocked cdbbq))
		)
	)
	(:event T9_completeBinBit_IE5_cdbbn
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 22 )
			(trainInItinerary T9 IE5)
			(binBitIsBlocked cdbbn)
		)
		:effect (and
			(not (binBitIsBlocked cdbbn))
		)
	)
	(:event T9_completeBinBit_IE5_cdbbk
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 30 )
			(trainInItinerary T9 IE5)
			(binBitIsBlocked cdbbk)
		)
		:effect (and
			(not (binBitIsBlocked cdbbk))
		)
	)
	(:event T9_completeBinBit_IE5_cdbbi
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 37 )
			(trainInItinerary T9 IE5)
			(binBitIsBlocked cdbbi)
		)
		:effect (and
			(not (binBitIsBlocked cdbbi))
		)
	)
	(:event T9_completeBinBit_IE5_cdbbd
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 45 )
			(trainInItinerary T9 IE5)
			(binBitIsBlocked cdbbd)
		)
		:effect (and
			(not (binBitIsBlocked cdbbd))
		)
	)
	(:event T9_completeBinBit_IE5_cdbay
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 52 )
			(trainInItinerary T9 IE5)
			(binBitIsBlocked cdbay)
		)
		:effect (and
			(not (binBitIsBlocked cdbay))
		)
	)
	(:event T9_completeItinerary_I5W
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5W) 60 )
			(itineraryIsReserved I5W)
			(trainInItinerary T9 I5W)
			(not (trainHasCompletedItinerary T9 I5W))
			(not (trainHasExitedStation T9))
		)
		:effect (and
			(trainHasCompletedItinerary T9 I5W)
		)
	)
	(:event T9_completeBinBit_I5W_cdbao
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5W) 12 )
			(trainInItinerary T9 I5W)
			(binBitIsBlocked cdbao)
		)
		:effect (and
			(not (binBitIsBlocked cdbao))
		)
	)
	(:event T9_completeBinBit_I5W_cdbak
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5W) 24 )
			(trainInItinerary T9 I5W)
			(binBitIsBlocked cdbak)
		)
		:effect (and
			(not (binBitIsBlocked cdbak))
		)
	)
	(:event T9_completeBinBit_I5W_cdbah
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5W) 36 )
			(trainInItinerary T9 I5W)
			(binBitIsBlocked cdbah)
		)
		:effect (and
			(not (binBitIsBlocked cdbah))
		)
	)
	(:event T9_completeBinBit_I5W_cdbae
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5W) 48 )
			(trainInItinerary T9 I5W)
			(binBitIsBlocked cdbae)
		)
		:effect (and
			(not (binBitIsBlocked cdbae))
		)
	)
	(:action T9_overlaps_IE1_I1W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T9 IE1)
			(trainInItinerary T9 IE1)
			(not (trainIsStopping T9))
			(not (itineraryIsReserved I1W))
			(not (flagIsBlockedDueToOverlap F1L))
			(not (binBitIsBlocked cdbai))
			(not (binBitIsBlocked cdbaf))
			(not (binBitIsBlocked cdbad))
			(not (binBitIsBlocked cdbab))
		)
		:effect (and
			(itineraryIsReserved I1W)
			(trainInItinerary T9 I1W)
			(trainIsOverlapping T9)
			(flagIsBlockedDueToOverlap F1L)
			(binBitIsBlocked cdbai)
			(binBitIsBlocked cdbaf)
			(binBitIsBlocked cdbad)
			(binBitIsBlocked cdbab)
		)
	)
	(:event T9_endOverlap_IE1_I1W
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F1L) 1 )
			(flagIsBlockedDueToOverlap F1L)
			(trainInItinerary T9 IE1)
			(trainInItinerary T9 I1W)
		)
		:effect (and
			(not (itineraryIsReserved IE1))
			(not (trainIsOverlapping T9))
			(assign (timeElapsedReservedItinerary IE1) 0 )
			(not (trainInItinerary T9 IE1))
			(not (flagIsBlockedDueToOverlap F1L))
			(assign (timeElapsedOverlappedFlag F1L) 0 )
			(not (binBitIsBlocked cdbap))
		)
	)
	(:action T9_overlaps_IE2_I2W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T9 IE2)
			(trainInItinerary T9 IE2)
			(not (trainIsStopping T9))
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
			(trainInItinerary T9 I2W)
			(trainIsOverlapping T9)
			(flagIsBlockedDueToOverlap F2L)
			(binBitIsBlocked cdbal)
			(binBitIsBlocked cdbaj)
			(binBitIsBlocked cdbaf)
			(binBitIsBlocked cdbad)
			(binBitIsBlocked cdbab)
		)
	)
	(:event T9_endOverlap_IE2_I2W
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F2L) 1 )
			(flagIsBlockedDueToOverlap F2L)
			(trainInItinerary T9 IE2)
			(trainInItinerary T9 I2W)
		)
		:effect (and
			(not (itineraryIsReserved IE2))
			(not (trainIsOverlapping T9))
			(assign (timeElapsedReservedItinerary IE2) 0 )
			(not (trainInItinerary T9 IE2))
			(not (flagIsBlockedDueToOverlap F2L))
			(assign (timeElapsedOverlappedFlag F2L) 0 )
			(not (binBitIsBlocked cdbaq))
		)
	)
	(:action T9_overlaps_IE3_I3W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T9 IE3)
			(trainInItinerary T9 IE3)
			(not (trainIsStopping T9))
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
			(trainInItinerary T9 I3W)
			(trainIsOverlapping T9)
			(flagIsBlockedDueToOverlap F3L)
			(binBitIsBlocked cdbam)
			(binBitIsBlocked cdbaj)
			(binBitIsBlocked cdbaf)
			(binBitIsBlocked cdbad)
			(binBitIsBlocked cdbab)
		)
	)
	(:event T9_endOverlap_IE3_I3W
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F3L) 1 )
			(flagIsBlockedDueToOverlap F3L)
			(trainInItinerary T9 IE3)
			(trainInItinerary T9 I3W)
		)
		:effect (and
			(not (itineraryIsReserved IE3))
			(not (trainIsOverlapping T9))
			(assign (timeElapsedReservedItinerary IE3) 0 )
			(not (trainInItinerary T9 IE3))
			(not (flagIsBlockedDueToOverlap F3L))
			(assign (timeElapsedOverlappedFlag F3L) 0 )
			(not (binBitIsBlocked cdbar))
		)
	)
	(:action T9_overlaps_IE4_I4W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T9 IE4)
			(trainInItinerary T9 IE4)
			(not (trainIsStopping T9))
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
			(trainInItinerary T9 I4W)
			(trainIsOverlapping T9)
			(flagIsBlockedDueToOverlap F4L)
			(binBitIsBlocked cdban)
			(binBitIsBlocked cdbak)
			(binBitIsBlocked cdbah)
			(binBitIsBlocked cdbae)
			(binBitIsBlocked cdbab)
		)
	)
	(:event T9_endOverlap_IE4_I4W
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F4L) 1 )
			(flagIsBlockedDueToOverlap F4L)
			(trainInItinerary T9 IE4)
			(trainInItinerary T9 I4W)
		)
		:effect (and
			(not (itineraryIsReserved IE4))
			(not (trainIsOverlapping T9))
			(assign (timeElapsedReservedItinerary IE4) 0 )
			(not (trainInItinerary T9 IE4))
			(not (flagIsBlockedDueToOverlap F4L))
			(assign (timeElapsedOverlappedFlag F4L) 0 )
			(not (binBitIsBlocked cdbas))
		)
	)
	(:action T9_overlaps_IE5_I5W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T9 IE5)
			(trainInItinerary T9 IE5)
			(not (trainIsStopping T9))
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
			(trainInItinerary T9 I5W)
			(trainIsOverlapping T9)
			(flagIsBlockedDueToOverlap F5L)
			(binBitIsBlocked cdbao)
			(binBitIsBlocked cdbak)
			(binBitIsBlocked cdbah)
			(binBitIsBlocked cdbae)
			(binBitIsBlocked cdbab)
		)
	)
	(:event T9_endOverlap_IE5_I5W
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F5L) 1 )
			(flagIsBlockedDueToOverlap F5L)
			(trainInItinerary T9 IE5)
			(trainInItinerary T9 I5W)
		)
		:effect (and
			(not (itineraryIsReserved IE5))
			(not (trainIsOverlapping T9))
			(assign (timeElapsedReservedItinerary IE5) 0 )
			(not (trainInItinerary T9 IE5))
			(not (flagIsBlockedDueToOverlap F5L))
			(assign (timeElapsedOverlappedFlag F5L) 0 )
			(not (binBitIsBlocked cdbat))
		)
	)
	(:event T10_arrivesAtEndpoint_W_plus
		:parameters()
		:precondition (and
			(>= time  2204 )
			(not (trainHasEnteredStation T10))
			(not (trainIsAtEndpoint T10 W_plus))
		)
		:effect (and
			(trainIsAtEndpoint T10 W_plus)
			(trainHasArrivedAtStation T10)
			(assign (trainEntryIndex T10) (trainsArrivedAtEndpoint W_plus))
			(increase (trainsArrivedAtEndpoint W_plus) 1 )
		)
	)
	(:action T10_entersStation_IW1
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T10 W_plus)
			(not (trainHasExitedStation T10))
			(not (trainHasEnteredStation T10))
			(= (trainEntryIndex T10) (trainsEnteredFromEndpoint W_plus))
			(not (binBitIsBlocked cdbaa))
			(not (binBitIsBlocked cdbac))
			(not (binBitIsBlocked cdbaf))
			(not (binBitIsBlocked cdbai))
			(not (binBitIsBlocked cdbap))
			(not (binBitIsBlocked cdbau))
			(not (binBitIsBlocked cdbaz))
		)
		:effect (and
			(not (trainIsAtEndpoint T10 W_plus))
			(itineraryIsReserved IW1)
			(not (trainEntersStationAt T10 F01))
			(trainInItinerary T10 IW1)
			(trainHasEnteredStation T10)
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
	(:action T10_entersStation_IW2
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T10 W_plus)
			(not (trainHasExitedStation T10))
			(not (trainHasEnteredStation T10))
			(= (trainEntryIndex T10) (trainsEnteredFromEndpoint W_plus))
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
			(not (trainIsAtEndpoint T10 W_plus))
			(itineraryIsReserved IW2)
			(not (trainEntersStationAt T10 F01))
			(trainInItinerary T10 IW2)
			(trainHasEnteredStation T10)
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
	(:action T10_entersStation_IW3
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T10 W_plus)
			(not (trainHasExitedStation T10))
			(not (trainHasEnteredStation T10))
			(= (trainEntryIndex T10) (trainsEnteredFromEndpoint W_plus))
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
			(not (trainIsAtEndpoint T10 W_plus))
			(itineraryIsReserved IW3)
			(not (trainEntersStationAt T10 F01))
			(trainInItinerary T10 IW3)
			(trainHasEnteredStation T10)
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
	(:action T10_entersStation_IW4
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T10 W_plus)
			(not (trainHasExitedStation T10))
			(not (trainHasEnteredStation T10))
			(= (trainEntryIndex T10) (trainsEnteredFromEndpoint W_plus))
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
			(not (trainIsAtEndpoint T10 W_plus))
			(itineraryIsReserved IW4)
			(not (trainEntersStationAt T10 F01))
			(trainInItinerary T10 IW4)
			(trainHasEnteredStation T10)
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
	(:action T10_entersStation_IW5
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T10 W_plus)
			(not (trainHasExitedStation T10))
			(not (trainHasEnteredStation T10))
			(= (trainEntryIndex T10) (trainsEnteredFromEndpoint W_plus))
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
			(not (trainIsAtEndpoint T10 W_plus))
			(itineraryIsReserved IW5)
			(not (trainEntersStationAt T10 F01))
			(trainInItinerary T10 IW5)
			(trainHasEnteredStation T10)
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
	(:action T10_exitsStation_I1E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T10 I1E)
			(not (trainHasExitedStation T10))
		)
		:effect (and
			(not (itineraryIsReserved I1E))
			(not (trainInItinerary T10 I1E))
			(trainExitsStationAt T10 F03)
			(assign (timeElapsedReservedItinerary I1E) 0 )
			(trainHasExitedStation T10)
			(not (binBitIsBlocked cdbbr))
		)
	)
	(:action T10_exitsStation_I2E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T10 I2E)
			(not (trainHasExitedStation T10))
		)
		:effect (and
			(not (itineraryIsReserved I2E))
			(not (trainInItinerary T10 I2E))
			(trainExitsStationAt T10 F03)
			(assign (timeElapsedReservedItinerary I2E) 0 )
			(trainHasExitedStation T10)
			(not (binBitIsBlocked cdbbr))
		)
	)
	(:action T10_exitsStation_I3E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T10 I3E)
			(not (trainHasExitedStation T10))
		)
		:effect (and
			(not (itineraryIsReserved I3E))
			(not (trainInItinerary T10 I3E))
			(trainExitsStationAt T10 F03)
			(assign (timeElapsedReservedItinerary I3E) 0 )
			(trainHasExitedStation T10)
			(not (binBitIsBlocked cdbbr))
		)
	)
	(:action T10_exitsStation_I4E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T10 I4E)
			(not (trainHasExitedStation T10))
		)
		:effect (and
			(not (itineraryIsReserved I4E))
			(not (trainInItinerary T10 I4E))
			(trainExitsStationAt T10 F03)
			(assign (timeElapsedReservedItinerary I4E) 0 )
			(trainHasExitedStation T10)
			(not (binBitIsBlocked cdbbr))
		)
	)
	(:action T10_exitsStation_I5E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T10 I5E)
			(not (trainHasExitedStation T10))
		)
		:effect (and
			(not (itineraryIsReserved I5E))
			(not (trainInItinerary T10 I5E))
			(trainExitsStationAt T10 F03)
			(assign (timeElapsedReservedItinerary I5E) 0 )
			(trainHasExitedStation T10)
			(not (binBitIsBlocked cdbbr))
		)
	)
	(:event T10_completeItinerary_IW1
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 60 )
			(itineraryIsReserved IW1)
			(trainInItinerary T10 IW1)
			(not (trainHasCompletedItinerary T10 IW1))
			(not (trainHasExitedStation T10))
		)
		:effect (and
			(trainHasCompletedItinerary T10 IW1)
		)
	)
	(:event T10_completeBinBit_IW1_cdbaa
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 8 )
			(trainInItinerary T10 IW1)
			(binBitIsBlocked cdbaa)
		)
		:effect (and
			(not (binBitIsBlocked cdbaa))
		)
	)
	(:event T10_completeBinBit_IW1_cdbac
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 17 )
			(trainInItinerary T10 IW1)
			(binBitIsBlocked cdbac)
		)
		:effect (and
			(not (binBitIsBlocked cdbac))
		)
	)
	(:event T10_completeBinBit_IW1_cdbaf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 25 )
			(trainInItinerary T10 IW1)
			(binBitIsBlocked cdbaf)
		)
		:effect (and
			(not (binBitIsBlocked cdbaf))
		)
	)
	(:event T10_completeBinBit_IW1_cdbai
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 34 )
			(trainInItinerary T10 IW1)
			(binBitIsBlocked cdbai)
		)
		:effect (and
			(not (binBitIsBlocked cdbai))
		)
	)
	(:event T10_completeBinBit_IW1_cdbap
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 42 )
			(trainInItinerary T10 IW1)
			(binBitIsBlocked cdbap)
		)
		:effect (and
			(not (binBitIsBlocked cdbap))
		)
	)
	(:event T10_completeBinBit_IW1_cdbau
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 51 )
			(trainInItinerary T10 IW1)
			(binBitIsBlocked cdbau)
		)
		:effect (and
			(not (binBitIsBlocked cdbau))
		)
	)
	(:event T10_completeItinerary_I1E
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1E) 60 )
			(itineraryIsReserved I1E)
			(trainInItinerary T10 I1E)
			(not (trainHasCompletedItinerary T10 I1E))
			(not (trainHasExitedStation T10))
		)
		:effect (and
			(trainHasCompletedItinerary T10 I1E)
		)
	)
	(:event T10_completeBinBit_I1E_cdbbe
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1E) 15 )
			(trainInItinerary T10 I1E)
			(binBitIsBlocked cdbbe)
		)
		:effect (and
			(not (binBitIsBlocked cdbbe))
		)
	)
	(:event T10_completeBinBit_I1E_cdbbl
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1E) 30 )
			(trainInItinerary T10 I1E)
			(binBitIsBlocked cdbbl)
		)
		:effect (and
			(not (binBitIsBlocked cdbbl))
		)
	)
	(:event T10_completeBinBit_I1E_cdbbo
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1E) 45 )
			(trainInItinerary T10 I1E)
			(binBitIsBlocked cdbbo)
		)
		:effect (and
			(not (binBitIsBlocked cdbbo))
		)
	)
	(:event T10_completeItinerary_IW2
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 60 )
			(itineraryIsReserved IW2)
			(trainInItinerary T10 IW2)
			(not (trainHasCompletedItinerary T10 IW2))
			(not (trainHasExitedStation T10))
		)
		:effect (and
			(trainHasCompletedItinerary T10 IW2)
		)
	)
	(:event T10_completeBinBit_IW2_cdbaa
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 7 )
			(trainInItinerary T10 IW2)
			(binBitIsBlocked cdbaa)
		)
		:effect (and
			(not (binBitIsBlocked cdbaa))
		)
	)
	(:event T10_completeBinBit_IW2_cdbac
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 15 )
			(trainInItinerary T10 IW2)
			(binBitIsBlocked cdbac)
		)
		:effect (and
			(not (binBitIsBlocked cdbac))
		)
	)
	(:event T10_completeBinBit_IW2_cdbaf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 22 )
			(trainInItinerary T10 IW2)
			(binBitIsBlocked cdbaf)
		)
		:effect (and
			(not (binBitIsBlocked cdbaf))
		)
	)
	(:event T10_completeBinBit_IW2_cdbaj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 30 )
			(trainInItinerary T10 IW2)
			(binBitIsBlocked cdbaj)
		)
		:effect (and
			(not (binBitIsBlocked cdbaj))
		)
	)
	(:event T10_completeBinBit_IW2_cdbal
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 37 )
			(trainInItinerary T10 IW2)
			(binBitIsBlocked cdbal)
		)
		:effect (and
			(not (binBitIsBlocked cdbal))
		)
	)
	(:event T10_completeBinBit_IW2_cdbaq
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 45 )
			(trainInItinerary T10 IW2)
			(binBitIsBlocked cdbaq)
		)
		:effect (and
			(not (binBitIsBlocked cdbaq))
		)
	)
	(:event T10_completeBinBit_IW2_cdbav
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 52 )
			(trainInItinerary T10 IW2)
			(binBitIsBlocked cdbav)
		)
		:effect (and
			(not (binBitIsBlocked cdbav))
		)
	)
	(:event T10_completeItinerary_I2E
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2E) 60 )
			(itineraryIsReserved I2E)
			(trainInItinerary T10 I2E)
			(not (trainHasCompletedItinerary T10 I2E))
			(not (trainHasExitedStation T10))
		)
		:effect (and
			(trainHasCompletedItinerary T10 I2E)
		)
	)
	(:event T10_completeBinBit_I2E_cdbbf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2E) 12 )
			(trainInItinerary T10 I2E)
			(binBitIsBlocked cdbbf)
		)
		:effect (and
			(not (binBitIsBlocked cdbbf))
		)
	)
	(:event T10_completeBinBit_I2E_cdbbj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2E) 24 )
			(trainInItinerary T10 I2E)
			(binBitIsBlocked cdbbj)
		)
		:effect (and
			(not (binBitIsBlocked cdbbj))
		)
	)
	(:event T10_completeBinBit_I2E_cdbbl
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2E) 36 )
			(trainInItinerary T10 I2E)
			(binBitIsBlocked cdbbl)
		)
		:effect (and
			(not (binBitIsBlocked cdbbl))
		)
	)
	(:event T10_completeBinBit_I2E_cdbbo
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2E) 48 )
			(trainInItinerary T10 I2E)
			(binBitIsBlocked cdbbo)
		)
		:effect (and
			(not (binBitIsBlocked cdbbo))
		)
	)
	(:event T10_completeItinerary_IW3
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 60 )
			(itineraryIsReserved IW3)
			(trainInItinerary T10 IW3)
			(not (trainHasCompletedItinerary T10 IW3))
			(not (trainHasExitedStation T10))
		)
		:effect (and
			(trainHasCompletedItinerary T10 IW3)
		)
	)
	(:event T10_completeBinBit_IW3_cdbaa
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 7 )
			(trainInItinerary T10 IW3)
			(binBitIsBlocked cdbaa)
		)
		:effect (and
			(not (binBitIsBlocked cdbaa))
		)
	)
	(:event T10_completeBinBit_IW3_cdbac
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 15 )
			(trainInItinerary T10 IW3)
			(binBitIsBlocked cdbac)
		)
		:effect (and
			(not (binBitIsBlocked cdbac))
		)
	)
	(:event T10_completeBinBit_IW3_cdbaf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 22 )
			(trainInItinerary T10 IW3)
			(binBitIsBlocked cdbaf)
		)
		:effect (and
			(not (binBitIsBlocked cdbaf))
		)
	)
	(:event T10_completeBinBit_IW3_cdbaj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 30 )
			(trainInItinerary T10 IW3)
			(binBitIsBlocked cdbaj)
		)
		:effect (and
			(not (binBitIsBlocked cdbaj))
		)
	)
	(:event T10_completeBinBit_IW3_cdbam
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 37 )
			(trainInItinerary T10 IW3)
			(binBitIsBlocked cdbam)
		)
		:effect (and
			(not (binBitIsBlocked cdbam))
		)
	)
	(:event T10_completeBinBit_IW3_cdbar
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 45 )
			(trainInItinerary T10 IW3)
			(binBitIsBlocked cdbar)
		)
		:effect (and
			(not (binBitIsBlocked cdbar))
		)
	)
	(:event T10_completeBinBit_IW3_cdbaw
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 52 )
			(trainInItinerary T10 IW3)
			(binBitIsBlocked cdbaw)
		)
		:effect (and
			(not (binBitIsBlocked cdbaw))
		)
	)
	(:event T10_completeItinerary_I3E
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3E) 60 )
			(itineraryIsReserved I3E)
			(trainInItinerary T10 I3E)
			(not (trainHasCompletedItinerary T10 I3E))
			(not (trainHasExitedStation T10))
		)
		:effect (and
			(trainHasCompletedItinerary T10 I3E)
		)
	)
	(:event T10_completeBinBit_I3E_cdbbg
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3E) 12 )
			(trainInItinerary T10 I3E)
			(binBitIsBlocked cdbbg)
		)
		:effect (and
			(not (binBitIsBlocked cdbbg))
		)
	)
	(:event T10_completeBinBit_I3E_cdbbj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3E) 24 )
			(trainInItinerary T10 I3E)
			(binBitIsBlocked cdbbj)
		)
		:effect (and
			(not (binBitIsBlocked cdbbj))
		)
	)
	(:event T10_completeBinBit_I3E_cdbbl
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3E) 36 )
			(trainInItinerary T10 I3E)
			(binBitIsBlocked cdbbl)
		)
		:effect (and
			(not (binBitIsBlocked cdbbl))
		)
	)
	(:event T10_completeBinBit_I3E_cdbbo
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3E) 48 )
			(trainInItinerary T10 I3E)
			(binBitIsBlocked cdbbo)
		)
		:effect (and
			(not (binBitIsBlocked cdbbo))
		)
	)
	(:event T10_completeItinerary_IW4
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 60 )
			(itineraryIsReserved IW4)
			(trainInItinerary T10 IW4)
			(not (trainHasCompletedItinerary T10 IW4))
			(not (trainHasExitedStation T10))
		)
		:effect (and
			(trainHasCompletedItinerary T10 IW4)
		)
	)
	(:event T10_completeBinBit_IW4_cdbaa
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 7 )
			(trainInItinerary T10 IW4)
			(binBitIsBlocked cdbaa)
		)
		:effect (and
			(not (binBitIsBlocked cdbaa))
		)
	)
	(:event T10_completeBinBit_IW4_cdbac
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 15 )
			(trainInItinerary T10 IW4)
			(binBitIsBlocked cdbac)
		)
		:effect (and
			(not (binBitIsBlocked cdbac))
		)
	)
	(:event T10_completeBinBit_IW4_cdbag
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 22 )
			(trainInItinerary T10 IW4)
			(binBitIsBlocked cdbag)
		)
		:effect (and
			(not (binBitIsBlocked cdbag))
		)
	)
	(:event T10_completeBinBit_IW4_cdbak
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 30 )
			(trainInItinerary T10 IW4)
			(binBitIsBlocked cdbak)
		)
		:effect (and
			(not (binBitIsBlocked cdbak))
		)
	)
	(:event T10_completeBinBit_IW4_cdban
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 37 )
			(trainInItinerary T10 IW4)
			(binBitIsBlocked cdban)
		)
		:effect (and
			(not (binBitIsBlocked cdban))
		)
	)
	(:event T10_completeBinBit_IW4_cdbas
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 45 )
			(trainInItinerary T10 IW4)
			(binBitIsBlocked cdbas)
		)
		:effect (and
			(not (binBitIsBlocked cdbas))
		)
	)
	(:event T10_completeBinBit_IW4_cdbax
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 52 )
			(trainInItinerary T10 IW4)
			(binBitIsBlocked cdbax)
		)
		:effect (and
			(not (binBitIsBlocked cdbax))
		)
	)
	(:event T10_completeItinerary_I4E
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4E) 60 )
			(itineraryIsReserved I4E)
			(trainInItinerary T10 I4E)
			(not (trainHasCompletedItinerary T10 I4E))
			(not (trainHasExitedStation T10))
		)
		:effect (and
			(trainHasCompletedItinerary T10 I4E)
		)
	)
	(:event T10_completeBinBit_I4E_cdbbh
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4E) 12 )
			(trainInItinerary T10 I4E)
			(binBitIsBlocked cdbbh)
		)
		:effect (and
			(not (binBitIsBlocked cdbbh))
		)
	)
	(:event T10_completeBinBit_I4E_cdbbk
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4E) 24 )
			(trainInItinerary T10 I4E)
			(binBitIsBlocked cdbbk)
		)
		:effect (and
			(not (binBitIsBlocked cdbbk))
		)
	)
	(:event T10_completeBinBit_I4E_cdbbm
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4E) 36 )
			(trainInItinerary T10 I4E)
			(binBitIsBlocked cdbbm)
		)
		:effect (and
			(not (binBitIsBlocked cdbbm))
		)
	)
	(:event T10_completeBinBit_I4E_cdbbo
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4E) 48 )
			(trainInItinerary T10 I4E)
			(binBitIsBlocked cdbbo)
		)
		:effect (and
			(not (binBitIsBlocked cdbbo))
		)
	)
	(:event T10_completeItinerary_IW5
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 60 )
			(itineraryIsReserved IW5)
			(trainInItinerary T10 IW5)
			(not (trainHasCompletedItinerary T10 IW5))
			(not (trainHasExitedStation T10))
		)
		:effect (and
			(trainHasCompletedItinerary T10 IW5)
		)
	)
	(:event T10_completeBinBit_IW5_cdbaa
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 7 )
			(trainInItinerary T10 IW5)
			(binBitIsBlocked cdbaa)
		)
		:effect (and
			(not (binBitIsBlocked cdbaa))
		)
	)
	(:event T10_completeBinBit_IW5_cdbac
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 15 )
			(trainInItinerary T10 IW5)
			(binBitIsBlocked cdbac)
		)
		:effect (and
			(not (binBitIsBlocked cdbac))
		)
	)
	(:event T10_completeBinBit_IW5_cdbag
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 22 )
			(trainInItinerary T10 IW5)
			(binBitIsBlocked cdbag)
		)
		:effect (and
			(not (binBitIsBlocked cdbag))
		)
	)
	(:event T10_completeBinBit_IW5_cdbak
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 30 )
			(trainInItinerary T10 IW5)
			(binBitIsBlocked cdbak)
		)
		:effect (and
			(not (binBitIsBlocked cdbak))
		)
	)
	(:event T10_completeBinBit_IW5_cdbao
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 37 )
			(trainInItinerary T10 IW5)
			(binBitIsBlocked cdbao)
		)
		:effect (and
			(not (binBitIsBlocked cdbao))
		)
	)
	(:event T10_completeBinBit_IW5_cdbat
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 45 )
			(trainInItinerary T10 IW5)
			(binBitIsBlocked cdbat)
		)
		:effect (and
			(not (binBitIsBlocked cdbat))
		)
	)
	(:event T10_completeBinBit_IW5_cdbay
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 52 )
			(trainInItinerary T10 IW5)
			(binBitIsBlocked cdbay)
		)
		:effect (and
			(not (binBitIsBlocked cdbay))
		)
	)
	(:event T10_completeItinerary_I5E
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5E) 60 )
			(itineraryIsReserved I5E)
			(trainInItinerary T10 I5E)
			(not (trainHasCompletedItinerary T10 I5E))
			(not (trainHasExitedStation T10))
		)
		:effect (and
			(trainHasCompletedItinerary T10 I5E)
		)
	)
	(:event T10_completeBinBit_I5E_cdbbi
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5E) 12 )
			(trainInItinerary T10 I5E)
			(binBitIsBlocked cdbbi)
		)
		:effect (and
			(not (binBitIsBlocked cdbbi))
		)
	)
	(:event T10_completeBinBit_I5E_cdbbk
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5E) 24 )
			(trainInItinerary T10 I5E)
			(binBitIsBlocked cdbbk)
		)
		:effect (and
			(not (binBitIsBlocked cdbbk))
		)
	)
	(:event T10_completeBinBit_I5E_cdbbm
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5E) 36 )
			(trainInItinerary T10 I5E)
			(binBitIsBlocked cdbbm)
		)
		:effect (and
			(not (binBitIsBlocked cdbbm))
		)
	)
	(:event T10_completeBinBit_I5E_cdbbo
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5E) 48 )
			(trainInItinerary T10 I5E)
			(binBitIsBlocked cdbbo)
		)
		:effect (and
			(not (binBitIsBlocked cdbbo))
		)
	)
	(:action T10_overlaps_IW1_I1E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T10 IW1)
			(trainInItinerary T10 IW1)
			(not (trainIsStopping T10))
			(not (itineraryIsReserved I1E))
			(not (flagIsBlockedDueToOverlap F1R))
			(not (binBitIsBlocked cdbbe))
			(not (binBitIsBlocked cdbbl))
			(not (binBitIsBlocked cdbbo))
			(not (binBitIsBlocked cdbbr))
		)
		:effect (and
			(itineraryIsReserved I1E)
			(trainInItinerary T10 I1E)
			(trainIsOverlapping T10)
			(flagIsBlockedDueToOverlap F1R)
			(binBitIsBlocked cdbbe)
			(binBitIsBlocked cdbbl)
			(binBitIsBlocked cdbbo)
			(binBitIsBlocked cdbbr)
		)
	)
	(:event T10_endOverlap_IW1_I1E
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F1R) 1 )
			(flagIsBlockedDueToOverlap F1R)
			(trainInItinerary T10 IW1)
			(trainInItinerary T10 I1E)
		)
		:effect (and
			(not (itineraryIsReserved IW1))
			(not (trainIsOverlapping T10))
			(assign (timeElapsedReservedItinerary IW1) 0 )
			(not (trainInItinerary T10 IW1))
			(not (flagIsBlockedDueToOverlap F1R))
			(assign (timeElapsedOverlappedFlag F1R) 0 )
			(not (binBitIsBlocked cdbaz))
		)
	)
	(:action T10_overlaps_IW2_I2E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T10 IW2)
			(trainInItinerary T10 IW2)
			(not (trainIsStopping T10))
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
			(trainInItinerary T10 I2E)
			(trainIsOverlapping T10)
			(flagIsBlockedDueToOverlap F2R)
			(binBitIsBlocked cdbbf)
			(binBitIsBlocked cdbbj)
			(binBitIsBlocked cdbbl)
			(binBitIsBlocked cdbbo)
			(binBitIsBlocked cdbbr)
		)
	)
	(:event T10_endOverlap_IW2_I2E
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F2R) 1 )
			(flagIsBlockedDueToOverlap F2R)
			(trainInItinerary T10 IW2)
			(trainInItinerary T10 I2E)
		)
		:effect (and
			(not (itineraryIsReserved IW2))
			(not (trainIsOverlapping T10))
			(assign (timeElapsedReservedItinerary IW2) 0 )
			(not (trainInItinerary T10 IW2))
			(not (flagIsBlockedDueToOverlap F2R))
			(assign (timeElapsedOverlappedFlag F2R) 0 )
			(not (binBitIsBlocked cdbba))
		)
	)
	(:action T10_overlaps_IW3_I3E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T10 IW3)
			(trainInItinerary T10 IW3)
			(not (trainIsStopping T10))
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
			(trainInItinerary T10 I3E)
			(trainIsOverlapping T10)
			(flagIsBlockedDueToOverlap F3R)
			(binBitIsBlocked cdbbg)
			(binBitIsBlocked cdbbj)
			(binBitIsBlocked cdbbl)
			(binBitIsBlocked cdbbo)
			(binBitIsBlocked cdbbr)
		)
	)
	(:event T10_endOverlap_IW3_I3E
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F3R) 1 )
			(flagIsBlockedDueToOverlap F3R)
			(trainInItinerary T10 IW3)
			(trainInItinerary T10 I3E)
		)
		:effect (and
			(not (itineraryIsReserved IW3))
			(not (trainIsOverlapping T10))
			(assign (timeElapsedReservedItinerary IW3) 0 )
			(not (trainInItinerary T10 IW3))
			(not (flagIsBlockedDueToOverlap F3R))
			(assign (timeElapsedOverlappedFlag F3R) 0 )
			(not (binBitIsBlocked cdbbb))
		)
	)
	(:action T10_overlaps_IW4_I4E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T10 IW4)
			(trainInItinerary T10 IW4)
			(not (trainIsStopping T10))
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
			(trainInItinerary T10 I4E)
			(trainIsOverlapping T10)
			(flagIsBlockedDueToOverlap F4R)
			(binBitIsBlocked cdbbh)
			(binBitIsBlocked cdbbk)
			(binBitIsBlocked cdbbm)
			(binBitIsBlocked cdbbo)
			(binBitIsBlocked cdbbr)
		)
	)
	(:event T10_endOverlap_IW4_I4E
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F4R) 1 )
			(flagIsBlockedDueToOverlap F4R)
			(trainInItinerary T10 IW4)
			(trainInItinerary T10 I4E)
		)
		:effect (and
			(not (itineraryIsReserved IW4))
			(not (trainIsOverlapping T10))
			(assign (timeElapsedReservedItinerary IW4) 0 )
			(not (trainInItinerary T10 IW4))
			(not (flagIsBlockedDueToOverlap F4R))
			(assign (timeElapsedOverlappedFlag F4R) 0 )
			(not (binBitIsBlocked cdbbc))
		)
	)
	(:action T10_overlaps_IW5_I5E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T10 IW5)
			(trainInItinerary T10 IW5)
			(not (trainIsStopping T10))
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
			(trainInItinerary T10 I5E)
			(trainIsOverlapping T10)
			(flagIsBlockedDueToOverlap F5R)
			(binBitIsBlocked cdbbi)
			(binBitIsBlocked cdbbk)
			(binBitIsBlocked cdbbm)
			(binBitIsBlocked cdbbo)
			(binBitIsBlocked cdbbr)
		)
	)
	(:event T10_endOverlap_IW5_I5E
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F5R) 1 )
			(flagIsBlockedDueToOverlap F5R)
			(trainInItinerary T10 IW5)
			(trainInItinerary T10 I5E)
		)
		:effect (and
			(not (itineraryIsReserved IW5))
			(not (trainIsOverlapping T10))
			(assign (timeElapsedReservedItinerary IW5) 0 )
			(not (trainInItinerary T10 IW5))
			(not (flagIsBlockedDueToOverlap F5R))
			(assign (timeElapsedOverlappedFlag F5R) 0 )
			(not (binBitIsBlocked cdbbd))
		)
	)
	(:action T11_exitsStation_I1W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T11 I1W)
			(not (trainHasExitedStation T11))
		)
		:effect (and
			(not (itineraryIsReserved I1W))
			(not (trainInItinerary T11 I1W))
			(trainExitsStationAt T11 F02)
			(assign (timeElapsedReservedItinerary I1W) 0 )
			(trainHasExitedStation T11)
			(not (binBitIsBlocked cdbab))
		)
	)
	(:action T11_exitsStation_I2W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T11 I2W)
			(not (trainHasExitedStation T11))
		)
		:effect (and
			(not (itineraryIsReserved I2W))
			(not (trainInItinerary T11 I2W))
			(trainExitsStationAt T11 F02)
			(assign (timeElapsedReservedItinerary I2W) 0 )
			(trainHasExitedStation T11)
			(not (binBitIsBlocked cdbab))
		)
	)
	(:action T11_exitsStation_I3W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T11 I3W)
			(not (trainHasExitedStation T11))
		)
		:effect (and
			(not (itineraryIsReserved I3W))
			(not (trainInItinerary T11 I3W))
			(trainExitsStationAt T11 F02)
			(assign (timeElapsedReservedItinerary I3W) 0 )
			(trainHasExitedStation T11)
			(not (binBitIsBlocked cdbab))
		)
	)
	(:action T11_exitsStation_I4W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T11 I4W)
			(not (trainHasExitedStation T11))
		)
		:effect (and
			(not (itineraryIsReserved I4W))
			(not (trainInItinerary T11 I4W))
			(trainExitsStationAt T11 F02)
			(assign (timeElapsedReservedItinerary I4W) 0 )
			(trainHasExitedStation T11)
			(not (binBitIsBlocked cdbab))
		)
	)
	(:action T11_exitsStation_I5W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T11 I5W)
			(not (trainHasExitedStation T11))
		)
		:effect (and
			(not (itineraryIsReserved I5W))
			(not (trainInItinerary T11 I5W))
			(trainExitsStationAt T11 F02)
			(assign (timeElapsedReservedItinerary I5W) 0 )
			(trainHasExitedStation T11)
			(not (binBitIsBlocked cdbab))
		)
	)
	(:event T11_arrivesAtEndpoint_E_plus
		:parameters()
		:precondition (and
			(>= time  2871 )
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
	(:action T11_entersStation_IE1
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T11 E_plus)
			(not (trainHasExitedStation T11))
			(not (trainHasEnteredStation T11))
			(= (trainEntryIndex T11) (trainsEnteredFromEndpoint E_plus))
			(not (binBitIsBlocked cdbbs))
			(not (binBitIsBlocked cdbbp))
			(not (binBitIsBlocked cdbbl))
			(not (binBitIsBlocked cdbbe))
			(not (binBitIsBlocked cdbaz))
			(not (binBitIsBlocked cdbau))
			(not (binBitIsBlocked cdbap))
		)
		:effect (and
			(not (trainIsAtEndpoint T11 E_plus))
			(itineraryIsReserved IE1)
			(not (trainEntersStationAt T11 F04))
			(trainInItinerary T11 IE1)
			(trainHasEnteredStation T11)
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
	(:action T11_entersStation_IE2
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T11 E_plus)
			(not (trainHasExitedStation T11))
			(not (trainHasEnteredStation T11))
			(= (trainEntryIndex T11) (trainsEnteredFromEndpoint E_plus))
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
			(not (trainIsAtEndpoint T11 E_plus))
			(itineraryIsReserved IE2)
			(not (trainEntersStationAt T11 F04))
			(trainInItinerary T11 IE2)
			(trainHasEnteredStation T11)
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
	(:action T11_entersStation_IE3
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T11 E_plus)
			(not (trainHasExitedStation T11))
			(not (trainHasEnteredStation T11))
			(= (trainEntryIndex T11) (trainsEnteredFromEndpoint E_plus))
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
			(not (trainIsAtEndpoint T11 E_plus))
			(itineraryIsReserved IE3)
			(not (trainEntersStationAt T11 F04))
			(trainInItinerary T11 IE3)
			(trainHasEnteredStation T11)
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
	(:action T11_entersStation_IE5
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
			(not (binBitIsBlocked cdbbi))
			(not (binBitIsBlocked cdbbd))
			(not (binBitIsBlocked cdbay))
			(not (binBitIsBlocked cdbat))
		)
		:effect (and
			(not (trainIsAtEndpoint T11 E_plus))
			(itineraryIsReserved IE5)
			(not (trainEntersStationAt T11 F04))
			(trainInItinerary T11 IE5)
			(trainHasEnteredStation T11)
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
	(:event T11_completeItinerary_IE1
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 60 )
			(itineraryIsReserved IE1)
			(trainInItinerary T11 IE1)
			(not (trainHasCompletedItinerary T11 IE1))
			(not (trainHasExitedStation T11))
		)
		:effect (and
			(trainHasCompletedItinerary T11 IE1)
		)
	)
	(:event T11_completeBinBit_IE1_cdbbs
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 8 )
			(trainInItinerary T11 IE1)
			(binBitIsBlocked cdbbs)
		)
		:effect (and
			(not (binBitIsBlocked cdbbs))
		)
	)
	(:event T11_completeBinBit_IE1_cdbbp
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 17 )
			(trainInItinerary T11 IE1)
			(binBitIsBlocked cdbbp)
		)
		:effect (and
			(not (binBitIsBlocked cdbbp))
		)
	)
	(:event T11_completeBinBit_IE1_cdbbl
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 25 )
			(trainInItinerary T11 IE1)
			(binBitIsBlocked cdbbl)
		)
		:effect (and
			(not (binBitIsBlocked cdbbl))
		)
	)
	(:event T11_completeBinBit_IE1_cdbbe
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 34 )
			(trainInItinerary T11 IE1)
			(binBitIsBlocked cdbbe)
		)
		:effect (and
			(not (binBitIsBlocked cdbbe))
		)
	)
	(:event T11_completeBinBit_IE1_cdbaz
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 42 )
			(trainInItinerary T11 IE1)
			(binBitIsBlocked cdbaz)
		)
		:effect (and
			(not (binBitIsBlocked cdbaz))
		)
	)
	(:event T11_completeBinBit_IE1_cdbau
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 51 )
			(trainInItinerary T11 IE1)
			(binBitIsBlocked cdbau)
		)
		:effect (and
			(not (binBitIsBlocked cdbau))
		)
	)
	(:action T11_beginStop_IE1_S_I
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T11 IE1)
			(trainInItinerary T11 IE1)
			(not (trainIsOverlapping T11))
			(not (stopIsOccupied S_I))
			(not (trainIsStopping T11))
			(not (trainHasStoppedAtStop T11 S_I))
		)
		:effect (and
			(trainIsStoppingAtStop T11 S_I)
			(trainHasReachedTheStop T11 S_I)
			(trainHasReachedAStop T11)
			(trainIsStopping T11)
			(assign (trainStopTime T11) 0 )
			(stopIsOccupied S_I)
			(not (itineraryIsReserved IE1))
		)
	)
	(:event T11_endStop_IE1_S_I
		:parameters()
		:precondition (and
			(>= (trainStopTime T11) 100 )
			(trainInItinerary T11 IE1)
			(trainIsStoppingAtStop T11 S_I)
			(stopIsOccupied S_I)
		)
		:effect (and
			(assign (trainStopTime T11) 0 )
			(not (trainIsStoppingAtStop T11 S_I))
			(not (trainIsStopping T11))
			(trainHasStoppedAtStop T11 S_I)
			(trainHasStopped T11)
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
	(:event T11_completeItinerary_I1W
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1W) 60 )
			(itineraryIsReserved I1W)
			(trainInItinerary T11 I1W)
			(not (trainHasCompletedItinerary T11 I1W))
			(not (trainHasExitedStation T11))
		)
		:effect (and
			(trainHasCompletedItinerary T11 I1W)
		)
	)
	(:event T11_completeBinBit_I1W_cdbai
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1W) 15 )
			(trainInItinerary T11 I1W)
			(binBitIsBlocked cdbai)
		)
		:effect (and
			(not (binBitIsBlocked cdbai))
		)
	)
	(:event T11_completeBinBit_I1W_cdbaf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1W) 30 )
			(trainInItinerary T11 I1W)
			(binBitIsBlocked cdbaf)
		)
		:effect (and
			(not (binBitIsBlocked cdbaf))
		)
	)
	(:event T11_completeBinBit_I1W_cdbad
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1W) 45 )
			(trainInItinerary T11 I1W)
			(binBitIsBlocked cdbad)
		)
		:effect (and
			(not (binBitIsBlocked cdbad))
		)
	)
	(:event T11_completeItinerary_IE2
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 60 )
			(itineraryIsReserved IE2)
			(trainInItinerary T11 IE2)
			(not (trainHasCompletedItinerary T11 IE2))
			(not (trainHasExitedStation T11))
		)
		:effect (and
			(trainHasCompletedItinerary T11 IE2)
		)
	)
	(:event T11_completeBinBit_IE2_cdbbs
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 7 )
			(trainInItinerary T11 IE2)
			(binBitIsBlocked cdbbs)
		)
		:effect (and
			(not (binBitIsBlocked cdbbs))
		)
	)
	(:event T11_completeBinBit_IE2_cdbbp
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 15 )
			(trainInItinerary T11 IE2)
			(binBitIsBlocked cdbbp)
		)
		:effect (and
			(not (binBitIsBlocked cdbbp))
		)
	)
	(:event T11_completeBinBit_IE2_cdbbl
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 22 )
			(trainInItinerary T11 IE2)
			(binBitIsBlocked cdbbl)
		)
		:effect (and
			(not (binBitIsBlocked cdbbl))
		)
	)
	(:event T11_completeBinBit_IE2_cdbbj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 30 )
			(trainInItinerary T11 IE2)
			(binBitIsBlocked cdbbj)
		)
		:effect (and
			(not (binBitIsBlocked cdbbj))
		)
	)
	(:event T11_completeBinBit_IE2_cdbbf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 37 )
			(trainInItinerary T11 IE2)
			(binBitIsBlocked cdbbf)
		)
		:effect (and
			(not (binBitIsBlocked cdbbf))
		)
	)
	(:event T11_completeBinBit_IE2_cdbba
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 45 )
			(trainInItinerary T11 IE2)
			(binBitIsBlocked cdbba)
		)
		:effect (and
			(not (binBitIsBlocked cdbba))
		)
	)
	(:event T11_completeBinBit_IE2_cdbav
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 52 )
			(trainInItinerary T11 IE2)
			(binBitIsBlocked cdbav)
		)
		:effect (and
			(not (binBitIsBlocked cdbav))
		)
	)
	(:action T11_beginStop_IE2_S_II
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T11 IE2)
			(trainInItinerary T11 IE2)
			(not (trainIsOverlapping T11))
			(not (stopIsOccupied S_II))
			(not (trainIsStopping T11))
			(not (trainHasStoppedAtStop T11 S_II))
		)
		:effect (and
			(trainIsStoppingAtStop T11 S_II)
			(trainHasReachedTheStop T11 S_II)
			(trainHasReachedAStop T11)
			(trainIsStopping T11)
			(assign (trainStopTime T11) 0 )
			(stopIsOccupied S_II)
			(not (itineraryIsReserved IE2))
		)
	)
	(:event T11_endStop_IE2_S_II
		:parameters()
		:precondition (and
			(>= (trainStopTime T11) 100 )
			(trainInItinerary T11 IE2)
			(trainIsStoppingAtStop T11 S_II)
			(stopIsOccupied S_II)
		)
		:effect (and
			(assign (trainStopTime T11) 0 )
			(not (trainIsStoppingAtStop T11 S_II))
			(not (trainIsStopping T11))
			(trainHasStoppedAtStop T11 S_II)
			(trainHasStopped T11)
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
	(:event T11_completeItinerary_I2W
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2W) 60 )
			(itineraryIsReserved I2W)
			(trainInItinerary T11 I2W)
			(not (trainHasCompletedItinerary T11 I2W))
			(not (trainHasExitedStation T11))
		)
		:effect (and
			(trainHasCompletedItinerary T11 I2W)
		)
	)
	(:event T11_completeBinBit_I2W_cdbal
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2W) 12 )
			(trainInItinerary T11 I2W)
			(binBitIsBlocked cdbal)
		)
		:effect (and
			(not (binBitIsBlocked cdbal))
		)
	)
	(:event T11_completeBinBit_I2W_cdbaj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2W) 24 )
			(trainInItinerary T11 I2W)
			(binBitIsBlocked cdbaj)
		)
		:effect (and
			(not (binBitIsBlocked cdbaj))
		)
	)
	(:event T11_completeBinBit_I2W_cdbaf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2W) 36 )
			(trainInItinerary T11 I2W)
			(binBitIsBlocked cdbaf)
		)
		:effect (and
			(not (binBitIsBlocked cdbaf))
		)
	)
	(:event T11_completeBinBit_I2W_cdbad
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2W) 48 )
			(trainInItinerary T11 I2W)
			(binBitIsBlocked cdbad)
		)
		:effect (and
			(not (binBitIsBlocked cdbad))
		)
	)
	(:event T11_completeItinerary_IE3
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 60 )
			(itineraryIsReserved IE3)
			(trainInItinerary T11 IE3)
			(not (trainHasCompletedItinerary T11 IE3))
			(not (trainHasExitedStation T11))
		)
		:effect (and
			(trainHasCompletedItinerary T11 IE3)
		)
	)
	(:event T11_completeBinBit_IE3_cdbbs
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 7 )
			(trainInItinerary T11 IE3)
			(binBitIsBlocked cdbbs)
		)
		:effect (and
			(not (binBitIsBlocked cdbbs))
		)
	)
	(:event T11_completeBinBit_IE3_cdbbp
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 15 )
			(trainInItinerary T11 IE3)
			(binBitIsBlocked cdbbp)
		)
		:effect (and
			(not (binBitIsBlocked cdbbp))
		)
	)
	(:event T11_completeBinBit_IE3_cdbbl
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 22 )
			(trainInItinerary T11 IE3)
			(binBitIsBlocked cdbbl)
		)
		:effect (and
			(not (binBitIsBlocked cdbbl))
		)
	)
	(:event T11_completeBinBit_IE3_cdbbj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 30 )
			(trainInItinerary T11 IE3)
			(binBitIsBlocked cdbbj)
		)
		:effect (and
			(not (binBitIsBlocked cdbbj))
		)
	)
	(:event T11_completeBinBit_IE3_cdbbg
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 37 )
			(trainInItinerary T11 IE3)
			(binBitIsBlocked cdbbg)
		)
		:effect (and
			(not (binBitIsBlocked cdbbg))
		)
	)
	(:event T11_completeBinBit_IE3_cdbbb
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 45 )
			(trainInItinerary T11 IE3)
			(binBitIsBlocked cdbbb)
		)
		:effect (and
			(not (binBitIsBlocked cdbbb))
		)
	)
	(:event T11_completeBinBit_IE3_cdbaw
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE3) 52 )
			(trainInItinerary T11 IE3)
			(binBitIsBlocked cdbaw)
		)
		:effect (and
			(not (binBitIsBlocked cdbaw))
		)
	)
	(:action T11_beginStop_IE3_S_III
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T11 IE3)
			(trainInItinerary T11 IE3)
			(not (trainIsOverlapping T11))
			(not (stopIsOccupied S_III))
			(not (trainIsStopping T11))
			(not (trainHasStoppedAtStop T11 S_III))
		)
		:effect (and
			(trainIsStoppingAtStop T11 S_III)
			(trainHasReachedTheStop T11 S_III)
			(trainHasReachedAStop T11)
			(trainIsStopping T11)
			(assign (trainStopTime T11) 0 )
			(stopIsOccupied S_III)
			(not (itineraryIsReserved IE3))
		)
	)
	(:event T11_endStop_IE3_S_III
		:parameters()
		:precondition (and
			(>= (trainStopTime T11) 100 )
			(trainInItinerary T11 IE3)
			(trainIsStoppingAtStop T11 S_III)
			(stopIsOccupied S_III)
		)
		:effect (and
			(assign (trainStopTime T11) 0 )
			(not (trainIsStoppingAtStop T11 S_III))
			(not (trainIsStopping T11))
			(trainHasStoppedAtStop T11 S_III)
			(trainHasStopped T11)
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
	(:event T11_completeItinerary_I3W
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3W) 60 )
			(itineraryIsReserved I3W)
			(trainInItinerary T11 I3W)
			(not (trainHasCompletedItinerary T11 I3W))
			(not (trainHasExitedStation T11))
		)
		:effect (and
			(trainHasCompletedItinerary T11 I3W)
		)
	)
	(:event T11_completeBinBit_I3W_cdbam
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3W) 12 )
			(trainInItinerary T11 I3W)
			(binBitIsBlocked cdbam)
		)
		:effect (and
			(not (binBitIsBlocked cdbam))
		)
	)
	(:event T11_completeBinBit_I3W_cdbaj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3W) 24 )
			(trainInItinerary T11 I3W)
			(binBitIsBlocked cdbaj)
		)
		:effect (and
			(not (binBitIsBlocked cdbaj))
		)
	)
	(:event T11_completeBinBit_I3W_cdbaf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3W) 36 )
			(trainInItinerary T11 I3W)
			(binBitIsBlocked cdbaf)
		)
		:effect (and
			(not (binBitIsBlocked cdbaf))
		)
	)
	(:event T11_completeBinBit_I3W_cdbad
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3W) 48 )
			(trainInItinerary T11 I3W)
			(binBitIsBlocked cdbad)
		)
		:effect (and
			(not (binBitIsBlocked cdbad))
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
	(:event T11_completeItinerary_I4W
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4W) 60 )
			(itineraryIsReserved I4W)
			(trainInItinerary T11 I4W)
			(not (trainHasCompletedItinerary T11 I4W))
			(not (trainHasExitedStation T11))
		)
		:effect (and
			(trainHasCompletedItinerary T11 I4W)
		)
	)
	(:event T11_completeBinBit_I4W_cdban
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4W) 12 )
			(trainInItinerary T11 I4W)
			(binBitIsBlocked cdban)
		)
		:effect (and
			(not (binBitIsBlocked cdban))
		)
	)
	(:event T11_completeBinBit_I4W_cdbak
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4W) 24 )
			(trainInItinerary T11 I4W)
			(binBitIsBlocked cdbak)
		)
		:effect (and
			(not (binBitIsBlocked cdbak))
		)
	)
	(:event T11_completeBinBit_I4W_cdbah
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4W) 36 )
			(trainInItinerary T11 I4W)
			(binBitIsBlocked cdbah)
		)
		:effect (and
			(not (binBitIsBlocked cdbah))
		)
	)
	(:event T11_completeBinBit_I4W_cdbae
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4W) 48 )
			(trainInItinerary T11 I4W)
			(binBitIsBlocked cdbae)
		)
		:effect (and
			(not (binBitIsBlocked cdbae))
		)
	)
	(:event T11_completeItinerary_IE5
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 60 )
			(itineraryIsReserved IE5)
			(trainInItinerary T11 IE5)
			(not (trainHasCompletedItinerary T11 IE5))
			(not (trainHasExitedStation T11))
		)
		:effect (and
			(trainHasCompletedItinerary T11 IE5)
		)
	)
	(:event T11_completeBinBit_IE5_cdbbs
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 7 )
			(trainInItinerary T11 IE5)
			(binBitIsBlocked cdbbs)
		)
		:effect (and
			(not (binBitIsBlocked cdbbs))
		)
	)
	(:event T11_completeBinBit_IE5_cdbbq
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 15 )
			(trainInItinerary T11 IE5)
			(binBitIsBlocked cdbbq)
		)
		:effect (and
			(not (binBitIsBlocked cdbbq))
		)
	)
	(:event T11_completeBinBit_IE5_cdbbn
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 22 )
			(trainInItinerary T11 IE5)
			(binBitIsBlocked cdbbn)
		)
		:effect (and
			(not (binBitIsBlocked cdbbn))
		)
	)
	(:event T11_completeBinBit_IE5_cdbbk
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 30 )
			(trainInItinerary T11 IE5)
			(binBitIsBlocked cdbbk)
		)
		:effect (and
			(not (binBitIsBlocked cdbbk))
		)
	)
	(:event T11_completeBinBit_IE5_cdbbi
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 37 )
			(trainInItinerary T11 IE5)
			(binBitIsBlocked cdbbi)
		)
		:effect (and
			(not (binBitIsBlocked cdbbi))
		)
	)
	(:event T11_completeBinBit_IE5_cdbbd
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 45 )
			(trainInItinerary T11 IE5)
			(binBitIsBlocked cdbbd)
		)
		:effect (and
			(not (binBitIsBlocked cdbbd))
		)
	)
	(:event T11_completeBinBit_IE5_cdbay
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE5) 52 )
			(trainInItinerary T11 IE5)
			(binBitIsBlocked cdbay)
		)
		:effect (and
			(not (binBitIsBlocked cdbay))
		)
	)
	(:action T11_beginStop_IE5_S_V
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T11 IE5)
			(trainInItinerary T11 IE5)
			(not (trainIsOverlapping T11))
			(not (stopIsOccupied S_V))
			(not (trainIsStopping T11))
			(not (trainHasStoppedAtStop T11 S_V))
		)
		:effect (and
			(trainIsStoppingAtStop T11 S_V)
			(trainHasReachedTheStop T11 S_V)
			(trainHasReachedAStop T11)
			(trainIsStopping T11)
			(assign (trainStopTime T11) 0 )
			(stopIsOccupied S_V)
			(not (itineraryIsReserved IE5))
		)
	)
	(:event T11_endStop_IE5_S_V
		:parameters()
		:precondition (and
			(>= (trainStopTime T11) 100 )
			(trainInItinerary T11 IE5)
			(trainIsStoppingAtStop T11 S_V)
			(stopIsOccupied S_V)
		)
		:effect (and
			(assign (trainStopTime T11) 0 )
			(not (trainIsStoppingAtStop T11 S_V))
			(not (trainIsStopping T11))
			(trainHasStoppedAtStop T11 S_V)
			(trainHasStopped T11)
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
	(:event T11_completeItinerary_I5W
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5W) 60 )
			(itineraryIsReserved I5W)
			(trainInItinerary T11 I5W)
			(not (trainHasCompletedItinerary T11 I5W))
			(not (trainHasExitedStation T11))
		)
		:effect (and
			(trainHasCompletedItinerary T11 I5W)
		)
	)
	(:event T11_completeBinBit_I5W_cdbao
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5W) 12 )
			(trainInItinerary T11 I5W)
			(binBitIsBlocked cdbao)
		)
		:effect (and
			(not (binBitIsBlocked cdbao))
		)
	)
	(:event T11_completeBinBit_I5W_cdbak
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5W) 24 )
			(trainInItinerary T11 I5W)
			(binBitIsBlocked cdbak)
		)
		:effect (and
			(not (binBitIsBlocked cdbak))
		)
	)
	(:event T11_completeBinBit_I5W_cdbah
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5W) 36 )
			(trainInItinerary T11 I5W)
			(binBitIsBlocked cdbah)
		)
		:effect (and
			(not (binBitIsBlocked cdbah))
		)
	)
	(:event T11_completeBinBit_I5W_cdbae
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5W) 48 )
			(trainInItinerary T11 I5W)
			(binBitIsBlocked cdbae)
		)
		:effect (and
			(not (binBitIsBlocked cdbae))
		)
	)
	(:action T11_overlaps_IE1_I1W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T11 IE1)
			(trainInItinerary T11 IE1)
			(not (trainIsStopping T11))
			(not (itineraryIsReserved I1W))
			(not (flagIsBlockedDueToOverlap F1L))
			(not (binBitIsBlocked cdbai))
			(not (binBitIsBlocked cdbaf))
			(not (binBitIsBlocked cdbad))
			(not (binBitIsBlocked cdbab))
			(trainHasStopped T11)
		)
		:effect (and
			(itineraryIsReserved I1W)
			(trainInItinerary T11 I1W)
			(trainIsOverlapping T11)
			(flagIsBlockedDueToOverlap F1L)
			(binBitIsBlocked cdbai)
			(binBitIsBlocked cdbaf)
			(binBitIsBlocked cdbad)
			(binBitIsBlocked cdbab)
		)
	)
	(:event T11_endOverlap_IE1_I1W
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F1L) 1 )
			(flagIsBlockedDueToOverlap F1L)
			(trainInItinerary T11 IE1)
			(trainInItinerary T11 I1W)
		)
		:effect (and
			(not (itineraryIsReserved IE1))
			(not (trainIsOverlapping T11))
			(assign (timeElapsedReservedItinerary IE1) 0 )
			(not (trainInItinerary T11 IE1))
			(not (flagIsBlockedDueToOverlap F1L))
			(assign (timeElapsedOverlappedFlag F1L) 0 )
			(not (binBitIsBlocked cdbap))
		)
	)
	(:action T11_overlaps_IE2_I2W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T11 IE2)
			(trainInItinerary T11 IE2)
			(not (trainIsStopping T11))
			(not (itineraryIsReserved I2W))
			(not (flagIsBlockedDueToOverlap F2L))
			(not (binBitIsBlocked cdbal))
			(not (binBitIsBlocked cdbaj))
			(not (binBitIsBlocked cdbaf))
			(not (binBitIsBlocked cdbad))
			(not (binBitIsBlocked cdbab))
			(trainHasStopped T11)
		)
		:effect (and
			(itineraryIsReserved I2W)
			(trainInItinerary T11 I2W)
			(trainIsOverlapping T11)
			(flagIsBlockedDueToOverlap F2L)
			(binBitIsBlocked cdbal)
			(binBitIsBlocked cdbaj)
			(binBitIsBlocked cdbaf)
			(binBitIsBlocked cdbad)
			(binBitIsBlocked cdbab)
		)
	)
	(:event T11_endOverlap_IE2_I2W
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F2L) 1 )
			(flagIsBlockedDueToOverlap F2L)
			(trainInItinerary T11 IE2)
			(trainInItinerary T11 I2W)
		)
		:effect (and
			(not (itineraryIsReserved IE2))
			(not (trainIsOverlapping T11))
			(assign (timeElapsedReservedItinerary IE2) 0 )
			(not (trainInItinerary T11 IE2))
			(not (flagIsBlockedDueToOverlap F2L))
			(assign (timeElapsedOverlappedFlag F2L) 0 )
			(not (binBitIsBlocked cdbaq))
		)
	)
	(:action T11_overlaps_IE3_I3W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T11 IE3)
			(trainInItinerary T11 IE3)
			(not (trainIsStopping T11))
			(not (itineraryIsReserved I3W))
			(not (flagIsBlockedDueToOverlap F3L))
			(not (binBitIsBlocked cdbam))
			(not (binBitIsBlocked cdbaj))
			(not (binBitIsBlocked cdbaf))
			(not (binBitIsBlocked cdbad))
			(not (binBitIsBlocked cdbab))
			(trainHasStopped T11)
		)
		:effect (and
			(itineraryIsReserved I3W)
			(trainInItinerary T11 I3W)
			(trainIsOverlapping T11)
			(flagIsBlockedDueToOverlap F3L)
			(binBitIsBlocked cdbam)
			(binBitIsBlocked cdbaj)
			(binBitIsBlocked cdbaf)
			(binBitIsBlocked cdbad)
			(binBitIsBlocked cdbab)
		)
	)
	(:event T11_endOverlap_IE3_I3W
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F3L) 1 )
			(flagIsBlockedDueToOverlap F3L)
			(trainInItinerary T11 IE3)
			(trainInItinerary T11 I3W)
		)
		:effect (and
			(not (itineraryIsReserved IE3))
			(not (trainIsOverlapping T11))
			(assign (timeElapsedReservedItinerary IE3) 0 )
			(not (trainInItinerary T11 IE3))
			(not (flagIsBlockedDueToOverlap F3L))
			(assign (timeElapsedOverlappedFlag F3L) 0 )
			(not (binBitIsBlocked cdbar))
		)
	)
	(:action T11_overlaps_IE4_I4W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T11 IE4)
			(trainInItinerary T11 IE4)
			(not (trainIsStopping T11))
			(not (itineraryIsReserved I4W))
			(not (flagIsBlockedDueToOverlap F4L))
			(not (binBitIsBlocked cdban))
			(not (binBitIsBlocked cdbak))
			(not (binBitIsBlocked cdbah))
			(not (binBitIsBlocked cdbae))
			(not (binBitIsBlocked cdbab))
			(trainHasStopped T11)
		)
		:effect (and
			(itineraryIsReserved I4W)
			(trainInItinerary T11 I4W)
			(trainIsOverlapping T11)
			(flagIsBlockedDueToOverlap F4L)
			(binBitIsBlocked cdban)
			(binBitIsBlocked cdbak)
			(binBitIsBlocked cdbah)
			(binBitIsBlocked cdbae)
			(binBitIsBlocked cdbab)
		)
	)
	(:event T11_endOverlap_IE4_I4W
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F4L) 1 )
			(flagIsBlockedDueToOverlap F4L)
			(trainInItinerary T11 IE4)
			(trainInItinerary T11 I4W)
		)
		:effect (and
			(not (itineraryIsReserved IE4))
			(not (trainIsOverlapping T11))
			(assign (timeElapsedReservedItinerary IE4) 0 )
			(not (trainInItinerary T11 IE4))
			(not (flagIsBlockedDueToOverlap F4L))
			(assign (timeElapsedOverlappedFlag F4L) 0 )
			(not (binBitIsBlocked cdbas))
		)
	)
	(:action T11_overlaps_IE5_I5W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T11 IE5)
			(trainInItinerary T11 IE5)
			(not (trainIsStopping T11))
			(not (itineraryIsReserved I5W))
			(not (flagIsBlockedDueToOverlap F5L))
			(not (binBitIsBlocked cdbao))
			(not (binBitIsBlocked cdbak))
			(not (binBitIsBlocked cdbah))
			(not (binBitIsBlocked cdbae))
			(not (binBitIsBlocked cdbab))
			(trainHasStopped T11)
		)
		:effect (and
			(itineraryIsReserved I5W)
			(trainInItinerary T11 I5W)
			(trainIsOverlapping T11)
			(flagIsBlockedDueToOverlap F5L)
			(binBitIsBlocked cdbao)
			(binBitIsBlocked cdbak)
			(binBitIsBlocked cdbah)
			(binBitIsBlocked cdbae)
			(binBitIsBlocked cdbab)
		)
	)
	(:event T11_endOverlap_IE5_I5W
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F5L) 1 )
			(flagIsBlockedDueToOverlap F5L)
			(trainInItinerary T11 IE5)
			(trainInItinerary T11 I5W)
		)
		:effect (and
			(not (itineraryIsReserved IE5))
			(not (trainIsOverlapping T11))
			(assign (timeElapsedReservedItinerary IE5) 0 )
			(not (trainInItinerary T11 IE5))
			(not (flagIsBlockedDueToOverlap F5L))
			(assign (timeElapsedOverlappedFlag F5L) 0 )
			(not (binBitIsBlocked cdbat))
		)
	)
	(:action T12_beginsVoy_S_IV_I4W
		:parameters()
		:precondition (and
			(>= time  808 )
			(trainIsStoppingAtStop T12 S_IV)
			(not (binBitIsBlocked cdban))
			(not (binBitIsBlocked cdbak))
			(not (binBitIsBlocked cdbah))
			(not (binBitIsBlocked cdbae))
			(not (binBitIsBlocked cdbab))
		)
		:effect (and
			(not (trainIsStoppingAtStop T12 S_IV))
			(not (trainIsStopping T12))
			(trainHasBegunVoy T12)
			(not (stopIsOccupied S_IV))
			(itineraryIsReserved I4W)
			(trainInItinerary T12 I4W)
			(binBitIsBlocked cdban)
			(binBitIsBlocked cdbak)
			(binBitIsBlocked cdbah)
			(binBitIsBlocked cdbae)
			(binBitIsBlocked cdbab)
			(not (binBitIsBlocked cdbas))
			(not (binBitIsBlocked cdbax))
			(not (binBitIsBlocked cdbbc))
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
	(:action T13_beginsVoy_S_II_I2E
		:parameters()
		:precondition (and
			(>= time  2427 )
			(trainIsStoppingAtStop T13 S_II)
			(not (binBitIsBlocked cdbbf))
			(not (binBitIsBlocked cdbbj))
			(not (binBitIsBlocked cdbbl))
			(not (binBitIsBlocked cdbbo))
			(not (binBitIsBlocked cdbbr))
		)
		:effect (and
			(not (trainIsStoppingAtStop T13 S_II))
			(not (trainIsStopping T13))
			(trainHasBegunVoy T13)
			(not (stopIsOccupied S_II))
			(itineraryIsReserved I2E)
			(trainInItinerary T13 I2E)
			(binBitIsBlocked cdbbf)
			(binBitIsBlocked cdbbj)
			(binBitIsBlocked cdbbl)
			(binBitIsBlocked cdbbo)
			(binBitIsBlocked cdbbr)
			(not (binBitIsBlocked cdbaq))
			(not (binBitIsBlocked cdbav))
			(not (binBitIsBlocked cdbba))
		)
	)
	(:action T13_exitsStation_I2E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T13 I2E)
			(not (trainHasExitedStation T13))
		)
		:effect (and
			(not (itineraryIsReserved I2E))
			(not (trainInItinerary T13 I2E))
			(trainExitsStationAt T13 F03)
			(assign (timeElapsedReservedItinerary I2E) 0 )
			(trainHasExitedStation T13)
			(not (binBitIsBlocked cdbbr))
		)
	)
	(:event T13_completeItinerary_I2E
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2E) 60 )
			(itineraryIsReserved I2E)
			(trainInItinerary T13 I2E)
			(not (trainHasCompletedItinerary T13 I2E))
			(not (trainHasExitedStation T13))
		)
		:effect (and
			(trainHasCompletedItinerary T13 I2E)
		)
	)
	(:event T13_completeBinBit_I2E_cdbbf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2E) 12 )
			(trainInItinerary T13 I2E)
			(binBitIsBlocked cdbbf)
		)
		:effect (and
			(not (binBitIsBlocked cdbbf))
		)
	)
	(:event T13_completeBinBit_I2E_cdbbj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2E) 24 )
			(trainInItinerary T13 I2E)
			(binBitIsBlocked cdbbj)
		)
		:effect (and
			(not (binBitIsBlocked cdbbj))
		)
	)
	(:event T13_completeBinBit_I2E_cdbbl
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2E) 36 )
			(trainInItinerary T13 I2E)
			(binBitIsBlocked cdbbl)
		)
		:effect (and
			(not (binBitIsBlocked cdbbl))
		)
	)
	(:event T13_completeBinBit_I2E_cdbbo
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2E) 48 )
			(trainInItinerary T13 I2E)
			(binBitIsBlocked cdbbo)
		)
		:effect (and
			(not (binBitIsBlocked cdbbo))
		)
	)
	(:event T14_arrivesAtEndpoint_W_plus
		:parameters()
		:precondition (and
			(>= time  628 )
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
	(:action T15_beginsVoy_S_V_I5W
		:parameters()
		:precondition (and
			(>= time  2861 )
			(trainIsStoppingAtStop T15 S_V)
			(not (binBitIsBlocked cdbao))
			(not (binBitIsBlocked cdbak))
			(not (binBitIsBlocked cdbah))
			(not (binBitIsBlocked cdbae))
			(not (binBitIsBlocked cdbab))
		)
		:effect (and
			(not (trainIsStoppingAtStop T15 S_V))
			(not (trainIsStopping T15))
			(trainHasBegunVoy T15)
			(not (stopIsOccupied S_V))
			(itineraryIsReserved I5W)
			(trainInItinerary T15 I5W)
			(binBitIsBlocked cdbao)
			(binBitIsBlocked cdbak)
			(binBitIsBlocked cdbah)
			(binBitIsBlocked cdbae)
			(binBitIsBlocked cdbab)
			(not (binBitIsBlocked cdbat))
			(not (binBitIsBlocked cdbay))
			(not (binBitIsBlocked cdbbd))
		)
	)
	(:action T15_exitsStation_I5W
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T15 I5W)
			(not (trainHasExitedStation T15))
		)
		:effect (and
			(not (itineraryIsReserved I5W))
			(not (trainInItinerary T15 I5W))
			(trainExitsStationAt T15 F02)
			(assign (timeElapsedReservedItinerary I5W) 0 )
			(trainHasExitedStation T15)
			(not (binBitIsBlocked cdbab))
		)
	)
	(:event T15_completeItinerary_I5W
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5W) 60 )
			(itineraryIsReserved I5W)
			(trainInItinerary T15 I5W)
			(not (trainHasCompletedItinerary T15 I5W))
			(not (trainHasExitedStation T15))
		)
		:effect (and
			(trainHasCompletedItinerary T15 I5W)
		)
	)
	(:event T15_completeBinBit_I5W_cdbao
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5W) 12 )
			(trainInItinerary T15 I5W)
			(binBitIsBlocked cdbao)
		)
		:effect (and
			(not (binBitIsBlocked cdbao))
		)
	)
	(:event T15_completeBinBit_I5W_cdbak
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5W) 24 )
			(trainInItinerary T15 I5W)
			(binBitIsBlocked cdbak)
		)
		:effect (and
			(not (binBitIsBlocked cdbak))
		)
	)
	(:event T15_completeBinBit_I5W_cdbah
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5W) 36 )
			(trainInItinerary T15 I5W)
			(binBitIsBlocked cdbah)
		)
		:effect (and
			(not (binBitIsBlocked cdbah))
		)
	)
	(:event T15_completeBinBit_I5W_cdbae
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5W) 48 )
			(trainInItinerary T15 I5W)
			(binBitIsBlocked cdbae)
		)
		:effect (and
			(not (binBitIsBlocked cdbae))
		)
	)
	(:action T16_beginsVoy_S_I_I1E
		:parameters()
		:precondition (and
			(>= time  2584 )
			(trainIsStoppingAtStop T16 S_I)
			(not (binBitIsBlocked cdbbe))
			(not (binBitIsBlocked cdbbl))
			(not (binBitIsBlocked cdbbo))
			(not (binBitIsBlocked cdbbr))
		)
		:effect (and
			(not (trainIsStoppingAtStop T16 S_I))
			(not (trainIsStopping T16))
			(trainHasBegunVoy T16)
			(not (stopIsOccupied S_I))
			(itineraryIsReserved I1E)
			(trainInItinerary T16 I1E)
			(binBitIsBlocked cdbbe)
			(binBitIsBlocked cdbbl)
			(binBitIsBlocked cdbbo)
			(binBitIsBlocked cdbbr)
			(not (binBitIsBlocked cdbap))
			(not (binBitIsBlocked cdbau))
			(not (binBitIsBlocked cdbaz))
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
	(:event T17_arrivesAtEndpoint_W_plus
		:parameters()
		:precondition (and
			(>= time  1493 )
			(not (trainHasEnteredStation T17))
			(not (trainIsAtEndpoint T17 W_plus))
		)
		:effect (and
			(trainIsAtEndpoint T17 W_plus)
			(trainHasArrivedAtStation T17)
			(assign (trainEntryIndex T17) (trainsArrivedAtEndpoint W_plus))
			(increase (trainsArrivedAtEndpoint W_plus) 1 )
		)
	)
	(:action T17_entersStation_IW1
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T17 W_plus)
			(not (trainHasExitedStation T17))
			(not (trainHasEnteredStation T17))
			(= (trainEntryIndex T17) (trainsEnteredFromEndpoint W_plus))
			(not (binBitIsBlocked cdbaa))
			(not (binBitIsBlocked cdbac))
			(not (binBitIsBlocked cdbaf))
			(not (binBitIsBlocked cdbai))
			(not (binBitIsBlocked cdbap))
			(not (binBitIsBlocked cdbau))
			(not (binBitIsBlocked cdbaz))
		)
		:effect (and
			(not (trainIsAtEndpoint T17 W_plus))
			(itineraryIsReserved IW1)
			(not (trainEntersStationAt T17 F01))
			(trainInItinerary T17 IW1)
			(trainHasEnteredStation T17)
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
	(:action T17_entersStation_IW2
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T17 W_plus)
			(not (trainHasExitedStation T17))
			(not (trainHasEnteredStation T17))
			(= (trainEntryIndex T17) (trainsEnteredFromEndpoint W_plus))
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
			(not (trainIsAtEndpoint T17 W_plus))
			(itineraryIsReserved IW2)
			(not (trainEntersStationAt T17 F01))
			(trainInItinerary T17 IW2)
			(trainHasEnteredStation T17)
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
	(:action T17_entersStation_IW3
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T17 W_plus)
			(not (trainHasExitedStation T17))
			(not (trainHasEnteredStation T17))
			(= (trainEntryIndex T17) (trainsEnteredFromEndpoint W_plus))
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
			(not (trainIsAtEndpoint T17 W_plus))
			(itineraryIsReserved IW3)
			(not (trainEntersStationAt T17 F01))
			(trainInItinerary T17 IW3)
			(trainHasEnteredStation T17)
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
	(:action T17_entersStation_IW4
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T17 W_plus)
			(not (trainHasExitedStation T17))
			(not (trainHasEnteredStation T17))
			(= (trainEntryIndex T17) (trainsEnteredFromEndpoint W_plus))
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
			(not (trainIsAtEndpoint T17 W_plus))
			(itineraryIsReserved IW4)
			(not (trainEntersStationAt T17 F01))
			(trainInItinerary T17 IW4)
			(trainHasEnteredStation T17)
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
	(:action T17_entersStation_IW5
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T17 W_plus)
			(not (trainHasExitedStation T17))
			(not (trainHasEnteredStation T17))
			(= (trainEntryIndex T17) (trainsEnteredFromEndpoint W_plus))
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
			(not (trainIsAtEndpoint T17 W_plus))
			(itineraryIsReserved IW5)
			(not (trainEntersStationAt T17 F01))
			(trainInItinerary T17 IW5)
			(trainHasEnteredStation T17)
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
	(:action T17_exitsStation_I1E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T17 I1E)
			(not (trainHasExitedStation T17))
		)
		:effect (and
			(not (itineraryIsReserved I1E))
			(not (trainInItinerary T17 I1E))
			(trainExitsStationAt T17 F03)
			(assign (timeElapsedReservedItinerary I1E) 0 )
			(trainHasExitedStation T17)
			(not (binBitIsBlocked cdbbr))
		)
	)
	(:action T17_exitsStation_I2E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T17 I2E)
			(not (trainHasExitedStation T17))
		)
		:effect (and
			(not (itineraryIsReserved I2E))
			(not (trainInItinerary T17 I2E))
			(trainExitsStationAt T17 F03)
			(assign (timeElapsedReservedItinerary I2E) 0 )
			(trainHasExitedStation T17)
			(not (binBitIsBlocked cdbbr))
		)
	)
	(:action T17_exitsStation_I3E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T17 I3E)
			(not (trainHasExitedStation T17))
		)
		:effect (and
			(not (itineraryIsReserved I3E))
			(not (trainInItinerary T17 I3E))
			(trainExitsStationAt T17 F03)
			(assign (timeElapsedReservedItinerary I3E) 0 )
			(trainHasExitedStation T17)
			(not (binBitIsBlocked cdbbr))
		)
	)
	(:action T17_exitsStation_I4E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T17 I4E)
			(not (trainHasExitedStation T17))
		)
		:effect (and
			(not (itineraryIsReserved I4E))
			(not (trainInItinerary T17 I4E))
			(trainExitsStationAt T17 F03)
			(assign (timeElapsedReservedItinerary I4E) 0 )
			(trainHasExitedStation T17)
			(not (binBitIsBlocked cdbbr))
		)
	)
	(:action T17_exitsStation_I5E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T17 I5E)
			(not (trainHasExitedStation T17))
		)
		:effect (and
			(not (itineraryIsReserved I5E))
			(not (trainInItinerary T17 I5E))
			(trainExitsStationAt T17 F03)
			(assign (timeElapsedReservedItinerary I5E) 0 )
			(trainHasExitedStation T17)
			(not (binBitIsBlocked cdbbr))
		)
	)
	(:event T17_completeItinerary_IW1
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 60 )
			(itineraryIsReserved IW1)
			(trainInItinerary T17 IW1)
			(not (trainHasCompletedItinerary T17 IW1))
			(not (trainHasExitedStation T17))
		)
		:effect (and
			(trainHasCompletedItinerary T17 IW1)
		)
	)
	(:event T17_completeBinBit_IW1_cdbaa
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 8 )
			(trainInItinerary T17 IW1)
			(binBitIsBlocked cdbaa)
		)
		:effect (and
			(not (binBitIsBlocked cdbaa))
		)
	)
	(:event T17_completeBinBit_IW1_cdbac
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 17 )
			(trainInItinerary T17 IW1)
			(binBitIsBlocked cdbac)
		)
		:effect (and
			(not (binBitIsBlocked cdbac))
		)
	)
	(:event T17_completeBinBit_IW1_cdbaf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 25 )
			(trainInItinerary T17 IW1)
			(binBitIsBlocked cdbaf)
		)
		:effect (and
			(not (binBitIsBlocked cdbaf))
		)
	)
	(:event T17_completeBinBit_IW1_cdbai
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 34 )
			(trainInItinerary T17 IW1)
			(binBitIsBlocked cdbai)
		)
		:effect (and
			(not (binBitIsBlocked cdbai))
		)
	)
	(:event T17_completeBinBit_IW1_cdbap
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 42 )
			(trainInItinerary T17 IW1)
			(binBitIsBlocked cdbap)
		)
		:effect (and
			(not (binBitIsBlocked cdbap))
		)
	)
	(:event T17_completeBinBit_IW1_cdbau
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW1) 51 )
			(trainInItinerary T17 IW1)
			(binBitIsBlocked cdbau)
		)
		:effect (and
			(not (binBitIsBlocked cdbau))
		)
	)
	(:event T17_completeItinerary_I1E
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1E) 60 )
			(itineraryIsReserved I1E)
			(trainInItinerary T17 I1E)
			(not (trainHasCompletedItinerary T17 I1E))
			(not (trainHasExitedStation T17))
		)
		:effect (and
			(trainHasCompletedItinerary T17 I1E)
		)
	)
	(:event T17_completeBinBit_I1E_cdbbe
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1E) 15 )
			(trainInItinerary T17 I1E)
			(binBitIsBlocked cdbbe)
		)
		:effect (and
			(not (binBitIsBlocked cdbbe))
		)
	)
	(:event T17_completeBinBit_I1E_cdbbl
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1E) 30 )
			(trainInItinerary T17 I1E)
			(binBitIsBlocked cdbbl)
		)
		:effect (and
			(not (binBitIsBlocked cdbbl))
		)
	)
	(:event T17_completeBinBit_I1E_cdbbo
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I1E) 45 )
			(trainInItinerary T17 I1E)
			(binBitIsBlocked cdbbo)
		)
		:effect (and
			(not (binBitIsBlocked cdbbo))
		)
	)
	(:event T17_completeItinerary_IW2
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 60 )
			(itineraryIsReserved IW2)
			(trainInItinerary T17 IW2)
			(not (trainHasCompletedItinerary T17 IW2))
			(not (trainHasExitedStation T17))
		)
		:effect (and
			(trainHasCompletedItinerary T17 IW2)
		)
	)
	(:event T17_completeBinBit_IW2_cdbaa
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 7 )
			(trainInItinerary T17 IW2)
			(binBitIsBlocked cdbaa)
		)
		:effect (and
			(not (binBitIsBlocked cdbaa))
		)
	)
	(:event T17_completeBinBit_IW2_cdbac
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 15 )
			(trainInItinerary T17 IW2)
			(binBitIsBlocked cdbac)
		)
		:effect (and
			(not (binBitIsBlocked cdbac))
		)
	)
	(:event T17_completeBinBit_IW2_cdbaf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 22 )
			(trainInItinerary T17 IW2)
			(binBitIsBlocked cdbaf)
		)
		:effect (and
			(not (binBitIsBlocked cdbaf))
		)
	)
	(:event T17_completeBinBit_IW2_cdbaj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 30 )
			(trainInItinerary T17 IW2)
			(binBitIsBlocked cdbaj)
		)
		:effect (and
			(not (binBitIsBlocked cdbaj))
		)
	)
	(:event T17_completeBinBit_IW2_cdbal
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 37 )
			(trainInItinerary T17 IW2)
			(binBitIsBlocked cdbal)
		)
		:effect (and
			(not (binBitIsBlocked cdbal))
		)
	)
	(:event T17_completeBinBit_IW2_cdbaq
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 45 )
			(trainInItinerary T17 IW2)
			(binBitIsBlocked cdbaq)
		)
		:effect (and
			(not (binBitIsBlocked cdbaq))
		)
	)
	(:event T17_completeBinBit_IW2_cdbav
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW2) 52 )
			(trainInItinerary T17 IW2)
			(binBitIsBlocked cdbav)
		)
		:effect (and
			(not (binBitIsBlocked cdbav))
		)
	)
	(:event T17_completeItinerary_I2E
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2E) 60 )
			(itineraryIsReserved I2E)
			(trainInItinerary T17 I2E)
			(not (trainHasCompletedItinerary T17 I2E))
			(not (trainHasExitedStation T17))
		)
		:effect (and
			(trainHasCompletedItinerary T17 I2E)
		)
	)
	(:event T17_completeBinBit_I2E_cdbbf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2E) 12 )
			(trainInItinerary T17 I2E)
			(binBitIsBlocked cdbbf)
		)
		:effect (and
			(not (binBitIsBlocked cdbbf))
		)
	)
	(:event T17_completeBinBit_I2E_cdbbj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2E) 24 )
			(trainInItinerary T17 I2E)
			(binBitIsBlocked cdbbj)
		)
		:effect (and
			(not (binBitIsBlocked cdbbj))
		)
	)
	(:event T17_completeBinBit_I2E_cdbbl
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2E) 36 )
			(trainInItinerary T17 I2E)
			(binBitIsBlocked cdbbl)
		)
		:effect (and
			(not (binBitIsBlocked cdbbl))
		)
	)
	(:event T17_completeBinBit_I2E_cdbbo
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I2E) 48 )
			(trainInItinerary T17 I2E)
			(binBitIsBlocked cdbbo)
		)
		:effect (and
			(not (binBitIsBlocked cdbbo))
		)
	)
	(:event T17_completeItinerary_IW3
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 60 )
			(itineraryIsReserved IW3)
			(trainInItinerary T17 IW3)
			(not (trainHasCompletedItinerary T17 IW3))
			(not (trainHasExitedStation T17))
		)
		:effect (and
			(trainHasCompletedItinerary T17 IW3)
		)
	)
	(:event T17_completeBinBit_IW3_cdbaa
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 7 )
			(trainInItinerary T17 IW3)
			(binBitIsBlocked cdbaa)
		)
		:effect (and
			(not (binBitIsBlocked cdbaa))
		)
	)
	(:event T17_completeBinBit_IW3_cdbac
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 15 )
			(trainInItinerary T17 IW3)
			(binBitIsBlocked cdbac)
		)
		:effect (and
			(not (binBitIsBlocked cdbac))
		)
	)
	(:event T17_completeBinBit_IW3_cdbaf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 22 )
			(trainInItinerary T17 IW3)
			(binBitIsBlocked cdbaf)
		)
		:effect (and
			(not (binBitIsBlocked cdbaf))
		)
	)
	(:event T17_completeBinBit_IW3_cdbaj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 30 )
			(trainInItinerary T17 IW3)
			(binBitIsBlocked cdbaj)
		)
		:effect (and
			(not (binBitIsBlocked cdbaj))
		)
	)
	(:event T17_completeBinBit_IW3_cdbam
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 37 )
			(trainInItinerary T17 IW3)
			(binBitIsBlocked cdbam)
		)
		:effect (and
			(not (binBitIsBlocked cdbam))
		)
	)
	(:event T17_completeBinBit_IW3_cdbar
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 45 )
			(trainInItinerary T17 IW3)
			(binBitIsBlocked cdbar)
		)
		:effect (and
			(not (binBitIsBlocked cdbar))
		)
	)
	(:event T17_completeBinBit_IW3_cdbaw
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 52 )
			(trainInItinerary T17 IW3)
			(binBitIsBlocked cdbaw)
		)
		:effect (and
			(not (binBitIsBlocked cdbaw))
		)
	)
	(:event T17_completeItinerary_I3E
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3E) 60 )
			(itineraryIsReserved I3E)
			(trainInItinerary T17 I3E)
			(not (trainHasCompletedItinerary T17 I3E))
			(not (trainHasExitedStation T17))
		)
		:effect (and
			(trainHasCompletedItinerary T17 I3E)
		)
	)
	(:event T17_completeBinBit_I3E_cdbbg
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3E) 12 )
			(trainInItinerary T17 I3E)
			(binBitIsBlocked cdbbg)
		)
		:effect (and
			(not (binBitIsBlocked cdbbg))
		)
	)
	(:event T17_completeBinBit_I3E_cdbbj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3E) 24 )
			(trainInItinerary T17 I3E)
			(binBitIsBlocked cdbbj)
		)
		:effect (and
			(not (binBitIsBlocked cdbbj))
		)
	)
	(:event T17_completeBinBit_I3E_cdbbl
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3E) 36 )
			(trainInItinerary T17 I3E)
			(binBitIsBlocked cdbbl)
		)
		:effect (and
			(not (binBitIsBlocked cdbbl))
		)
	)
	(:event T17_completeBinBit_I3E_cdbbo
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I3E) 48 )
			(trainInItinerary T17 I3E)
			(binBitIsBlocked cdbbo)
		)
		:effect (and
			(not (binBitIsBlocked cdbbo))
		)
	)
	(:event T17_completeItinerary_IW4
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 60 )
			(itineraryIsReserved IW4)
			(trainInItinerary T17 IW4)
			(not (trainHasCompletedItinerary T17 IW4))
			(not (trainHasExitedStation T17))
		)
		:effect (and
			(trainHasCompletedItinerary T17 IW4)
		)
	)
	(:event T17_completeBinBit_IW4_cdbaa
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 7 )
			(trainInItinerary T17 IW4)
			(binBitIsBlocked cdbaa)
		)
		:effect (and
			(not (binBitIsBlocked cdbaa))
		)
	)
	(:event T17_completeBinBit_IW4_cdbac
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 15 )
			(trainInItinerary T17 IW4)
			(binBitIsBlocked cdbac)
		)
		:effect (and
			(not (binBitIsBlocked cdbac))
		)
	)
	(:event T17_completeBinBit_IW4_cdbag
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 22 )
			(trainInItinerary T17 IW4)
			(binBitIsBlocked cdbag)
		)
		:effect (and
			(not (binBitIsBlocked cdbag))
		)
	)
	(:event T17_completeBinBit_IW4_cdbak
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 30 )
			(trainInItinerary T17 IW4)
			(binBitIsBlocked cdbak)
		)
		:effect (and
			(not (binBitIsBlocked cdbak))
		)
	)
	(:event T17_completeBinBit_IW4_cdban
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 37 )
			(trainInItinerary T17 IW4)
			(binBitIsBlocked cdban)
		)
		:effect (and
			(not (binBitIsBlocked cdban))
		)
	)
	(:event T17_completeBinBit_IW4_cdbas
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 45 )
			(trainInItinerary T17 IW4)
			(binBitIsBlocked cdbas)
		)
		:effect (and
			(not (binBitIsBlocked cdbas))
		)
	)
	(:event T17_completeBinBit_IW4_cdbax
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW4) 52 )
			(trainInItinerary T17 IW4)
			(binBitIsBlocked cdbax)
		)
		:effect (and
			(not (binBitIsBlocked cdbax))
		)
	)
	(:event T17_completeItinerary_I4E
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4E) 60 )
			(itineraryIsReserved I4E)
			(trainInItinerary T17 I4E)
			(not (trainHasCompletedItinerary T17 I4E))
			(not (trainHasExitedStation T17))
		)
		:effect (and
			(trainHasCompletedItinerary T17 I4E)
		)
	)
	(:event T17_completeBinBit_I4E_cdbbh
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4E) 12 )
			(trainInItinerary T17 I4E)
			(binBitIsBlocked cdbbh)
		)
		:effect (and
			(not (binBitIsBlocked cdbbh))
		)
	)
	(:event T17_completeBinBit_I4E_cdbbk
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4E) 24 )
			(trainInItinerary T17 I4E)
			(binBitIsBlocked cdbbk)
		)
		:effect (and
			(not (binBitIsBlocked cdbbk))
		)
	)
	(:event T17_completeBinBit_I4E_cdbbm
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4E) 36 )
			(trainInItinerary T17 I4E)
			(binBitIsBlocked cdbbm)
		)
		:effect (and
			(not (binBitIsBlocked cdbbm))
		)
	)
	(:event T17_completeBinBit_I4E_cdbbo
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I4E) 48 )
			(trainInItinerary T17 I4E)
			(binBitIsBlocked cdbbo)
		)
		:effect (and
			(not (binBitIsBlocked cdbbo))
		)
	)
	(:event T17_completeItinerary_IW5
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 60 )
			(itineraryIsReserved IW5)
			(trainInItinerary T17 IW5)
			(not (trainHasCompletedItinerary T17 IW5))
			(not (trainHasExitedStation T17))
		)
		:effect (and
			(trainHasCompletedItinerary T17 IW5)
		)
	)
	(:event T17_completeBinBit_IW5_cdbaa
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 7 )
			(trainInItinerary T17 IW5)
			(binBitIsBlocked cdbaa)
		)
		:effect (and
			(not (binBitIsBlocked cdbaa))
		)
	)
	(:event T17_completeBinBit_IW5_cdbac
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 15 )
			(trainInItinerary T17 IW5)
			(binBitIsBlocked cdbac)
		)
		:effect (and
			(not (binBitIsBlocked cdbac))
		)
	)
	(:event T17_completeBinBit_IW5_cdbag
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 22 )
			(trainInItinerary T17 IW5)
			(binBitIsBlocked cdbag)
		)
		:effect (and
			(not (binBitIsBlocked cdbag))
		)
	)
	(:event T17_completeBinBit_IW5_cdbak
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 30 )
			(trainInItinerary T17 IW5)
			(binBitIsBlocked cdbak)
		)
		:effect (and
			(not (binBitIsBlocked cdbak))
		)
	)
	(:event T17_completeBinBit_IW5_cdbao
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 37 )
			(trainInItinerary T17 IW5)
			(binBitIsBlocked cdbao)
		)
		:effect (and
			(not (binBitIsBlocked cdbao))
		)
	)
	(:event T17_completeBinBit_IW5_cdbat
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 45 )
			(trainInItinerary T17 IW5)
			(binBitIsBlocked cdbat)
		)
		:effect (and
			(not (binBitIsBlocked cdbat))
		)
	)
	(:event T17_completeBinBit_IW5_cdbay
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW5) 52 )
			(trainInItinerary T17 IW5)
			(binBitIsBlocked cdbay)
		)
		:effect (and
			(not (binBitIsBlocked cdbay))
		)
	)
	(:event T17_completeItinerary_I5E
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5E) 60 )
			(itineraryIsReserved I5E)
			(trainInItinerary T17 I5E)
			(not (trainHasCompletedItinerary T17 I5E))
			(not (trainHasExitedStation T17))
		)
		:effect (and
			(trainHasCompletedItinerary T17 I5E)
		)
	)
	(:event T17_completeBinBit_I5E_cdbbi
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5E) 12 )
			(trainInItinerary T17 I5E)
			(binBitIsBlocked cdbbi)
		)
		:effect (and
			(not (binBitIsBlocked cdbbi))
		)
	)
	(:event T17_completeBinBit_I5E_cdbbk
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5E) 24 )
			(trainInItinerary T17 I5E)
			(binBitIsBlocked cdbbk)
		)
		:effect (and
			(not (binBitIsBlocked cdbbk))
		)
	)
	(:event T17_completeBinBit_I5E_cdbbm
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5E) 36 )
			(trainInItinerary T17 I5E)
			(binBitIsBlocked cdbbm)
		)
		:effect (and
			(not (binBitIsBlocked cdbbm))
		)
	)
	(:event T17_completeBinBit_I5E_cdbbo
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary I5E) 48 )
			(trainInItinerary T17 I5E)
			(binBitIsBlocked cdbbo)
		)
		:effect (and
			(not (binBitIsBlocked cdbbo))
		)
	)
	(:action T17_overlaps_IW1_I1E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T17 IW1)
			(trainInItinerary T17 IW1)
			(not (trainIsStopping T17))
			(not (itineraryIsReserved I1E))
			(not (flagIsBlockedDueToOverlap F1R))
			(not (binBitIsBlocked cdbbe))
			(not (binBitIsBlocked cdbbl))
			(not (binBitIsBlocked cdbbo))
			(not (binBitIsBlocked cdbbr))
		)
		:effect (and
			(itineraryIsReserved I1E)
			(trainInItinerary T17 I1E)
			(trainIsOverlapping T17)
			(flagIsBlockedDueToOverlap F1R)
			(binBitIsBlocked cdbbe)
			(binBitIsBlocked cdbbl)
			(binBitIsBlocked cdbbo)
			(binBitIsBlocked cdbbr)
		)
	)
	(:event T17_endOverlap_IW1_I1E
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F1R) 1 )
			(flagIsBlockedDueToOverlap F1R)
			(trainInItinerary T17 IW1)
			(trainInItinerary T17 I1E)
		)
		:effect (and
			(not (itineraryIsReserved IW1))
			(not (trainIsOverlapping T17))
			(assign (timeElapsedReservedItinerary IW1) 0 )
			(not (trainInItinerary T17 IW1))
			(not (flagIsBlockedDueToOverlap F1R))
			(assign (timeElapsedOverlappedFlag F1R) 0 )
			(not (binBitIsBlocked cdbaz))
		)
	)
	(:action T17_overlaps_IW2_I2E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T17 IW2)
			(trainInItinerary T17 IW2)
			(not (trainIsStopping T17))
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
			(trainInItinerary T17 I2E)
			(trainIsOverlapping T17)
			(flagIsBlockedDueToOverlap F2R)
			(binBitIsBlocked cdbbf)
			(binBitIsBlocked cdbbj)
			(binBitIsBlocked cdbbl)
			(binBitIsBlocked cdbbo)
			(binBitIsBlocked cdbbr)
		)
	)
	(:event T17_endOverlap_IW2_I2E
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F2R) 1 )
			(flagIsBlockedDueToOverlap F2R)
			(trainInItinerary T17 IW2)
			(trainInItinerary T17 I2E)
		)
		:effect (and
			(not (itineraryIsReserved IW2))
			(not (trainIsOverlapping T17))
			(assign (timeElapsedReservedItinerary IW2) 0 )
			(not (trainInItinerary T17 IW2))
			(not (flagIsBlockedDueToOverlap F2R))
			(assign (timeElapsedOverlappedFlag F2R) 0 )
			(not (binBitIsBlocked cdbba))
		)
	)
	(:action T17_overlaps_IW3_I3E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T17 IW3)
			(trainInItinerary T17 IW3)
			(not (trainIsStopping T17))
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
			(trainInItinerary T17 I3E)
			(trainIsOverlapping T17)
			(flagIsBlockedDueToOverlap F3R)
			(binBitIsBlocked cdbbg)
			(binBitIsBlocked cdbbj)
			(binBitIsBlocked cdbbl)
			(binBitIsBlocked cdbbo)
			(binBitIsBlocked cdbbr)
		)
	)
	(:event T17_endOverlap_IW3_I3E
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F3R) 1 )
			(flagIsBlockedDueToOverlap F3R)
			(trainInItinerary T17 IW3)
			(trainInItinerary T17 I3E)
		)
		:effect (and
			(not (itineraryIsReserved IW3))
			(not (trainIsOverlapping T17))
			(assign (timeElapsedReservedItinerary IW3) 0 )
			(not (trainInItinerary T17 IW3))
			(not (flagIsBlockedDueToOverlap F3R))
			(assign (timeElapsedOverlappedFlag F3R) 0 )
			(not (binBitIsBlocked cdbbb))
		)
	)
	(:action T17_overlaps_IW4_I4E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T17 IW4)
			(trainInItinerary T17 IW4)
			(not (trainIsStopping T17))
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
			(trainInItinerary T17 I4E)
			(trainIsOverlapping T17)
			(flagIsBlockedDueToOverlap F4R)
			(binBitIsBlocked cdbbh)
			(binBitIsBlocked cdbbk)
			(binBitIsBlocked cdbbm)
			(binBitIsBlocked cdbbo)
			(binBitIsBlocked cdbbr)
		)
	)
	(:event T17_endOverlap_IW4_I4E
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F4R) 1 )
			(flagIsBlockedDueToOverlap F4R)
			(trainInItinerary T17 IW4)
			(trainInItinerary T17 I4E)
		)
		:effect (and
			(not (itineraryIsReserved IW4))
			(not (trainIsOverlapping T17))
			(assign (timeElapsedReservedItinerary IW4) 0 )
			(not (trainInItinerary T17 IW4))
			(not (flagIsBlockedDueToOverlap F4R))
			(assign (timeElapsedOverlappedFlag F4R) 0 )
			(not (binBitIsBlocked cdbbc))
		)
	)
	(:action T17_overlaps_IW5_I5E
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T17 IW5)
			(trainInItinerary T17 IW5)
			(not (trainIsStopping T17))
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
			(trainInItinerary T17 I5E)
			(trainIsOverlapping T17)
			(flagIsBlockedDueToOverlap F5R)
			(binBitIsBlocked cdbbi)
			(binBitIsBlocked cdbbk)
			(binBitIsBlocked cdbbm)
			(binBitIsBlocked cdbbo)
			(binBitIsBlocked cdbbr)
		)
	)
	(:event T17_endOverlap_IW5_I5E
		:parameters()
		:precondition (and
			(>= (timeElapsedOverlappedFlag F5R) 1 )
			(flagIsBlockedDueToOverlap F5R)
			(trainInItinerary T17 IW5)
			(trainInItinerary T17 I5E)
		)
		:effect (and
			(not (itineraryIsReserved IW5))
			(not (trainIsOverlapping T17))
			(assign (timeElapsedReservedItinerary IW5) 0 )
			(not (trainInItinerary T17 IW5))
			(not (flagIsBlockedDueToOverlap F5R))
			(assign (timeElapsedOverlappedFlag F5R) 0 )
			(not (binBitIsBlocked cdbbd))
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

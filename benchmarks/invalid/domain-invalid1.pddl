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
			(>= time  130 )
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
	(:action T1_beginStop_IE5_S_V
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T1 IE5)
			(trainInItinerary T1 IE5)
			(not (trainIsOverlapping T1))
			(not (stopIsOccupied S_V))
			(not (trainIsStopping T1))
			(not (trainHasStoppedAtStop T1 S_V))
		)
		:effect (and
			(trainIsStoppingAtStop T1 S_V)
			(trainHasReachedTheStop T1 S_V)
			(trainHasReachedAStop T1)
			(trainIsStopping T1)
			(assign (trainStopTime T1) 0 )
			(stopIsOccupied S_V)
			(not (itineraryIsReserved IE5))
		)
	)
	(:event T1_endStop_IE5_S_V
		:parameters()
		:precondition (and
			(>= (trainStopTime T1) 100 )
			(trainInItinerary T1 IE5)
			(trainIsStoppingAtStop T1 S_V)
			(stopIsOccupied S_V)
		)
		:effect (and
			(assign (trainStopTime T1) 0 )
			(not (trainIsStoppingAtStop T1 S_V))
			(not (trainIsStopping T1))
			(trainHasStoppedAtStop T1 S_V)
			(trainHasStopped T1)
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
	(:action T1_trainEndsVoy_IE5_S_V
		:parameters()
		:precondition (and
			(trainInItinerary T1 IE5)
			(trainHasStopped T1)
			(trainHasStoppedAtStop T1 S_V)
			(not (trainHasEndedVoy T1))
		)
		:effect (and
			(not (trainInItinerary T1 IE5))
			(trainHasExitedStation T1)
			(trainHasEndedVoy T1)
			(assign (timeElapsedReservedItinerary IE5) 0 )
		)
	)
	(:event T2_arrivesAtEndpoint_W_plus
		:parameters()
		:precondition (and
			(>= time  828 )
			(not (trainHasEnteredStation T2))
			(not (trainIsAtEndpoint T2 W_plus))
		)
		:effect (and
			(trainIsAtEndpoint T2 W_plus)
			(trainHasArrivedAtStation T2)
			(assign (trainEntryIndex T2) (trainsArrivedAtEndpoint W_plus))
			(increase (trainsArrivedAtEndpoint W_plus) 1 )
		)
	)
	(:action T2_entersStation_IW3
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T2 W_plus)
			(not (trainHasExitedStation T2))
			(not (trainHasEnteredStation T2))
			(= (trainEntryIndex T2) (trainsEnteredFromEndpoint W_plus))
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
			(not (trainIsAtEndpoint T2 W_plus))
			(itineraryIsReserved IW3)
			(not (trainEntersStationAt T2 F01))
			(trainInItinerary T2 IW3)
			(trainHasEnteredStation T2)
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
	(:event T2_completeItinerary_IW3
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 60 )
			(itineraryIsReserved IW3)
			(trainInItinerary T2 IW3)
			(not (trainHasCompletedItinerary T2 IW3))
			(not (trainHasExitedStation T2))
		)
		:effect (and
			(trainHasCompletedItinerary T2 IW3)
		)
	)
	(:event T2_completeBinBit_IW3_cdbaa
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 7 )
			(trainInItinerary T2 IW3)
			(binBitIsBlocked cdbaa)
		)
		:effect (and
			(not (binBitIsBlocked cdbaa))
		)
	)
	(:event T2_completeBinBit_IW3_cdbac
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 15 )
			(trainInItinerary T2 IW3)
			(binBitIsBlocked cdbac)
		)
		:effect (and
			(not (binBitIsBlocked cdbac))
		)
	)
	(:event T2_completeBinBit_IW3_cdbaf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 22 )
			(trainInItinerary T2 IW3)
			(binBitIsBlocked cdbaf)
		)
		:effect (and
			(not (binBitIsBlocked cdbaf))
		)
	)
	(:event T2_completeBinBit_IW3_cdbaj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 30 )
			(trainInItinerary T2 IW3)
			(binBitIsBlocked cdbaj)
		)
		:effect (and
			(not (binBitIsBlocked cdbaj))
		)
	)
	(:event T2_completeBinBit_IW3_cdbam
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 37 )
			(trainInItinerary T2 IW3)
			(binBitIsBlocked cdbam)
		)
		:effect (and
			(not (binBitIsBlocked cdbam))
		)
	)
	(:event T2_completeBinBit_IW3_cdbar
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 45 )
			(trainInItinerary T2 IW3)
			(binBitIsBlocked cdbar)
		)
		:effect (and
			(not (binBitIsBlocked cdbar))
		)
	)
	(:event T2_completeBinBit_IW3_cdbaw
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IW3) 52 )
			(trainInItinerary T2 IW3)
			(binBitIsBlocked cdbaw)
		)
		:effect (and
			(not (binBitIsBlocked cdbaw))
		)
	)
	(:action T2_beginStop_IW3_S_III
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T2 IW3)
			(trainInItinerary T2 IW3)
			(not (trainIsOverlapping T2))
			(not (stopIsOccupied S_III))
			(not (trainIsStopping T2))
			(not (trainHasStoppedAtStop T2 S_III))
		)
		:effect (and
			(trainIsStoppingAtStop T2 S_III)
			(trainHasReachedTheStop T2 S_III)
			(trainHasReachedAStop T2)
			(trainIsStopping T2)
			(assign (trainStopTime T2) 0 )
			(stopIsOccupied S_III)
			(not (itineraryIsReserved IW3))
		)
	)
	(:event T2_endStop_IW3_S_III
		:parameters()
		:precondition (and
			(>= (trainStopTime T2) 100 )
			(trainInItinerary T2 IW3)
			(trainIsStoppingAtStop T2 S_III)
			(stopIsOccupied S_III)
		)
		:effect (and
			(assign (trainStopTime T2) 0 )
			(not (trainIsStoppingAtStop T2 S_III))
			(not (trainIsStopping T2))
			(trainHasStoppedAtStop T2 S_III)
			(trainHasStopped T2)
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
	(:action T2_trainEndsVoy_IW3_S_III
		:parameters()
		:precondition (and
			(trainInItinerary T2 IW3)
			(trainHasStopped T2)
			(trainHasStoppedAtStop T2 S_III)
			(not (trainHasEndedVoy T2))
		)
		:effect (and
			(not (trainInItinerary T2 IW3))
			(trainHasExitedStation T2)
			(trainHasEndedVoy T2)
			(assign (timeElapsedReservedItinerary IW3) 0 )
		)
	)
	(:event T3_arrivesAtEndpoint_W_plus
		:parameters()
		:precondition (and
			(>= time  230 )
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
	(:action T3_beginStop_IW4_S_IV
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T3 IW4)
			(trainInItinerary T3 IW4)
			(not (trainIsOverlapping T3))
			(not (stopIsOccupied S_IV))
			(not (trainIsStopping T3))
			(not (trainHasStoppedAtStop T3 S_IV))
		)
		:effect (and
			(trainIsStoppingAtStop T3 S_IV)
			(trainHasReachedTheStop T3 S_IV)
			(trainHasReachedAStop T3)
			(trainIsStopping T3)
			(assign (trainStopTime T3) 0 )
			(stopIsOccupied S_IV)
			(not (itineraryIsReserved IW4))
		)
	)
	(:event T3_endStop_IW4_S_IV
		:parameters()
		:precondition (and
			(>= (trainStopTime T3) 100 )
			(trainInItinerary T3 IW4)
			(trainIsStoppingAtStop T3 S_IV)
			(stopIsOccupied S_IV)
		)
		:effect (and
			(assign (trainStopTime T3) 0 )
			(not (trainIsStoppingAtStop T3 S_IV))
			(not (trainIsStopping T3))
			(trainHasStoppedAtStop T3 S_IV)
			(trainHasStopped T3)
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
	(:action T3_trainEndsVoy_IW4_S_IV
		:parameters()
		:precondition (and
			(trainInItinerary T3 IW4)
			(trainHasStopped T3)
			(trainHasStoppedAtStop T3 S_IV)
			(not (trainHasEndedVoy T3))
		)
		:effect (and
			(not (trainInItinerary T3 IW4))
			(trainHasExitedStation T3)
			(trainHasEndedVoy T3)
			(assign (timeElapsedReservedItinerary IW4) 0 )
		)
	)
	(:event T4_arrivesAtEndpoint_E_plus
		:parameters()
		:precondition (and
			(>= time  566 )
			(not (trainHasEnteredStation T4))
			(not (trainIsAtEndpoint T4 E_plus))
		)
		:effect (and
			(trainIsAtEndpoint T4 E_plus)
			(trainHasArrivedAtStation T4)
			(assign (trainEntryIndex T4) (trainsArrivedAtEndpoint E_plus))
			(increase (trainsArrivedAtEndpoint E_plus) 1 )
		)
	)
	(:action T4_entersStation_IE2
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T4 E_plus)
			(not (trainHasExitedStation T4))
			(not (trainHasEnteredStation T4))
			(= (trainEntryIndex T4) (trainsEnteredFromEndpoint E_plus))
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
			(not (trainIsAtEndpoint T4 E_plus))
			(itineraryIsReserved IE2)
			(not (trainEntersStationAt T4 F04))
			(trainInItinerary T4 IE2)
			(trainHasEnteredStation T4)
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
	(:event T4_completeItinerary_IE2
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 60 )
			(itineraryIsReserved IE2)
			(trainInItinerary T4 IE2)
			(not (trainHasCompletedItinerary T4 IE2))
			(not (trainHasExitedStation T4))
		)
		:effect (and
			(trainHasCompletedItinerary T4 IE2)
		)
	)
	(:event T4_completeBinBit_IE2_cdbbs
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 7 )
			(trainInItinerary T4 IE2)
			(binBitIsBlocked cdbbs)
		)
		:effect (and
			(not (binBitIsBlocked cdbbs))
		)
	)
	(:event T4_completeBinBit_IE2_cdbbp
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 15 )
			(trainInItinerary T4 IE2)
			(binBitIsBlocked cdbbp)
		)
		:effect (and
			(not (binBitIsBlocked cdbbp))
		)
	)
	(:event T4_completeBinBit_IE2_cdbbl
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 22 )
			(trainInItinerary T4 IE2)
			(binBitIsBlocked cdbbl)
		)
		:effect (and
			(not (binBitIsBlocked cdbbl))
		)
	)
	(:event T4_completeBinBit_IE2_cdbbj
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 30 )
			(trainInItinerary T4 IE2)
			(binBitIsBlocked cdbbj)
		)
		:effect (and
			(not (binBitIsBlocked cdbbj))
		)
	)
	(:event T4_completeBinBit_IE2_cdbbf
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 37 )
			(trainInItinerary T4 IE2)
			(binBitIsBlocked cdbbf)
		)
		:effect (and
			(not (binBitIsBlocked cdbbf))
		)
	)
	(:event T4_completeBinBit_IE2_cdbba
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 45 )
			(trainInItinerary T4 IE2)
			(binBitIsBlocked cdbba)
		)
		:effect (and
			(not (binBitIsBlocked cdbba))
		)
	)
	(:event T4_completeBinBit_IE2_cdbav
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE2) 52 )
			(trainInItinerary T4 IE2)
			(binBitIsBlocked cdbav)
		)
		:effect (and
			(not (binBitIsBlocked cdbav))
		)
	)
	(:action T4_beginStop_IE2_S_II
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T4 IE2)
			(trainInItinerary T4 IE2)
			(not (trainIsOverlapping T4))
			(not (stopIsOccupied S_II))
			(not (trainIsStopping T4))
			(not (trainHasStoppedAtStop T4 S_II))
		)
		:effect (and
			(trainIsStoppingAtStop T4 S_II)
			(trainHasReachedTheStop T4 S_II)
			(trainHasReachedAStop T4)
			(trainIsStopping T4)
			(assign (trainStopTime T4) 0 )
			(stopIsOccupied S_II)
			(not (itineraryIsReserved IE2))
		)
	)
	(:event T4_endStop_IE2_S_II
		:parameters()
		:precondition (and
			(>= (trainStopTime T4) 100 )
			(trainInItinerary T4 IE2)
			(trainIsStoppingAtStop T4 S_II)
			(stopIsOccupied S_II)
		)
		:effect (and
			(assign (trainStopTime T4) 0 )
			(not (trainIsStoppingAtStop T4 S_II))
			(not (trainIsStopping T4))
			(trainHasStoppedAtStop T4 S_II)
			(trainHasStopped T4)
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
	(:action T4_trainEndsVoy_IE2_S_II
		:parameters()
		:precondition (and
			(trainInItinerary T4 IE2)
			(trainHasStopped T4)
			(trainHasStoppedAtStop T4 S_II)
			(not (trainHasEndedVoy T4))
		)
		:effect (and
			(not (trainInItinerary T4 IE2))
			(trainHasExitedStation T4)
			(trainHasEndedVoy T4)
			(assign (timeElapsedReservedItinerary IE2) 0 )
		)
	)
	(:event T5_arrivesAtEndpoint_E_plus
		:parameters()
		:precondition (and
			(>= time  186 )
			(not (trainHasEnteredStation T5))
			(not (trainIsAtEndpoint T5 E_plus))
		)
		:effect (and
			(trainIsAtEndpoint T5 E_plus)
			(trainHasArrivedAtStation T5)
			(assign (trainEntryIndex T5) (trainsArrivedAtEndpoint E_plus))
			(increase (trainsArrivedAtEndpoint E_plus) 1 )
		)
	)
	(:action T5_entersStation_IE1
		:parameters()
		:precondition (and
			(trainIsAtEndpoint T5 E_plus)
			(not (trainHasExitedStation T5))
			(not (trainHasEnteredStation T5))
			(= (trainEntryIndex T5) (trainsEnteredFromEndpoint E_plus))
			(not (binBitIsBlocked cdbbs))
			(not (binBitIsBlocked cdbbp))
			(not (binBitIsBlocked cdbbl))
			(not (binBitIsBlocked cdbbe))
			(not (binBitIsBlocked cdbaz))
			(not (binBitIsBlocked cdbau))
			(not (binBitIsBlocked cdbap))
		)
		:effect (and
			(not (trainIsAtEndpoint T5 E_plus))
			(itineraryIsReserved IE1)
			(not (trainEntersStationAt T5 F04))
			(trainInItinerary T5 IE1)
			(trainHasEnteredStation T5)
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
	(:event T5_completeItinerary_IE1
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 60 )
			(itineraryIsReserved IE1)
			(trainInItinerary T5 IE1)
			(not (trainHasCompletedItinerary T5 IE1))
			(not (trainHasExitedStation T5))
		)
		:effect (and
			(trainHasCompletedItinerary T5 IE1)
		)
	)
	(:event T5_completeBinBit_IE1_cdbbs
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 8 )
			(trainInItinerary T5 IE1)
			(binBitIsBlocked cdbbs)
		)
		:effect (and
			(not (binBitIsBlocked cdbbs))
		)
	)
	(:event T5_completeBinBit_IE1_cdbbp
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 17 )
			(trainInItinerary T5 IE1)
			(binBitIsBlocked cdbbp)
		)
		:effect (and
			(not (binBitIsBlocked cdbbp))
		)
	)
	(:event T5_completeBinBit_IE1_cdbbl
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 25 )
			(trainInItinerary T5 IE1)
			(binBitIsBlocked cdbbl)
		)
		:effect (and
			(not (binBitIsBlocked cdbbl))
		)
	)
	(:event T5_completeBinBit_IE1_cdbbe
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 34 )
			(trainInItinerary T5 IE1)
			(binBitIsBlocked cdbbe)
		)
		:effect (and
			(not (binBitIsBlocked cdbbe))
		)
	)
	(:event T5_completeBinBit_IE1_cdbaz
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 42 )
			(trainInItinerary T5 IE1)
			(binBitIsBlocked cdbaz)
		)
		:effect (and
			(not (binBitIsBlocked cdbaz))
		)
	)
	(:event T5_completeBinBit_IE1_cdbau
		:parameters()
		:precondition (and
			(>= (timeElapsedReservedItinerary IE1) 51 )
			(trainInItinerary T5 IE1)
			(binBitIsBlocked cdbau)
		)
		:effect (and
			(not (binBitIsBlocked cdbau))
		)
	)
	(:action T5_beginStop_IE1_S_I
		:parameters()
		:precondition (and
			(trainHasCompletedItinerary T5 IE1)
			(trainInItinerary T5 IE1)
			(not (trainIsOverlapping T5))
			(not (stopIsOccupied S_I))
			(not (trainIsStopping T5))
			(not (trainHasStoppedAtStop T5 S_I))
		)
		:effect (and
			(trainIsStoppingAtStop T5 S_I)
			(trainHasReachedTheStop T5 S_I)
			(trainHasReachedAStop T5)
			(trainIsStopping T5)
			(assign (trainStopTime T5) 0 )
			(stopIsOccupied S_I)
			(not (itineraryIsReserved IE1))
		)
	)
	(:event T5_endStop_IE1_S_I
		:parameters()
		:precondition (and
			(>= (trainStopTime T5) 100 )
			(trainInItinerary T5 IE1)
			(trainIsStoppingAtStop T5 S_I)
			(stopIsOccupied S_I)
		)
		:effect (and
			(assign (trainStopTime T5) 0 )
			(not (trainIsStoppingAtStop T5 S_I))
			(not (trainIsStopping T5))
			(trainHasStoppedAtStop T5 S_I)
			(trainHasStopped T5)
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
	(:action T5_trainEndsVoy_IE1_S_I
		:parameters()
		:precondition (and
			(trainInItinerary T5 IE1)
			(trainHasStopped T5)
			(trainHasStoppedAtStop T5 S_I)
			(not (trainHasEndedVoy T5))
		)
		:effect (and
			(not (trainInItinerary T5 IE1))
			(trainHasExitedStation T5)
			(trainHasEndedVoy T5)
			(assign (timeElapsedReservedItinerary IE1) 0 )
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

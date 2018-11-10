// Copyright (c) 2018, The TurtleCoin Developers
// Copyright (c) 2018, The Calex Developers
//
// Please see the included LICENSE file for more information.
//

package walletdmanager

const (
	// DefaultTransferFee is the default fee. It is expressed in TRTL
	DefaultTransferFee float64 = 0.1

	logWalletdCurrentSessionFilename     = "amity-service-session.log"
	logWalletdAllSessionsFilename        = "amity-service.log"
	logTurtleCoindCurrentSessionFilename = "AmityCoind-session.log"
	logTurtleCoindAllSessionsFilename    = "AmityCoind.log"
	walletdLogLevel                      = "3" // should be at least 3 as I use some logs messages to confirm creation of wallet
	walletdCommandName                   = "amity-service"
	amitycoindCommandName               = "AmityCoind"
)

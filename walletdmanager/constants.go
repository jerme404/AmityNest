// Copyright (c) 2018, The TurtleCoin Developers
// Copyright (c) 2018, The The FRED Project
//
// Please see the included LICENSE file for more information.
//

package walletdmanager

const (
	// DefaultTransferFee is the default fee. It is expressed in TRTL
	DefaultTransferFee float64 = 0.1

	logWalletdCurrentSessionFilename     = "FRED-walletd-session.log"
	logWalletdAllSessionsFilename        = "FRED-walletd.log"
	logTurtleCoindCurrentSessionFilename = "FREDdaemon-session.log"
	logTurtleCoindAllSessionsFilename    = "FREDdaemon.log"
	walletdLogLevel                      = "3" // should be at least 3 as I use some logs messages to confirm creation of wallet
	walletdCommandName                   = "FRED-walletd"
	turtlecoindCommandName               = "FREDdaemon"
)

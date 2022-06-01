" Vim syntax file
" Language: Docsis
" Maintainer: Shad
" Last Change:  2022-06-01

if exists("b:current_syntax")
    finish
endif

let b:current_syntax = "docsis"

" Keywords
syn keyword CMTSKeyword DownstreamFrequency UpstreamChannelId NetworkAccess ClassOfService BaselinePrivacy VendorSpecific CmMic MaxCPE TftpTimestamp TftpModemAddress UsPacketClass DsPacketClass UsServiceFlow DsServiceFlow MaxClassifiers GlobalPrivacyEnable PHS SubMgmtControl SubMgmtCpeTable SubMgmtFilters TestMode
syn keyword PHSKeyword PHSClassifierRef PHSClassifierId PHSVerify PHSServiceFlowId PHSField PHSIndex PHSSize PHSServiceFlowRef PHSMask
syn keyword UsPacketClassKeyword ServiceFlowRef RulePriority DscAction ActivationState LLCPacketClassifier ClassifierId ClassifierRef ServiceFlowId IpPacketClassifier IEEE802Classifier
syn keyword LLCPacketClassifierKeyword SrcMacAddress EtherType DstMacAddress
syn keyword IpPacketClassifierKeyword IpSrcAddr IpSrcMask DstPortStart SrcPortEnd DstPortEnd IpDstMask IpDstAddr IpProto SrcPortStart IpTos
syn keyword IEEE802ClassifierKeyword VlanID UserPriority
syn keyword DsPacketClassKeyword ActivationState LLCPacketClassifier ServiceFlowRef RulePriority DscAction IpPacketClassifier ServiceFlowId IEEE802Classifier ClassifierId ClassifierRef
syn keyword IpPacketClassifierKeyword SrcPortStart IpTos IpProto DstPortEnd IpDstMask IpDstAddr SrcPortEnd DstPortStart IpSrcMask IpSrcAddr
syn keyword IEEE802ClassifierKeyword VlanID UserPriority
syn keyword DsChannelListKeyword DefaultScanTimeout SingleDsChannel DsFreqRange
syn keyword SingleDsChannelKeyword SingleDsFrequency SingleDsTimeout
syn keyword DsFreqRangeKeyword DsFreqRangeEnd DsFreqRangeTimeout DsFreqRangeStepSize DsFreqRangeStart
syn keyword ModemCapabilitiesKeyword ConcatenationSupport IGMPSupport FragmentationSupport PHSSupport DownstreamSAIDSupport UpstreamSIDSupport BaselinePrivacySupport ModemDocsisVersion DCCSupport
syn keyword SnmpV3TrapReceiverKeyword SnmpV3TrapRxIP SnmpV3TrapRxFilterOID SnmpV3TrapRxType SnmpV3TrapRxRetries SnmpV3TrapRxPort SnmpV3TrapRxTimeout SnmpV3TrapRxSecurityName
syn keyword eRouterKeyword InitializationMode ManagementServer InitializationModeOverride TR69ManagementServer
syn keyword ManagementServerKeyword ConnectionRequestPassword URL Username EnableCWMP ACSOverride ConnectionRequestUsername Password
syn keyword BaselinePrivacyKeyword TEKGraceTime SAMapMaxRetries OperTimeout ReKeyTimeout ReAuthTimeout SAMapWaitTimeout AuthGraceTime AuthTimeout AuthRejectTimeout
syn keyword DsServiceFlowKeyword MaxTrafficBurst DsVendorSpecific MaxDsLatency MinResPacketSize TrafficPriority DsServiceFlowRef AdmQosParamsTimeout ServiceClassName MinReservedRate DsServiceFlowId QosParamSetType MaxRateSustained ActQosParamsTimeout
syn keyword SnmpV3KickstartKeyword SnmpV3SecurityName SnmpV3MgrPublicNumber
syn keyword ClassOfServiceKeyword MaxBurstUp PrivacyEnable ClassID MaxRateDown MaxRateUp GuaranteedUp PriorityUp
syn keyword UsServiceFlowKeyword GrantsPerInterval MaxTrafficBurst UsServiceFlowRef NominalGrantInterval IpTosOverwrite UnsolicitedGrantSize UsVendorSpecific NominalPollInterval MinResPacketSize TrafficPriority ServiceClassName UsServiceFlowId RequestOrTxPolicy AdmQosParamsTimeout ToleratedGrantJitter ActQosParamsTimeout ToleratedPollJitter MinReservedRate SchedulingType QosParamSetType MaxConcatenatedBurst MaxRateSustained
syn keyword L2VPNEncodingKeyword VPNIdentifier NSIEncapsulation
syn keyword NSIEncapsulationKeyword  NSIEncapsulationSingleQTag
syn keyword VendorSpecificKeyword VendorIdentifier L2VPNEncoding
syn keyword ChannelAssignmentConfigKeywork CaTransmit CaReceive
syn keyword globalKeyword CpeMacAddress
syn keyword globalKeyword SnmpCpeAccessControl
syn keyword globalKeyword SnmpMibObject
syn keyword globalKeyword MfgCVCData
syn keyword globalKeyword SwUpgradeServer
syn keyword globalKeyword SwUpgradeServer6
syn keyword globalKeyword GenericTLV
syn keyword globalKeyword MtaConfigDelimiter
syn keyword globalKeyword SwUpgradeFilename
syn keyword globalKeyword CmtsMic
syn keyword globalKeyword DocsisTwoEnable
syn keyword globalKeyword ModemCapabilities
syn keyword globalKeyword SnmpV3Kickstart
syn keyword globalKeyword SnmpV3TrapReceiver
syn keyword globalKeyword SnmpWriteControl
syn keyword globalKeyword DsChannelList
syn keyword globalKeyword eRouter
syn keyword globalKeyword ChannelAssignmentConfig

syn match Number '-\?\d\+'
syn match SnmpObject '\.\?[1-9A-Za-z-]\+\(\.\d\+\)\+'
syn match Ip '\(\.\)\@<!\d\{1,3}\(\.\d\{1,3}\)\{3}\(\.\)\@!'
syn match IPv6  /[a-fA-F0-9:]*::[a-fA-F0-9:.]*/
syn match IPv6  /[a-fA-F0-9:]\+:[a-fA-F0-9:]\+:[a-fA-F0-9:.]\+/
syn match Ether '\x\{2}\(:\x\{2}\)\{5}'
syn match Hexstr '0x\x\+'


syn keyword TLVKeyword TlvCode TlvLength nextgroup=Number skipwhite
syn keyword TLVValueKeyword TlvValue nextgroup=Hexstr skipwhite
syn keyword snmpType IPAddress Integer HexString String Gauge Gauge32 TimeTicks

syn region DescBlock start="{" end="}" fold transparent
syn region comment start="/\*" end="\*/"
syn region comment start="/\*" end="\*/"
syn region StringDouble start=+"+ skip=+\\\\\|\\"+ end=+"+
syn region StringSimple start=+'+ skip=+\\\\\|\\"+ end=+'+


hi def link CMTSKeyword                          Function
hi def link PHSKeyword                           Statement
hi def link UsPacketClassKeyword                 Statement
hi def link LLCPacketClassifierKeyword           Statement
hi def link IpPacketClassifierKeyword            Statement
hi def link IEEE802ClassifierKeyword             Statement
hi def link DsPacketClassKeyword                 Statement
hi def link IpPacketClassifierKeyword            Statement
hi def link IEEE802ClassifierKeyword             Statement
hi def link DsChannelListKeyword                 Statement
hi def link SingleDsChannelKeyword               Statement
hi def link DsFreqRangeKeyword                   Statement
hi def link ModemCapabilitiesKeyword             Statement
hi def link SnmpV3TrapReceiverKeyword            Statement
hi def link eRouterKeyword                       Statement
hi def link ManagementServerKeyword              Statement
hi def link BaselinePrivacyKeyword               Statement
hi def link DsServiceFlowKeyword                 Statement
hi def link SnmpV3KickstartKeyword               Statement
hi def link ClassOfServiceKeyword                Statement
hi def link UsServiceFlowKeyword                 Statement
hi def link L2VPNEncodingKeyword                 Statement
hi def link NSIEncapsulationKeyword              Statement
hi def link VendorSpecificKeyword                Statement
hi def link ChannelAssignmentConfigKeywork       Statement
hi def link globalKeyword                        Statement

hi def link Todo                    Todo
hi def link Comment                 Comment
hi def link TLVKeyword              Type
hi def link TLVValueKeyword         Type
hi def link Hexstr                  Number
hi def link Ip                      PreProc
hi def link IPv6                    PreProc
hi def link Number                  Number
hi def link snmpType                Type
hi def link StringDouble            String
hi def link StringSimple            String
hi def link ether                   Special

set foldmethod=syntax

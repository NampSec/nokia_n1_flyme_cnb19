About V1_no_modem configurations.

This is scalability port from N1 MR0 with following changes:

 - AndroidBoard.mk
   1) Based on V1_7260 and remove unnecessary variant copy
   2) Use scalability version of 2 routing_xxx.pfw
 - Direct copy following files from V1_7260 catalog w/o changes
   1) XML/Structure/Audio/AudioClass.xml
   2) XML/Structure/Route/RouteSubsystem.xml
   3) XML/Settings/Route/routes.pfw
 - Based on MR1 new config and modify to meet N1 changes
   1) XML/Settings/Audio/routing_hwcodec.pfw
      a) Remove Hac related domain
      b) Disable DMIC1,2
      c) Enable right speaker (IHF)
   2) XML/Settings/Audio/routing_sst.pfw
      a) Remove DMIC1,2 use DMIC0.
   3) XML/Settings/Audio/AudioConfigurableDomains.xml
      a) WM8958 tuning data


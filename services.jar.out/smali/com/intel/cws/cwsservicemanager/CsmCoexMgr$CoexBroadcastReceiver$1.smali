.class Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "CsmCoexMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;)V
    .locals 0

    .prologue
    .line 2462
    iput-object p1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2467
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$000()Z

    move-result v13

    if-eqz v13, :cond_0

    const-string v13, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "CoexBroadcastReceiver received intent: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2470
    :cond_0
    const-string v13, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 2471
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    iget-object v13, v13, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    const-string v14, "state"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mIsAirPlaneMode:Z
    invoke-static {v13, v14}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$5002(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;Z)Z

    .line 2473
    const-string v13, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "CoexBroadcastReceiver got Airplane Mode "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    iget-object v15, v15, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mIsAirPlaneMode:Z
    invoke-static {v15}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$5000(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2474
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    iget-object v13, v13, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mIsAirPlaneMode:Z
    invoke-static {v13}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$5000(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 2475
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    iget-object v13, v13, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    const/4 v14, 0x0

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mIsModemUp:Z
    invoke-static {v13, v14}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$3802(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;Z)Z

    .line 2507
    :cond_1
    :goto_0
    const-string v13, "intel.intent.action.ACTION_COEX_INFO"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 2510
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    iget-object v13, v13, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    iget-object v13, v13, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mParser:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATParser;

    if-nez v13, :cond_5

    .line 2511
    const-string v13, "CWS_SERVICE_MGR-CoexMgr"

    const-string v14, "CoexBroadcastReceiver - mParser is null"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2834
    :cond_2
    :goto_1
    return-void

    .line 2479
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    iget-object v13, v13, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    const/4 v14, 0x1

    # invokes: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->enableStatusBandReporting(Z)V
    invoke-static {v13, v14}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$5100(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;Z)V

    .line 2481
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    iget-object v13, v13, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mIsModemUp:Z
    invoke-static {v13}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$3800(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 2484
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    iget-object v13, v13, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # invokes: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->subscribeToNRTEvents()Z
    invoke-static {v13}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$3600(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Z

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_4

    .line 2485
    const-string v13, "CWS_SERVICE_MGR-CoexMgr"

    const-string v14, "Failed to subscribe to NRT Events after CSM connection changed\n"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2488
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    iget-object v13, v13, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    const/4 v14, 0x1

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mIsModemUp:Z
    invoke-static {v13, v14}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$3802(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;Z)Z

    .line 2500
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mModemVersion:Ljava/lang/String;
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$4100()Ljava/lang/String;

    move-result-object v13

    const-string v14, "XMM_7160"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 2501
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    # invokes: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->EnableRTCoexMode()V
    invoke-static {v13}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->access$5200(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;)V

    goto :goto_0

    .line 2515
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    const-string v14, "CoexInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mResponse:Ljava/lang/String;
    invoke-static {v13, v14}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->access$5302(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;Ljava/lang/String;)Ljava/lang/String;

    .line 2516
    const-string v13, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "CoexBroadcastReceiver got : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mResponse:Ljava/lang/String;
    invoke-static {v15}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->access$5300(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2519
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    iget-object v13, v13, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    iget-object v13, v13, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mParser:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATParser;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mResponse:Ljava/lang/String;
    invoke-static {v14}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->access$5300(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATParser;->parseString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2520
    .local v7, "parsedResponse":[Ljava/lang/String;
    if-eqz v7, :cond_6

    .line 2521
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    # invokes: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->doBroadcastWork([Ljava/lang/String;)V
    invoke-static {v13, v7}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->access$5400(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;[Ljava/lang/String;)V

    .line 2526
    .end local v7    # "parsedResponse":[Ljava/lang/String;
    :cond_6
    const-string v13, "intel.intent.action.ACTION_REG_STATUS_AND_BAND_IND"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 2528
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    iget-object v13, v13, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    const-string v14, "regStatus"

    const/4 v15, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mRegistrationStatus:I
    invoke-static {v13, v14}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$5502(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;I)I

    .line 2530
    const-string v13, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "CoexBroadcastReceiver got modem status: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    iget-object v15, v15, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mRegistrationStatus:I
    invoke-static {v15}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$5500(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2532
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    iget-object v13, v13, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    const-string v14, "band"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mRegistrationBand:Ljava/lang/String;
    invoke-static {v13, v14}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$5602(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;Ljava/lang/String;)Ljava/lang/String;

    .line 2534
    const-string v13, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "CoexBroadcastReceiver got modem band: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    iget-object v15, v15, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mRegistrationBand:Ljava/lang/String;
    invoke-static {v15}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$5600(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2536
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    # invokes: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->configureCoex()V
    invoke-static {v13}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->access$5700(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;)V

    .line 2540
    :cond_7
    const-string v13, "CSM Connection Update Intent"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 2542
    const/4 v10, 0x0

    .line 2543
    .local v10, "setWifi":I
    const/4 v9, 0x0

    .line 2546
    .local v9, "setBt":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    const/4 v14, 0x0

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mCsmCltState:B
    invoke-static {v13, v14}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->access$5802(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;B)B

    .line 2549
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    const-string v14, "CSM Connections Changed"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mCsmCltState:B
    invoke-static {v15}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->access$5800(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;)B

    move-result v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v14

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mCsmCltState:B
    invoke-static {v13, v14}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->access$5802(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;B)B

    .line 2553
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mCsmCltState:B
    invoke-static {v13}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->access$5800(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;)B

    move-result v13

    and-int/lit8 v13, v13, 0x10

    if-eqz v13, :cond_1f

    .line 2554
    const-string v13, "CWS_SERVICE_MGR-CoexMgr"

    const-string v14, "CoexBroadcastReceiver got Modem UP"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2555
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    iget-object v13, v13, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mIsAirPlaneMode:Z
    invoke-static {v13}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$5000(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 2559
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    iget-object v13, v13, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    const/4 v14, 0x1

    # invokes: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->enableStatusBandReporting(Z)V
    invoke-static {v13, v14}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$5100(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;Z)V

    .line 2561
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    iget-object v13, v13, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mIsModemUp:Z
    invoke-static {v13}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$3800(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 2565
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    iget-object v13, v13, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # invokes: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->subscribeToNRTEvents()Z
    invoke-static {v13}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$3600(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Z

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_8

    .line 2566
    const-string v13, "CWS_SERVICE_MGR-CoexMgr"

    const-string v14, "Failed to subscribe to NRT Events after CSM connection changed\n"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2570
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    iget-object v13, v13, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    const/4 v14, 0x1

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mIsModemUp:Z
    invoke-static {v13, v14}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$3802(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;Z)Z

    .line 2583
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mModemVersion:Ljava/lang/String;
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$4100()Ljava/lang/String;

    move-result-object v13

    const-string v14, "XMM_7160"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 2584
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    # invokes: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->EnableRTCoexMode()V
    invoke-static {v13}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->access$5200(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;)V

    .line 2602
    :cond_9
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mCsmCltState:B
    invoke-static {v13}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->access$5800(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;)B

    move-result v13

    and-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_20

    .line 2603
    const/4 v10, 0x1

    .line 2608
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    # invokes: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->configureWlanRTCoex()Z
    invoke-static {v13}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->access$5900(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;)Z

    .line 2614
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mCsmCltState:B
    invoke-static {v13}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->access$5800(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;)B

    move-result v13

    and-int/lit8 v13, v13, 0x4

    if-eqz v13, :cond_a

    .line 2615
    const/4 v9, 0x1

    .line 2617
    :cond_a
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$000()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 2618
    const-string v13, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "CoexBroadcastReceiver got state from client : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mCsmCltState:B
    invoke-static {v15}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->access$5800(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;)B

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",Wifi: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", Bt: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2621
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    iget-object v13, v13, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiActive:I
    invoke-static {v13}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2300(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)I

    move-result v13

    if-ne v13, v10, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    iget-object v13, v13, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBtActive:I
    invoke-static {v13}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2200(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)I

    move-result v13

    if-eq v13, v9, :cond_23

    .line 2623
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    iget-object v13, v13, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiActive:I
    invoke-static {v13, v10}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2302(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;I)I

    .line 2624
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    iget-object v13, v13, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBtActive:I
    invoke-static {v13, v9}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2202(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;I)I

    .line 2633
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mModemVersion:Ljava/lang/String;
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$4100()Ljava/lang/String;

    move-result-object v13

    const-string v14, "XMM_7160"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_d

    .line 2634
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    iget-object v13, v13, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mIsModemUp:Z
    invoke-static {v13}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$3800(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_d

    .line 2639
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    # invokes: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->EnableRTCoexMode()V
    invoke-static {v13}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->access$5200(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;)V

    .line 2650
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    iget-object v13, v13, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiActive:I
    invoke-static {v13}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2300(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    iget-object v13, v13, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBtActive:I
    invoke-static {v13}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2200(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    iget-object v13, v13, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNeedConfigureCoex:Z
    invoke-static {v13}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$3900(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_21

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    iget-object v13, v13, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mIsModemUp:Z
    invoke-static {v13}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$3800(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_21

    .line 2652
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    # invokes: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->configureCoex()V
    invoke-static {v13}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->access$5700(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;)V

    .line 2672
    .end local v9    # "setBt":I
    .end local v10    # "setWifi":I
    :cond_f
    :goto_4
    const-string v13, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16

    .line 2673
    const-string v13, "CWS_SERVICE_MGR-CoexMgr"

    const-string v14, "CoexBroadcastReceiver got WifiP2pManager event"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2675
    const-string v13, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    .line 2678
    .local v4, "extraNetinfo":Landroid/net/NetworkInfo;
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$000()Z

    move-result v13

    if-eqz v13, :cond_10

    if-eqz v4, :cond_10

    .line 2679
    const-string v13, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "CoexBroadcastReceiver, wifi p2p clt state: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2682
    :cond_10
    if-eqz v4, :cond_16

    .line 2683
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v13, v14, :cond_15

    .line 2684
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$000()Z

    move-result v13

    if-eqz v13, :cond_11

    const-string v13, "CWS_SERVICE_MGR-CoexMgr"

    const-string v14, "CoexBroadcastReceiver, P2P CONNECTED"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2686
    :cond_11
    const-string v13, "wifiP2pInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 2689
    .local v12, "wp2pinfo":Landroid/net/wifi/p2p/WifiP2pInfo;
    if-eqz v12, :cond_12

    .line 2690
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$000()Z

    move-result v13

    if-eqz v13, :cond_12

    .line 2691
    iget-boolean v13, v12, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    if-eqz v13, :cond_12

    .line 2692
    const-string v13, "CWS_SERVICE_MGR-CoexMgr"

    const-string v14, "CoexBroadcastReceiver, this device is group owner"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2698
    :cond_12
    const-string v13, "p2pGroupInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 2701
    .local v11, "wp2pgroup":Landroid/net/wifi/p2p/WifiP2pGroup;
    if-eqz v11, :cond_15

    .line 2703
    const/4 v3, 0x0

    .line 2705
    .local v3, "error":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    const-string v15, "getFrequency"

    const/4 v13, 0x0

    check-cast v13, [Ljava/lang/Class;

    invoke-virtual {v14, v15, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 2708
    .local v5, "getFrequency":Ljava/lang/reflect/Method;
    const/4 v13, 0x0

    check-cast v13, [Ljava/lang/Object;

    invoke-virtual {v5, v11, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 2710
    .local v8, "result":Ljava/lang/Object;
    instance-of v13, v8, Ljava/lang/Integer;

    if-eqz v13, :cond_13

    .line 2711
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    check-cast v8, Ljava/lang/Integer;

    .end local v8    # "result":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v14

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mFrequency:I
    invoke-static {v13, v14}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->access$6102(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;I)I

    .line 2712
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    iget-object v14, v14, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mFrequency:I
    invoke-static {v15}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->access$6100(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;)I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->frequencyToWifiChannel(I)I

    move-result v14

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mWifiChannel:I
    invoke-static {v13, v14}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->access$6002(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;I)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2724
    .end local v5    # "getFrequency":Ljava/lang/reflect/Method;
    :cond_13
    :goto_5
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$000()Z

    move-result v13

    if-eqz v13, :cond_14

    .line 2725
    if-nez v3, :cond_24

    .line 2726
    const-string v13, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "CoexBroadcastReceiver, P2P CONNECTED on Freq:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mFrequency:I
    invoke-static {v15}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->access$6100(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", Channel:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mWifiChannel:I
    invoke-static {v15}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->access$6000(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2732
    :cond_14
    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    # invokes: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->configureCoex()V
    invoke-static {v13}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->access$5700(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;)V

    .line 2736
    .end local v3    # "error":Ljava/lang/String;
    .end local v11    # "wp2pgroup":Landroid/net/wifi/p2p/WifiP2pGroup;
    .end local v12    # "wp2pinfo":Landroid/net/wifi/p2p/WifiP2pInfo;
    :cond_15
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v13, v14, :cond_16

    .line 2738
    const-string v13, "CWS_SERVICE_MGR-CoexMgr"

    const-string v14, "CoexBroadcastReceiver, P2P DISCONNECTED"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2741
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    const/4 v14, 0x0

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mWifiChannel:I
    invoke-static {v13, v14}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->access$6002(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;I)I

    .line 2743
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    iget-object v13, v13, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # invokes: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->subscribeToNRTEvents()Z
    invoke-static {v13}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$3600(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Z

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_25

    .line 2744
    const-string v13, "CWS_SERVICE_MGR-CoexMgr"

    const-string v14, "DISC P2P :Failed to (re)subscribe to NRT Events\n"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2754
    .end local v4    # "extraNetinfo":Landroid/net/NetworkInfo;
    :cond_16
    :goto_7
    const-string v13, "android.net.wifi.STATE_CHANGE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 2755
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$000()Z

    move-result v13

    if-eqz v13, :cond_17

    const-string v13, "CWS_SERVICE_MGR-CoexMgr"

    const-string v14, "CoexBroadcastReceiver got WifiManager event"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2757
    :cond_17
    const-string v13, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    .line 2760
    .restart local v4    # "extraNetinfo":Landroid/net/NetworkInfo;
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$000()Z

    move-result v13

    if-eqz v13, :cond_18

    if-eqz v4, :cond_18

    .line 2761
    const-string v13, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "CoexBroadcastReceiver, wifi clt state: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2765
    :cond_18
    if-eqz v4, :cond_2

    .line 2767
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v13, v14, :cond_1e

    .line 2769
    const-string v13, "CWS_SERVICE_MGR-CoexMgr"

    const-string v14, "CoexBroadcastReceiver, CONNECTED"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2775
    const-string v13, "bssid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2777
    .local v1, "bssid":Ljava/lang/String;
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$000()Z

    move-result v13

    if-eqz v13, :cond_19

    if-nez v1, :cond_19

    .line 2778
    const-string v13, "CWS_SERVICE_MGR-CoexMgr"

    const-string v14, "CoexBroadcastReceiver, bssid is null!"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2780
    :cond_19
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$000()Z

    move-result v13

    if-eqz v13, :cond_1a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    iget-object v13, v13, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v13}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$4900(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    if-nez v13, :cond_1a

    .line 2781
    const-string v13, "CWS_SERVICE_MGR-CoexMgr"

    const-string v14, "CoexBroadcastReceiver, mWifiManager is null!"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2783
    :cond_1a
    if-eqz v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    iget-object v13, v13, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v13}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$4900(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    if-eqz v13, :cond_1e

    .line 2784
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    iget-object v14, v14, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v14}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$4900(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Landroid/net/wifi/WifiManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v14

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mScanResult:Ljava/util/List;
    invoke-static {v13, v14}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->access$6202(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;Ljava/util/List;)Ljava/util/List;

    .line 2785
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mScanResult:Ljava/util/List;
    invoke-static {v13}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->access$6200(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;)Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_1e

    .line 2787
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mScanResult:Ljava/util/List;
    invoke-static {v13}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->access$6200(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_1b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/ScanResult;

    .line 2789
    .local v8, "result":Landroid/net/wifi/ScanResult;
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$000()Z

    move-result v13

    if-eqz v13, :cond_1c

    .line 2790
    const-string v13, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "CoexBroadcastReceiver, bssid ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "],len: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2792
    const-string v13, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "CoexBroadcastReceiver, result.BSSID ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v8, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "],len: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v8, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2794
    const-string v13, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "CoexBroadcastReceiver, result.frequency "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v8, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2798
    :cond_1c
    iget-object v13, v8, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_1b

    .line 2800
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    iget v14, v8, Landroid/net/wifi/ScanResult;->frequency:I

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mFrequency:I
    invoke-static {v13, v14}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->access$6102(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;I)I

    .line 2801
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    iget-object v14, v14, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mFrequency:I
    invoke-static {v15}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->access$6100(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;)I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->frequencyToWifiChannel(I)I

    move-result v14

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mWifiChannel:I
    invoke-static {v13, v14}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->access$6002(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;I)I

    .line 2803
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$000()Z

    move-result v13

    if-eqz v13, :cond_1d

    .line 2804
    const-string v13, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "CoexBroadcastReceiver, CONNECTED on "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v8, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",Frequency:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mFrequency:I
    invoke-static {v15}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->access$6100(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", Channel:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mWifiChannel:I
    invoke-static {v15}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->access$6000(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2808
    :cond_1d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    # invokes: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->configureCoex()V
    invoke-static {v13}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->access$5700(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;)V

    .line 2818
    .end local v1    # "bssid":Ljava/lang/String;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "result":Landroid/net/wifi/ScanResult;
    :cond_1e
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v13, v14, :cond_2

    .line 2820
    const-string v13, "CWS_SERVICE_MGR-CoexMgr"

    const-string v14, "CoexBroadcastReceiver, DISCONNECTED"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2823
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    const/4 v14, 0x0

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mWifiChannel:I
    invoke-static {v13, v14}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->access$6002(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;I)I

    .line 2825
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    iget-object v13, v13, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # invokes: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->subscribeToNRTEvents()Z
    invoke-static {v13}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$3600(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Z

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_26

    .line 2826
    const-string v13, "CWS_SERVICE_MGR-CoexMgr"

    const-string v14, "DISC:Failed to (re)subscribe to NRT Events\n"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2588
    .end local v4    # "extraNetinfo":Landroid/net/NetworkInfo;
    .restart local v9    # "setBt":I
    .restart local v10    # "setWifi":I
    :cond_1f
    const-string v13, "CWS_SERVICE_MGR-CoexMgr"

    const-string v14, "CoexBroadcastReceiver got Modem DOWN"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2589
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    iget-object v13, v13, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    const/4 v14, 0x0

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mIsModemUp:Z
    invoke-static {v13, v14}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$3802(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;Z)Z

    .line 2590
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mModemVersion:Ljava/lang/String;
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$4100()Ljava/lang/String;

    move-result-object v13

    const-string v14, "XMM_7160"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    goto/16 :goto_2

    .line 2611
    :cond_20
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    const/4 v14, 0x0

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mWifiChannel:I
    invoke-static {v13, v14}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->access$6002(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;I)I

    goto/16 :goto_3

    .line 2655
    :cond_21
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    iget-object v13, v13, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # invokes: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->subscribeToNRTEvents()Z
    invoke-static {v13}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$3600(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Z

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_22

    .line 2656
    const-string v13, "CWS_SERVICE_MGR-CoexMgr"

    const-string v14, "Failed to (re)subscribe to NRT Events for WIFI and BT changes\n"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2659
    :cond_22
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$000()Z

    move-result v13

    if-eqz v13, :cond_f

    const-string v13, "CWS_SERVICE_MGR-CoexMgr"

    const-string v14, "BT/Wifi may be off, resubscribed to NRT"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2663
    :cond_23
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    iget-object v13, v13, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNeedConfigureCoex:Z
    invoke-static {v13}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$3900(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    iget-object v13, v13, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mIsModemUp:Z
    invoke-static {v13}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$3800(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_f

    .line 2665
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    # invokes: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->configureCoex()V
    invoke-static {v13}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->access$5700(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;)V

    goto/16 :goto_4

    .line 2714
    .end local v9    # "setBt":I
    .end local v10    # "setWifi":I
    .restart local v3    # "error":Ljava/lang/String;
    .restart local v4    # "extraNetinfo":Landroid/net/NetworkInfo;
    .restart local v11    # "wp2pgroup":Landroid/net/wifi/p2p/WifiP2pGroup;
    .restart local v12    # "wp2pinfo":Landroid/net/wifi/p2p/WifiP2pInfo;
    :catch_0
    move-exception v2

    .line 2715
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string v3, "remote method \"getFrequency\" not found"

    .line 2722
    goto/16 :goto_5

    .line 2716
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v2

    .line 2717
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "got an IllegalAccessException invoking \"getFrequency\""

    .line 2722
    goto/16 :goto_5

    .line 2719
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 2720
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "got an InvocationTargetException invoking \"getFrequency\""

    goto/16 :goto_5

    .line 2729
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_24
    const-string v13, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to get P2P Frequency, "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2746
    .end local v3    # "error":Ljava/lang/String;
    .end local v11    # "wp2pgroup":Landroid/net/wifi/p2p/WifiP2pGroup;
    .end local v12    # "wp2pinfo":Landroid/net/wifi/p2p/WifiP2pInfo;
    :cond_25
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$000()Z

    move-result v13

    if-eqz v13, :cond_16

    const-string v13, "CWS_SERVICE_MGR-CoexMgr"

    const-string v14, "DISC P2P: subscribe to NRT events"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 2828
    :cond_26
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$000()Z

    move-result v13

    if-eqz v13, :cond_2

    const-string v13, "CWS_SERVICE_MGR-CoexMgr"

    const-string v14, "DISC: subscribe to NRT events"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

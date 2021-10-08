.class Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;
.super Ljava/lang/Object;
.source "CsmCoexMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoexBroadcastReceiver"
.end annotation


# instance fields
.field private final coexBroadcastMessageReceiver:Landroid/content/BroadcastReceiver;

.field private mBroadFilter:Landroid/content/IntentFilter;

.field private mCsmCltState:B

.field private mFrequency:I

.field private mResponse:Ljava/lang/String;

.field private mScanResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiChannel:I

.field final synthetic this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;


# direct methods
.method private constructor <init>(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1784
    iput-object p1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1774
    iput-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mResponse:Ljava/lang/String;

    .line 1775
    iput-byte v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mCsmCltState:B

    .line 1776
    iput-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mBroadFilter:Landroid/content/IntentFilter;

    .line 1777
    iput-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mScanResult:Ljava/util/List;

    .line 1778
    iput v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mFrequency:I

    .line 1779
    iput v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mWifiChannel:I

    .line 2462
    new-instance v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;

    invoke-direct {v0, p0}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver$1;-><init>(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;)V

    iput-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->coexBroadcastMessageReceiver:Landroid/content/BroadcastReceiver;

    .line 1785
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CWS_SERVICE_MGR-CoexMgr"

    const-string v1, "CoexBroadcastReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "intel.intent.action.ACTION_COEX_INFO"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mBroadFilter:Landroid/content/IntentFilter;

    .line 1788
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mBroadFilter:Landroid/content/IntentFilter;

    const-string v1, "CSM Connection Update Intent"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1789
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mBroadFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1790
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mBroadFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1791
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mBroadFilter:Landroid/content/IntentFilter;

    const-string v1, "intel.intent.action.ACTION_REG_STATUS_AND_BAND_IND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1792
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mBroadFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1793
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2100(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->coexBroadcastMessageReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mBroadFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1794
    return-void
.end method

.method synthetic constructor <init>(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;
    .param p2, "x1"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$1;

    .prologue
    .line 1772
    invoke-direct {p0, p1}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;-><init>(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)V

    return-void
.end method

.method private DisableRTCoexMode()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2397
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mCoexDisableRT:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2400()Z

    move-result v0

    if-ne v0, v1, :cond_1

    .line 2398
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CWS_SERVICE_MGR-CoexMgr"

    const-string v1, "RT Coex is disabled, cancelling RT disable request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2407
    :cond_0
    :goto_0
    return-void

    .line 2401
    :cond_1
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiActive:I
    invoke-static {v0}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2300(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 2402
    invoke-direct {p0, v1}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->EnableWlanRTCoexMode(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2403
    const-string v0, "CWS_SERVICE_MGR-CoexMgr"

    const-string v1, "Failed to disable WLAN RT Coex mode\n"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2406
    :cond_2
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    const/4 v1, 0x0

    # invokes: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->broadcastBtRtControl(I)V
    invoke-static {v0, v1}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$4200(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;I)V

    goto :goto_0
.end method

.method private EnableRTCoexMode()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2377
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mCoexDisableRT:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2400()Z

    move-result v0

    if-ne v0, v1, :cond_1

    .line 2378
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CWS_SERVICE_MGR-CoexMgr"

    const-string v1, "RT Coex is disabled, cancelling RT enable request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2387
    :cond_0
    :goto_0
    return-void

    .line 2381
    :cond_1
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiActive:I
    invoke-static {v0}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2300(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 2382
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->EnableWlanRTCoexMode(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2383
    const-string v0, "CWS_SERVICE_MGR-CoexMgr"

    const-string v1, "Failed to enable WLAN RT Coex mode\n"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2386
    :cond_2
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # invokes: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->manageBtRtActivation()V
    invoke-static {v0}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$3100(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)V

    goto :goto_0
.end method

.method private EnableWlanRTCoexMode(I)Z
    .locals 13
    .param p1, "saferx"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2303
    const/4 v3, 0x0

    .line 2305
    .local v3, "res":Z
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$000()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "CWS_SERVICE_MGR-CoexMgr"

    const-string v10, "Enable  WLAN RT coex mode"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2307
    :cond_0
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mCoexDisableRT:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2400()Z

    move-result v7

    if-ne v7, v8, :cond_2

    .line 2308
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$000()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "CWS_SERVICE_MGR-CoexMgr"

    const-string v9, "RT Coex is disabled, cancelling request"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v7, v8

    .line 2366
    :goto_0
    return v7

    .line 2312
    :cond_2
    iget-object v7, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v7}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$4900(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Landroid/net/wifi/WifiManager;

    move-result-object v7

    if-nez v7, :cond_4

    .line 2314
    iget-object v10, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    iget-object v7, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2100(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Landroid/content/Context;

    move-result-object v7

    const-string v11, "wifi"

    invoke-virtual {v7, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v10, v7}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$4902(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;

    .line 2315
    iget-object v7, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v7}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$4900(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Landroid/net/wifi/WifiManager;

    move-result-object v7

    if-nez v7, :cond_4

    .line 2316
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$000()Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "CWS_SERVICE_MGR-CoexMgr"

    const-string v8, "Failed to get Wifi manager Service"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v7, v9

    .line 2317
    goto :goto_0

    .line 2321
    :cond_4
    if-ne p1, v8, :cond_8

    .line 2322
    const/4 p1, 0x0

    .line 2328
    :goto_1
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mModemVersion:Ljava/lang/String;
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$4100()Ljava/lang/String;

    move-result-object v7

    const-string v9, "XMM_7160"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2329
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$000()Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Sending RT Coex command enable: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " channels: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mSafeChannels:I
    invoke-static {v10}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$4500(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2331
    :cond_5
    iget-object v7, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mSafeChannels:I
    invoke-static {v7}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$4500(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)I

    move-result v6

    .line 2338
    .local v6, "tempSafeChannels":I
    :goto_2
    const-string v2, "unknown"

    .line 2340
    .local v2, "error":Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v7}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$4900(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Landroid/net/wifi/WifiManager;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v9, "setRTCoexMode"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v7, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 2343
    .local v5, "setRTCoexMode":Ljava/lang/reflect/Method;
    iget-object v7, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v7}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$4900(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Landroid/net/wifi/WifiManager;

    move-result-object v7

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v5, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 2345
    .local v4, "result":Ljava/lang/Object;
    instance-of v7, v4, Ljava/lang/Boolean;

    if-eqz v7, :cond_6

    .line 2346
    check-cast v4, Ljava/lang/Boolean;

    .end local v4    # "result":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v3

    .line 2356
    .end local v5    # "setRTCoexMode":Ljava/lang/reflect/Method;
    :cond_6
    :goto_3
    if-nez v3, :cond_7

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$000()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2358
    if-ne p1, v8, :cond_b

    .line 2359
    const-string v0, "enable"

    .line 2363
    .local v0, "cmd":Ljava/lang/String;
    :goto_4
    const-string v7, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " RT Coex, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "cmd":Ljava/lang/String;
    :cond_7
    move v7, v3

    .line 2366
    goto/16 :goto_0

    .line 2324
    .end local v2    # "error":Ljava/lang/String;
    .end local v6    # "tempSafeChannels":I
    :cond_8
    const/4 p1, 0x1

    goto/16 :goto_1

    .line 2333
    :cond_9
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$000()Z

    move-result v7

    if-eqz v7, :cond_a

    const-string v7, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Sending RT Coex command enable: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " channels: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x1fff

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2335
    :cond_a
    const/16 v6, 0x1fff

    .restart local v6    # "tempSafeChannels":I
    goto/16 :goto_2

    .line 2348
    .restart local v2    # "error":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2349
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string v2, "remote method \"setRTCoexMode\" not found"

    .line 2354
    goto :goto_3

    .line 2350
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 2351
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "got an IllegalAccessException invoking \"setRTCoexMode\""

    .line 2354
    goto :goto_3

    .line 2352
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 2353
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "got an InvocationTargetException invoking \"setRTCoexMode\""

    goto :goto_3

    .line 2361
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_b
    const-string v0, "disable"

    .restart local v0    # "cmd":Ljava/lang/String;
    goto :goto_4
.end method

.method static synthetic access$5200(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    .prologue
    .line 1772
    invoke-direct {p0}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->EnableRTCoexMode()V

    return-void
.end method

.method static synthetic access$5300(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    .prologue
    .line 1772
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mResponse:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5302(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1772
    iput-object p1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mResponse:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5400(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 1772
    invoke-direct {p0, p1}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->doBroadcastWork([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    .prologue
    .line 1772
    invoke-direct {p0}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->configureCoex()V

    return-void
.end method

.method static synthetic access$5800(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;)B
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    .prologue
    .line 1772
    iget-byte v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mCsmCltState:B

    return v0
.end method

.method static synthetic access$5802(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;B)B
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;
    .param p1, "x1"    # B

    .prologue
    .line 1772
    iput-byte p1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mCsmCltState:B

    return p1
.end method

.method static synthetic access$5900(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    .prologue
    .line 1772
    invoke-direct {p0}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->configureWlanRTCoex()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6000(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;)I
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    .prologue
    .line 1772
    iget v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mWifiChannel:I

    return v0
.end method

.method static synthetic access$6002(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;I)I
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;
    .param p1, "x1"    # I

    .prologue
    .line 1772
    iput p1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mWifiChannel:I

    return p1
.end method

.method static synthetic access$6100(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;)I
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    .prologue
    .line 1772
    iget v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mFrequency:I

    return v0
.end method

.method static synthetic access$6102(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;I)I
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;
    .param p1, "x1"    # I

    .prologue
    .line 1772
    iput p1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mFrequency:I

    return p1
.end method

.method static synthetic access$6200(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    .prologue
    .line 1772
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mScanResult:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6202(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 1772
    iput-object p1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mScanResult:Ljava/util/List;

    return-object p1
.end method

.method private configureCoex()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 2097
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "CWS_SERVICE_MGR-CoexMgr"

    const-string v4, "configureCoex"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    :cond_0
    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mIsModemUp:Z
    invoke-static {v3}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$3800(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2101
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$000()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "CWS_SERVICE_MGR-CoexMgr"

    const-string v4, "configureCoex: MODEM_DOWN, delaying"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    :cond_1
    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNeedConfigureCoex:Z
    invoke-static {v3, v7}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$3902(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;Z)Z

    .line 2250
    :cond_2
    :goto_0
    return-void

    .line 2105
    :cond_3
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$000()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "CWS_SERVICE_MGR-CoexMgr"

    const-string v4, "configureCoex: MODEM_UP"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    :cond_4
    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNeedConfigureCoex:Z
    invoke-static {v3, v9}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$3902(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;Z)Z

    .line 2109
    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # invokes: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->isLteThreateningBandUsed()Z
    invoke-static {v3}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$4000(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 2112
    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    const/4 v4, 0x3

    # invokes: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->setSafe(I)V
    invoke-static {v3, v4}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$3400(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;I)V

    .line 2114
    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiActive:I
    invoke-static {v3}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2300(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)I

    move-result v3

    if-ne v3, v7, :cond_7

    .line 2119
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mModemVersion:Ljava/lang/String;
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$4100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "XMM_7160"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2120
    invoke-direct {p0, v7}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->EnableWlanRTCoexMode(I)Z

    move-result v3

    if-eq v3, v7, :cond_5

    .line 2121
    const-string v3, "CWS_SERVICE_MGR-CoexMgr"

    const-string v4, "Failed to disable RT Coex mode\n"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    :cond_5
    invoke-direct {p0, v9}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->setSafeChannel(I)Z

    move-result v3

    if-eq v3, v7, :cond_6

    .line 2126
    const-string v3, "CWS_SERVICE_MGR-CoexMgr"

    const-string v4, "Failed to set safe channel\n"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2130
    :cond_6
    new-instance v1, Landroid/content/Intent;

    const-string v3, "intel.intent.action.ACTION_COEX_SAFECHANNELS_INFO_WF"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2131
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2132
    .local v0, "coexBundle":Landroid/os/Bundle;
    const-string v3, "CoexSafechannelsWifi"

    invoke-virtual {v0, v3, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2133
    const-string v3, "CoexSafechannels"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2134
    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2100(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/intel/cws/cwsservicemanager/CsmUtil;->csmBroadcastIntent(Landroid/content/Intent;Landroid/content/Context;)V

    .line 2135
    const-string v3, "CWS_SERVICE_MGR-CoexMgr"

    const-string v4, "LTE Threatening band not used, sending WIFI safe channel intent"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    .end local v0    # "coexBundle":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_7
    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBtActive:I
    invoke-static {v3}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2200(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)I

    move-result v3

    if-ne v3, v7, :cond_8

    .line 2140
    const-string v3, "CWS_SERVICE_MGR-CoexMgr"

    const-string v4, "LTE Threatening band not used, send BT safe channel intent"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2142
    new-instance v1, Landroid/content/Intent;

    const-string v3, "intel.intent.action.ACTION_COEX_SAFECHANNELS_INFO"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2143
    .restart local v1    # "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2144
    .restart local v0    # "coexBundle":Landroid/os/Bundle;
    const-string v3, "CoexMinFreqBt"

    const/16 v4, 0x962

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2145
    const-string v3, "CoexMaxFreqBt"

    const/16 v4, 0x9b0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2146
    const-string v3, "CoexSafechannels"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2147
    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2100(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/intel/cws/cwsservicemanager/CsmUtil;->csmBroadcastIntent(Landroid/content/Intent;Landroid/content/Context;)V

    .line 2149
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mModemVersion:Ljava/lang/String;
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$4100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "XMM_7160"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mCoexDisableRT:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2400()Z

    move-result v3

    if-nez v3, :cond_8

    .line 2153
    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # invokes: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->broadcastBtRtControl(I)V
    invoke-static {v3, v9}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$4200(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;I)V

    .line 2158
    .end local v0    # "coexBundle":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_8
    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # invokes: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->subscribeToNRTEvents()Z
    invoke-static {v3}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$3600(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Z

    move-result v3

    if-eq v3, v7, :cond_2

    .line 2159
    const-string v3, "CWS_SERVICE_MGR-CoexMgr"

    const-string v4, "ConfigureCoex: Failed to (re)subscribe to NRT Events\n"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2166
    :cond_9
    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    invoke-virtual {v3}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->getWLANUnifiedRangeMin()I

    move-result v3

    if-eq v3, v8, :cond_d

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # invokes: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->getWLANUnifiedRangeMax()I
    invoke-static {v3}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$4300(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)I

    move-result v3

    if-eq v3, v8, :cond_d

    .line 2168
    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    iget-object v4, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    invoke-virtual {v4}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->getWLANUnifiedRangeMin()I

    move-result v4

    iget-object v5, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # invokes: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->getWLANUnifiedRangeMax()I
    invoke-static {v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$4300(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)I

    move-result v5

    const/16 v6, 0xa

    invoke-virtual {v3, v4, v5, v6}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->frequencyToWifiChannelBitmap(III)I

    move-result v2

    .line 2172
    .local v2, "safeChannels":I
    iget v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mWifiChannel:I

    if-eqz v3, :cond_a

    iget v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mWifiChannel:I

    add-int/lit8 v3, v3, -0x1

    shl-int v3, v7, v3

    and-int/2addr v3, v2

    if-nez v3, :cond_13

    .line 2173
    :cond_a
    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiSafeRx:I
    invoke-static {v3, v7}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$4402(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;I)I

    .line 2178
    :goto_1
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$000()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2179
    const-string v3, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CoexBroadcastReceiver mWifiChannel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mWifiChannel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mWifiSafeRx: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiSafeRx:I
    invoke-static {v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$4400(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2184
    :cond_b
    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mSafeChannels:I
    invoke-static {v3}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$4500(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)I

    move-result v3

    if-eq v3, v8, :cond_c

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mSafeChannels:I
    invoke-static {v3}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$4500(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)I

    move-result v3

    if-eq v3, v2, :cond_d

    .line 2186
    :cond_c
    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mSafeChannels:I
    invoke-static {v3, v2}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$4502(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;I)I

    .line 2189
    new-instance v1, Landroid/content/Intent;

    const-string v3, "intel.intent.action.ACTION_COEX_SAFECHANNELS_INFO_WF"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2190
    .restart local v1    # "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2191
    .restart local v0    # "coexBundle":Landroid/os/Bundle;
    const-string v3, "CoexSafechannelsWifi"

    iget-object v4, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mSafeChannels:I
    invoke-static {v4}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$4500(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2192
    const-string v3, "CoexSafechannels"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2193
    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2100(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/intel/cws/cwsservicemanager/CsmUtil;->csmBroadcastIntent(Landroid/content/Intent;Landroid/content/Context;)V

    .line 2194
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$000()Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "CWS_SERVICE_MGR-CoexMgr"

    const-string v4, "CoexBroadcastReceiver sent WIFI safe channel intent"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    .end local v0    # "coexBundle":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "safeChannels":I
    :cond_d
    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    invoke-virtual {v3}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->getBTUnifiedRangeMin()I

    move-result v3

    if-eq v3, v8, :cond_f

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    invoke-virtual {v3}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->getBTUnifiedRangeMax()I

    move-result v3

    if-eq v3, v8, :cond_f

    .line 2200
    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBTUnifiedRangeMin:I
    invoke-static {v3}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$4600(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)I

    move-result v3

    if-eq v3, v8, :cond_e

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBTUnifiedRangeMax:I
    invoke-static {v3}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$4700(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)I

    move-result v3

    if-eq v3, v8, :cond_e

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBTUnifiedRangeMin:I
    invoke-static {v3}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$4600(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)I

    move-result v3

    iget-object v4, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    invoke-virtual {v4}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->getBTUnifiedRangeMin()I

    move-result v4

    if-ne v3, v4, :cond_e

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBTUnifiedRangeMax:I
    invoke-static {v3}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$4700(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)I

    move-result v3

    iget-object v4, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    invoke-virtual {v4}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->getBTUnifiedRangeMax()I

    move-result v4

    if-eq v3, v4, :cond_f

    .line 2205
    :cond_e
    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    iget-object v4, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    invoke-virtual {v4}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->getBTUnifiedRangeMin()I

    move-result v4

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBTUnifiedRangeMin:I
    invoke-static {v3, v4}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$4602(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;I)I

    .line 2206
    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    iget-object v4, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    invoke-virtual {v4}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->getBTUnifiedRangeMax()I

    move-result v4

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBTUnifiedRangeMax:I
    invoke-static {v3, v4}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$4702(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;I)I

    .line 2209
    new-instance v1, Landroid/content/Intent;

    const-string v3, "intel.intent.action.ACTION_COEX_SAFECHANNELS_INFO"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2210
    .restart local v1    # "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2211
    .restart local v0    # "coexBundle":Landroid/os/Bundle;
    const-string v3, "CoexMinFreqBt"

    iget-object v4, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBTUnifiedRangeMin:I
    invoke-static {v4}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$4600(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2212
    const-string v3, "CoexMaxFreqBt"

    iget-object v4, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBTUnifiedRangeMax:I
    invoke-static {v4}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$4700(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2213
    const-string v3, "CoexSafechannels"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2214
    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2100(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/intel/cws/cwsservicemanager/CsmUtil;->csmBroadcastIntent(Landroid/content/Intent;Landroid/content/Context;)V

    .line 2215
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$000()Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CoexBroadcastReceiver sent BT safe channel intent: Min="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBTUnifiedRangeMin:I
    invoke-static {v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$4600(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Max="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBTUnifiedRangeMax:I
    invoke-static {v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$4700(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    .end local v0    # "coexBundle":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_f
    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBtSafeRx:I
    invoke-static {v3, v8}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$4802(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;I)I

    .line 2229
    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # invokes: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->subscribeToNRTEvents()Z
    invoke-static {v3}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$3600(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Z

    move-result v3

    if-eq v3, v7, :cond_10

    .line 2230
    const-string v3, "CWS_SERVICE_MGR-CoexMgr"

    const-string v4, "ConfigureCoex: Failed to (re)subscribe to NRT Events\n"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2234
    :cond_10
    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiActive:I
    invoke-static {v3}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2300(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)I

    move-result v3

    if-ne v3, v7, :cond_2

    .line 2235
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mModemVersion:Ljava/lang/String;
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$4100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "XMM_7160"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 2237
    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiSafeRx:I
    invoke-static {v3}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$4400(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)I

    move-result v3

    if-ne v3, v8, :cond_14

    .line 2238
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$000()Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "CWS_SERVICE_MGR-CoexMgr"

    const-string v4, "Wifi state is unknown, not setting RT Coex"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2244
    :cond_11
    :goto_2
    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mSafeChannels:I
    invoke-static {v3}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$4500(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)I

    move-result v3

    if-eq v3, v8, :cond_12

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mSafeChannels:I
    invoke-static {v3}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$4500(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->setSafeChannel(I)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 2245
    :cond_12
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "CWS_SERVICE_MGR-CoexMgr"

    const-string v4, "Safe channel set"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2175
    .restart local v2    # "safeChannels":I
    :cond_13
    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiSafeRx:I
    invoke-static {v3, v9}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$4402(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;I)I

    goto/16 :goto_1

    .line 2239
    .end local v2    # "safeChannels":I
    :cond_14
    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiSafeRx:I
    invoke-static {v3}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$4400(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->EnableWlanRTCoexMode(I)Z

    move-result v3

    if-nez v3, :cond_11

    .line 2240
    const-string v3, "CWS_SERVICE_MGR-CoexMgr"

    const-string v4, "Failed to set RT Coex mode\n"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2247
    :cond_15
    const-string v3, "CWS_SERVICE_MGR-CoexMgr"

    const-string v4, "Failed to set safe channel\n"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private configureWlanRTCoex()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 2259
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mCoexDisableRT:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2400()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2260
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$000()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "CWS_SERVICE_MGR-CoexMgr"

    const-string v6, "RT Coex is disabled, cancelling request"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2293
    :cond_0
    :goto_0
    return v3

    .line 2263
    :cond_1
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$4900(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    if-nez v5, :cond_2

    .line 2265
    iget-object v6, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    iget-object v5, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2100(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Landroid/content/Context;

    move-result-object v5

    const-string v7, "wifi"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v6, v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$4902(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;

    .line 2266
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$4900(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    if-nez v5, :cond_2

    .line 2267
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$000()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "CWS_SERVICE_MGR-CoexMgr"

    const-string v6, "Failed to get Wifi manager Service"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2272
    :cond_2
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$000()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "CWS_SERVICE_MGR-CoexMgr"

    const-string v6, "Sending configureWlanRTCoex command"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    :cond_3
    const/4 v3, 0x0

    .line 2275
    .local v3, "res":Z
    const-string v2, "unknown"

    .line 2277
    .local v2, "error":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$4900(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "configureWlanRTCoex"

    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2279
    .local v0, "configureWlanRTCoex":Ljava/lang/reflect/Method;
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$4900(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Landroid/net/wifi/WifiManager;

    move-result-object v6

    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/Object;

    invoke-virtual {v0, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 2280
    .local v4, "result":Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_4

    .line 2281
    check-cast v4, Ljava/lang/Boolean;

    .end local v4    # "result":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v3

    .line 2290
    .end local v0    # "configureWlanRTCoex":Ljava/lang/reflect/Method;
    :cond_4
    :goto_1
    if-nez v3, :cond_0

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$000()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2291
    const-string v5, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to configure Wlan RT Coex, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2283
    :catch_0
    move-exception v1

    .line 2284
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string v2, "remote method \"configureWlanRTCoex\" not found"

    .line 2289
    goto :goto_1

    .line 2285
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 2286
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "got an IllegalAccessException invoking \"configureWlanRTCoex\""

    .line 2289
    goto :goto_1

    .line 2287
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 2288
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "got an InvocationTargetException invoking \"configureWlanRTCoex\""

    goto :goto_1
.end method

.method private doBroadcastWork([Ljava/lang/String;)V
    .locals 12
    .param p1, "parsedResponse"    # [Ljava/lang/String;

    .prologue
    const/16 v11, 0xf

    const/16 v10, 0xd

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 1876
    const/4 v3, 0x0

    .line 1878
    .local v3, "mustEvaluateBtRtActivation":Z
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$000()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "CWS_SERVICE_MGR-CoexMgr"

    const-string v6, "doBroadcastWork"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    :cond_0
    aget-object v5, p1, v7

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "+XNRTCWSI"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 1881
    const/4 v4, 0x0

    .line 1883
    .local v4, "rcvValue":I
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$000()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doBroadcastWork: received +XNRTCWSI length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    :cond_1
    array-length v5, p1

    const/16 v6, 0x9

    if-ge v5, v6, :cond_3

    .line 1886
    const-string v5, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "+XNRTCWSI did not return correct number of parameters ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    .end local v4    # "rcvValue":I
    :cond_2
    :goto_0
    return-void

    .line 1891
    .restart local v4    # "rcvValue":I
    :cond_3
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;
    invoke-static {v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2600(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    move-result-object v5

    if-nez v5, :cond_4

    .line 1892
    const-string v5, "CWS_SERVICE_MGR-CoexMgr"

    const-string v6, "NULL NRTINFO"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1898
    :cond_4
    const/4 v5, 0x1

    :try_start_0
    aget-object v5, p1, v5

    const/4 v6, -0x1

    invoke-static {v5, v6}, Lcom/intel/cws/cwsservicemanager/CsmUtil;->parseIntValueFromString(Ljava/lang/String;I)I

    move-result v4

    .line 1900
    if-eq v4, v8, :cond_5

    .line 1901
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;
    invoke-static {v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2600(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    move-result-object v5

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->lteActive:I
    invoke-static {v5, v4}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$102(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;I)I

    .line 1904
    :cond_5
    const/4 v5, 0x2

    aget-object v5, p1, v5

    const/4 v6, -0x1

    invoke-static {v5, v6}, Lcom/intel/cws/cwsservicemanager/CsmUtil;->parseIntValueFromString(Ljava/lang/String;I)I

    move-result v4

    .line 1906
    if-eq v4, v8, :cond_6

    .line 1907
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;
    invoke-static {v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2600(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    move-result-object v5

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->wlanSafeRxMin:I
    invoke-static {v5, v4}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$602(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;I)I

    .line 1909
    :cond_6
    const/4 v5, 0x3

    aget-object v5, p1, v5

    const/4 v6, -0x1

    invoke-static {v5, v6}, Lcom/intel/cws/cwsservicemanager/CsmUtil;->parseIntValueFromString(Ljava/lang/String;I)I

    move-result v4

    .line 1911
    if-eq v4, v8, :cond_7

    .line 1912
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;
    invoke-static {v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2600(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    move-result-object v5

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->wlanSafeRxMax:I
    invoke-static {v5, v4}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$502(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;I)I

    .line 1914
    :cond_7
    const/4 v5, 0x4

    aget-object v5, p1, v5

    const/4 v6, -0x1

    invoke-static {v5, v6}, Lcom/intel/cws/cwsservicemanager/CsmUtil;->parseIntValueFromString(Ljava/lang/String;I)I

    move-result v4

    .line 1916
    if-eq v4, v8, :cond_8

    .line 1917
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;
    invoke-static {v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2600(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    move-result-object v5

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->btSafeRxMin:I
    invoke-static {v5, v4}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$902(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;I)I

    .line 1919
    :cond_8
    const/4 v5, 0x5

    aget-object v5, p1, v5

    const/4 v6, -0x1

    invoke-static {v5, v6}, Lcom/intel/cws/cwsservicemanager/CsmUtil;->parseIntValueFromString(Ljava/lang/String;I)I

    move-result v4

    .line 1921
    if-eq v4, v8, :cond_9

    .line 1922
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;
    invoke-static {v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2600(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    move-result-object v5

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->btSafeRxMax:I
    invoke-static {v5, v4}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$1002(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;I)I

    .line 1924
    :cond_9
    const/4 v5, 0x6

    aget-object v5, p1, v5

    const/4 v6, -0x1

    invoke-static {v5, v6}, Lcom/intel/cws/cwsservicemanager/CsmUtil;->parseIntValueFromString(Ljava/lang/String;I)I

    move-result v4

    .line 1926
    if-eq v4, v8, :cond_a

    .line 1927
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;
    invoke-static {v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2600(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    move-result-object v5

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->lteSpsStartStop:I
    invoke-static {v5, v4}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$2702(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;I)I

    .line 1929
    :cond_a
    const/4 v5, 0x7

    aget-object v5, p1, v5

    const/4 v6, -0x1

    invoke-static {v5, v6}, Lcom/intel/cws/cwsservicemanager/CsmUtil;->parseIntValueFromString(Ljava/lang/String;I)I

    move-result v4

    .line 1931
    if-eq v4, v8, :cond_b

    .line 1932
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;
    invoke-static {v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2600(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    move-result-object v5

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->lteSpsPeriodicity:I
    invoke-static {v5, v4}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$2802(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;I)I

    .line 1934
    :cond_b
    const/16 v5, 0x8

    aget-object v5, p1, v5

    const/4 v6, -0x1

    invoke-static {v5, v6}, Lcom/intel/cws/cwsservicemanager/CsmUtil;->parseIntValueFromString(Ljava/lang/String;I)I

    move-result v4

    .line 1936
    if-eq v4, v8, :cond_c

    .line 1937
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;
    invoke-static {v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2600(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    move-result-object v5

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->lteSpsDuration:I
    invoke-static {v5, v4}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$2902(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;I)I

    .line 1941
    :cond_c
    array-length v5, p1

    const/16 v6, 0x9

    if-le v5, v6, :cond_d

    .line 1942
    const/16 v5, 0x9

    aget-object v5, p1, v5

    const/4 v6, -0x1

    invoke-static {v5, v6}, Lcom/intel/cws/cwsservicemanager/CsmUtil;->parseIntValueFromString(Ljava/lang/String;I)I

    move-result v4

    .line 1944
    if-eq v4, v8, :cond_d

    .line 1945
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;
    invoke-static {v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2600(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    move-result-object v5

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->lteSpsInitialOffset:I
    invoke-static {v5, v4}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$3002(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;I)I

    .line 1948
    :cond_d
    array-length v5, p1

    const/16 v6, 0xa

    if-le v5, v6, :cond_e

    .line 1949
    const/16 v5, 0xa

    aget-object v5, p1, v5

    const/4 v6, -0x1

    invoke-static {v5, v6}, Lcom/intel/cws/cwsservicemanager/CsmUtil;->parseIntValueFromString(Ljava/lang/String;I)I

    move-result v4

    .line 1951
    if-eq v4, v8, :cond_e

    .line 1952
    const/4 v3, 0x1

    .line 1953
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v5, 0xa

    if-ge v2, v5, :cond_e

    .line 1956
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;
    invoke-static {v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2600(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    move-result-object v5

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->lteBitmap:[I
    invoke-static {v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$400(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)[I

    move-result-object v5

    const/4 v6, 0x3

    mul-int/lit8 v7, v2, 0x2

    shl-int/2addr v6, v7

    and-int/2addr v6, v4

    mul-int/lit8 v7, v2, 0x2

    shr-int/2addr v6, v7

    aput v6, v5, v2

    .line 1953
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1960
    .end local v2    # "i":I
    :cond_e
    array-length v5, p1

    const/16 v6, 0xb

    if-le v5, v6, :cond_f

    .line 1961
    const/16 v5, 0xb

    aget-object v5, p1, v5

    const/4 v6, -0x1

    invoke-static {v5, v6}, Lcom/intel/cws/cwsservicemanager/CsmUtil;->parseIntValueFromString(Ljava/lang/String;I)I

    move-result v4

    .line 1963
    if-eq v4, v8, :cond_f

    .line 1964
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;
    invoke-static {v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2600(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    move-result-object v5

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->wlanSafeTxFreqMin:I
    invoke-static {v5, v4}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$702(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;I)I

    .line 1967
    :cond_f
    array-length v5, p1

    const/16 v6, 0xc

    if-le v5, v6, :cond_10

    .line 1968
    const/16 v5, 0xc

    aget-object v5, p1, v5

    const/4 v6, -0x1

    invoke-static {v5, v6}, Lcom/intel/cws/cwsservicemanager/CsmUtil;->parseIntValueFromString(Ljava/lang/String;I)I

    move-result v4

    .line 1970
    if-eq v4, v8, :cond_10

    .line 1971
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;
    invoke-static {v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2600(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    move-result-object v5

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->wlanSafeTxFreqMax:I
    invoke-static {v5, v4}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$802(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;I)I

    .line 1974
    :cond_10
    array-length v5, p1

    if-le v5, v10, :cond_11

    .line 1975
    const/16 v5, 0xd

    aget-object v5, p1, v5

    const/4 v6, -0x1

    invoke-static {v5, v6}, Lcom/intel/cws/cwsservicemanager/CsmUtil;->parseIntValueFromString(Ljava/lang/String;I)I

    move-result v4

    .line 1977
    if-eq v4, v8, :cond_11

    .line 1978
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;
    invoke-static {v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2600(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    move-result-object v5

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->btSafeTxFreqMin:I
    invoke-static {v5, v4}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$1102(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;I)I

    .line 1981
    :cond_11
    array-length v5, p1

    const/16 v6, 0xe

    if-le v5, v6, :cond_12

    .line 1982
    const/16 v5, 0xe

    aget-object v5, p1, v5

    const/4 v6, -0x1

    invoke-static {v5, v6}, Lcom/intel/cws/cwsservicemanager/CsmUtil;->parseIntValueFromString(Ljava/lang/String;I)I

    move-result v4

    .line 1984
    if-eq v4, v8, :cond_12

    .line 1985
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;
    invoke-static {v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2600(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    move-result-object v5

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->btSafeTxFreqMax:I
    invoke-static {v5, v4}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$1202(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;I)I

    .line 1988
    :cond_12
    array-length v5, p1

    if-le v5, v11, :cond_16

    .line 1989
    const/16 v5, 0xf

    aget-object v5, p1, v5

    const/4 v6, -0x1

    invoke-static {v5, v6}, Lcom/intel/cws/cwsservicemanager/CsmUtil;->parseIntValueFromString(Ljava/lang/String;I)I

    move-result v4

    .line 1991
    if-eq v4, v8, :cond_13

    .line 1992
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;
    invoke-static {v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2600(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    move-result-object v5

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->tddSpecialSubframeNumber:I
    invoke-static {v5, v4}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$302(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;I)I

    .line 1994
    :cond_13
    if-eqz v3, :cond_16

    .line 1995
    invoke-direct {p0}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->handleLowUlSFWorkaround()V

    .line 1997
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBtActive:I
    invoke-static {v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2200(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)I

    move-result v5

    if-ne v5, v9, :cond_16

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mCoexDisableRT:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2400()Z

    move-result v5

    if-nez v5, :cond_16

    .line 1998
    const/4 v0, 0x0

    .line 1999
    .local v0, "bidirCpt":Z
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;
    invoke-static {v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2600(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    move-result-object v5

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->lteBitmap:[I
    invoke-static {v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$400(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)[I

    move-result-object v5

    const/4 v6, 0x0

    aget v5, v5, v6

    const/4 v6, 0x2

    if-ne v5, v6, :cond_14

    .line 2000
    const/4 v0, 0x1

    .line 2002
    :cond_14
    if-eqz v0, :cond_1a

    .line 2003
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$000()Z

    move-result v5

    if-eqz v5, :cond_15

    const-string v5, "CWS_SERVICE_MGR-CoexMgr"

    const-string v6, "doBroadcastWork: FDD detected"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    :cond_15
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    iget-object v5, v5, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBtRtCtrl:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$btRtControl;

    const/4 v6, 0x1

    iput v6, v5, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$btRtControl;->mCurrentChannelType:I

    .line 2011
    :goto_2
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # invokes: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->manageBtRtActivation()V
    invoke-static {v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$3100(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)V

    .line 2015
    .end local v0    # "bidirCpt":Z
    :cond_16
    array-length v5, p1

    const/16 v6, 0x10

    if-le v5, v6, :cond_17

    .line 2016
    const/16 v5, 0x10

    aget-object v5, p1, v5

    const/4 v6, -0x1

    invoke-static {v5, v6}, Lcom/intel/cws/cwsservicemanager/CsmUtil;->parseIntValueFromString(Ljava/lang/String;I)I

    move-result v4

    .line 2018
    if-eq v4, v8, :cond_17

    if-eq v4, v10, :cond_17

    .line 2019
    const-string v5, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WLAN safe TX power parameters = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Expected = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    :cond_17
    array-length v5, p1

    const/16 v6, 0x11

    if-le v5, v6, :cond_18

    .line 2024
    const/16 v5, 0x11

    aget-object v5, p1, v5

    const/4 v6, -0x1

    invoke-static {v5, v6}, Lcom/intel/cws/cwsservicemanager/CsmUtil;->parseIntValueFromString(Ljava/lang/String;I)I

    move-result v4

    .line 2026
    if-eq v4, v8, :cond_18

    if-eq v4, v11, :cond_18

    .line 2027
    const-string v5, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BT safe TX power parameters = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Expected = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xf

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    :cond_18
    array-length v5, p1

    const/16 v6, 0x1e

    if-le v5, v6, :cond_20

    .line 2033
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v10, :cond_20

    .line 2034
    add-int/lit8 v5, v2, 0x12

    aget-object v5, p1, v5

    const/4 v6, -0x1

    invoke-static {v5, v6}, Lcom/intel/cws/cwsservicemanager/CsmUtil;->parseIntValueFromString(Ljava/lang/String;I)I

    move-result v4

    .line 2036
    if-eq v4, v8, :cond_19

    .line 2037
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;
    invoke-static {v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2600(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    move-result-object v5

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->wlanSafeTxPowers:[I
    invoke-static {v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$3200(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)[I

    move-result-object v5

    aput v4, v5, v2

    .line 2033
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2007
    .end local v2    # "i":I
    .restart local v0    # "bidirCpt":Z
    :cond_1a
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$000()Z

    move-result v5

    if-eqz v5, :cond_1b

    const-string v5, "CWS_SERVICE_MGR-CoexMgr"

    const-string v6, "doBroadcastWork: TDD detected"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    :cond_1b
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    iget-object v5, v5, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBtRtCtrl:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$btRtControl;

    const/4 v6, 0x0

    iput v6, v5, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$btRtControl;->mCurrentChannelType:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 2051
    .end local v0    # "bidirCpt":Z
    :catch_0
    move-exception v1

    .line 2052
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v5, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parsedResponse exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_1c
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;
    invoke-static {v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2600(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    move-result-object v5

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->lteActive:I
    invoke-static {v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$100(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I

    move-result v5

    if-nez v5, :cond_1d

    .line 2057
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;
    invoke-static {v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2600(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->reset()V

    .line 2058
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    const/4 v6, 0x3

    # invokes: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->setSafe(I)V
    invoke-static {v5, v6}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$3400(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;I)V

    .line 2062
    :cond_1d
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$000()Z

    move-result v5

    if-eqz v5, :cond_1e

    iget-object v5, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;
    invoke-static {v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2600(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    move-result-object v5

    # invokes: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->dumpValues()V
    invoke-static {v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$3500(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)V

    .line 2065
    :cond_1e
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiActive:I
    invoke-static {v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2300(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)I

    move-result v5

    if-eq v5, v9, :cond_1f

    iget-object v5, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBtActive:I
    invoke-static {v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2200(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)I

    move-result v5

    if-ne v5, v9, :cond_22

    .line 2066
    :cond_1f
    invoke-direct {p0}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->configureCoex()V

    goto/16 :goto_0

    .line 2041
    :cond_20
    :try_start_1
    array-length v5, p1

    const/16 v6, 0x2d

    if-le v5, v6, :cond_1c

    .line 2043
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    if-ge v2, v11, :cond_1c

    .line 2044
    add-int/lit8 v5, v2, 0x1f

    aget-object v5, p1, v5

    const/4 v6, -0x1

    invoke-static {v5, v6}, Lcom/intel/cws/cwsservicemanager/CsmUtil;->parseIntValueFromString(Ljava/lang/String;I)I

    move-result v4

    .line 2046
    if-eq v4, v8, :cond_21

    .line 2047
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;
    invoke-static {v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2600(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    move-result-object v5

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->btSafeTxPowers:[I
    invoke-static {v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$3300(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)[I

    move-result-object v5

    aput v4, v5, v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2043
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2069
    .end local v2    # "i":I
    :cond_22
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # invokes: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->subscribeToNRTEvents()Z
    invoke-static {v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$3600(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Z

    move-result v5

    if-eq v5, v9, :cond_23

    .line 2070
    const-string v5, "CWS_SERVICE_MGR-CoexMgr"

    const-string v6, "DoBroadcast: Failed to (re)subscribe to NRT Events\n"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2072
    :cond_23
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$000()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "CWS_SERVICE_MGR-CoexMgr"

    const-string v6, "DoBroadcast: resubscribed to NRT Events"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2075
    .end local v4    # "rcvValue":I
    :cond_24
    aget-object v5, p1, v7

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "+XMETRIC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 2077
    const-string v5, "CWS_SERVICE_MGR-CoexMgr"

    const-string v6, "+XMETRIC not supported yet!\n"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2078
    :cond_25
    aget-object v5, p1, v7

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "+XREG"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2080
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mATXREG:Lcom/intel/cws/cwsservicemanager/ATCmdATXREG;
    invoke-static {v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$3700(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Lcom/intel/cws/cwsservicemanager/ATCmdATXREG;

    move-result-object v5

    if-nez v5, :cond_26

    .line 2081
    const-string v5, "CWS_SERVICE_MGR-CoexMgr"

    const-string v6, "NULL ATXREG"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2085
    :cond_26
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mATXREG:Lcom/intel/cws/cwsservicemanager/ATCmdATXREG;
    invoke-static {v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$3700(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Lcom/intel/cws/cwsservicemanager/ATCmdATXREG;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/intel/cws/cwsservicemanager/ATCmdATXREG;->parseURCCmd([Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2086
    const-string v5, "CWS_SERVICE_MGR-CoexMgr"

    const-string v6, "NULL ATXREG"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private handleLowUlSFWorkaround()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1834
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBtActive:I
    invoke-static {v2}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2200(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiActive:I
    invoke-static {v2}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2300(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)I

    move-result v2

    if-nez v2, :cond_1

    .line 1862
    :cond_0
    :goto_0
    return-void

    .line 1836
    :cond_1
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mCoexDisableRT:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2400()Z

    move-result v2

    if-eqz v2, :cond_2

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->sCoexRToffForWA:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2500()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1838
    :cond_2
    const/4 v1, 0x0

    .line 1840
    .local v1, "ulCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;
    invoke-static {v2}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2600(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    move-result-object v2

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->lteBitmap:[I
    invoke-static {v2}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$400(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)[I

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1841
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;
    invoke-static {v2}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2600(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    move-result-object v2

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->lteBitmap:[I
    invoke-static {v2}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$400(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)[I

    move-result-object v2

    aget v2, v2, v0

    if-ne v2, v4, :cond_4

    .line 1842
    add-int/lit8 v1, v1, 0x1

    .line 1840
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1844
    :cond_4
    if-ne v1, v4, :cond_6

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mCoexDisableRT:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2400()Z

    move-result v2

    if-nez v2, :cond_6

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->sCoexRToffForWA:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2500()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1845
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$000()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "CWS_SERVICE_MGR-CoexMgr"

    const-string v3, "handleLowUlSFWorkaround: UL/DL SF config #2 or #5 detected, we disable the LTE coex RT feature"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    :cond_5
    invoke-direct {p0}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->DisableRTCoexMode()V

    .line 1848
    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mCoexDisableRT:Z
    invoke-static {v4}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2402(Z)Z

    .line 1849
    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->sCoexRToffForWA:Z
    invoke-static {v4}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2502(Z)Z

    goto :goto_0

    .line 1851
    :cond_6
    if-le v1, v4, :cond_3

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mCoexDisableRT:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2400()Z

    move-result v2

    if-eqz v2, :cond_3

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->sCoexRToffForWA:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2500()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1852
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$000()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "CWS_SERVICE_MGR-CoexMgr"

    const-string v3, "handleLowUlSFWorkaround: UL/DL SF config #0, #1, #3, #4 or #6 detected, we re-enable the LTE coex RT feature"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    :cond_7
    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mCoexDisableRT:Z
    invoke-static {v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2402(Z)Z

    .line 1856
    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->sCoexRToffForWA:Z
    invoke-static {v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2502(Z)Z

    .line 1857
    invoke-direct {p0}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->EnableRTCoexMode()V

    goto :goto_0
.end method

.method private setSafeChannel(I)Z
    .locals 10
    .param p1, "safeChannels"    # I

    .prologue
    const/4 v2, 0x0

    .line 2416
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$4900(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    if-nez v5, :cond_1

    .line 2418
    iget-object v6, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    iget-object v5, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$2100(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Landroid/content/Context;

    move-result-object v5

    const-string v7, "wifi"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v6, v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$4902(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;

    .line 2419
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$4900(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    if-nez v5, :cond_1

    .line 2420
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$000()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "CWS_SERVICE_MGR-CoexMgr"

    const-string v6, "Failed to get Wifi manager Service"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2446
    :cond_0
    :goto_0
    return v2

    .line 2425
    :cond_1
    const/4 v2, 0x0

    .line 2426
    .local v2, "res":Z
    const-string v1, "unknown"

    .line 2428
    .local v1, "error":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$4900(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "setSafeChannel"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 2431
    .local v4, "setSafeChannel":Ljava/lang/reflect/Method;
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$4900(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 2433
    .local v3, "result":Ljava/lang/Object;
    instance-of v5, v3, Ljava/lang/Boolean;

    if-eqz v5, :cond_2

    .line 2434
    check-cast v3, Ljava/lang/Boolean;

    .end local v3    # "result":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    .line 2443
    .end local v4    # "setSafeChannel":Ljava/lang/reflect/Method;
    :cond_2
    :goto_1
    if-nez v2, :cond_0

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$000()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2444
    const-string v5, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to set Safe channel bitmap, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2436
    :catch_0
    move-exception v0

    .line 2437
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "remote method \"setSafeChannel\" not found"

    .line 2442
    goto :goto_1

    .line 2438
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 2439
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "got an IllegalAccessException invoking \"setSafeChannel\""

    .line 2442
    goto :goto_1

    .line 2440
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 2441
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "got an InvocationTargetException invoking \"setSafeChannel\""

    goto :goto_1
.end method


# virtual methods
.method public getCsmCltState()Ljava/lang/Byte;
    .locals 3

    .prologue
    .line 1819
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCsmCltState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mCsmCltState:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    :cond_0
    iget-byte v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mCsmCltState:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public getResponse()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1805
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CWS_SERVICE_MGR-CoexMgr"

    const-string v1, "CoexBroadcastReceiver getResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    :cond_0
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mResponse:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1807
    const-string v0, "ERROR"

    .line 1808
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;->mResponse:Ljava/lang/String;

    goto :goto_0
.end method

.class Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;
.super Ljava/lang/Object;
.source "CsmCoexMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NRTState"
.end annotation


# instance fields
.field private active:I

.field private btActive:I

.field private btSafeRx:I

.field final synthetic this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

.field private wlanActive:I

.field private wlanBandwidth:I

.field private wlanCenterFreq:I

.field private wlanSafeRx:I


# direct methods
.method public constructor <init>(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 680
    iput-object p1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 672
    iput v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->active:I

    .line 673
    iput v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->wlanActive:I

    .line 674
    iput v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->wlanSafeRx:I

    .line 675
    iput v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->wlanBandwidth:I

    .line 676
    iput v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->btActive:I

    .line 677
    iput v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->btSafeRx:I

    .line 678
    iput v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->wlanCenterFreq:I

    .line 681
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CWS_SERVICE_MGR-CoexMgr"

    const-string v1, "NRTState constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :cond_0
    return-void
.end method

.method static synthetic access$1300(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;)I
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;

    .prologue
    .line 670
    iget v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->active:I

    return v0
.end method

.method static synthetic access$1302(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;
    .param p1, "x1"    # I

    .prologue
    .line 670
    iput p1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->active:I

    return p1
.end method

.method static synthetic access$1400(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;)I
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;

    .prologue
    .line 670
    iget v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->wlanActive:I

    return v0
.end method

.method static synthetic access$1402(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;
    .param p1, "x1"    # I

    .prologue
    .line 670
    iput p1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->wlanActive:I

    return p1
.end method

.method static synthetic access$1500(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;)I
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;

    .prologue
    .line 670
    iget v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->wlanSafeRx:I

    return v0
.end method

.method static synthetic access$1502(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;
    .param p1, "x1"    # I

    .prologue
    .line 670
    iput p1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->wlanSafeRx:I

    return p1
.end method

.method static synthetic access$1600(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;)I
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;

    .prologue
    .line 670
    iget v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->wlanBandwidth:I

    return v0
.end method

.method static synthetic access$1602(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;
    .param p1, "x1"    # I

    .prologue
    .line 670
    iput p1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->wlanBandwidth:I

    return p1
.end method

.method static synthetic access$1700(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;)I
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;

    .prologue
    .line 670
    iget v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->btActive:I

    return v0
.end method

.method static synthetic access$1702(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;
    .param p1, "x1"    # I

    .prologue
    .line 670
    iput p1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->btActive:I

    return p1
.end method

.method static synthetic access$1800(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;)I
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;

    .prologue
    .line 670
    iget v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->btSafeRx:I

    return v0
.end method

.method static synthetic access$1802(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;
    .param p1, "x1"    # I

    .prologue
    .line 670
    iput p1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->btSafeRx:I

    return p1
.end method

.method static synthetic access$1902(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;
    .param p1, "x1"    # I

    .prologue
    .line 670
    iput p1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->wlanCenterFreq:I

    return p1
.end method

.method static synthetic access$2000(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;)V
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;

    .prologue
    .line 670
    invoke-direct {p0}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->dumpValues()V

    return-void
.end method

.method private dumpValues()V
    .locals 3

    .prologue
    .line 686
    const-string v0, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "active "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->active:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    const-string v0, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wlanActive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->wlanActive:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const-string v0, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wlanSafeRx "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->wlanSafeRx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    const-string v0, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wlanBandwidth "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->wlanBandwidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    const-string v0, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "btActive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->btActive:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    const-string v0, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "btSafeRx "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->btSafeRx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    const-string v0, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wlanCenterFreq "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->wlanCenterFreq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    return-void
.end method

.class Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;
.super Ljava/lang/Object;
.source "CsmCoexMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NRTInfo"
.end annotation


# static fields
.field static final LTE_SUBFRAME_BIDIR:I = 0x2

.field static final LTE_SUBFRAME_RX:I = 0x0

.field static final LTE_SUBFRAME_SP:I = 0x3

.field static final LTE_SUBFRAME_TX:I = 0x1


# instance fields
.field private btSafeRxMax:I

.field private btSafeRxMin:I

.field private btSafeTxFreqMax:I

.field private btSafeTxFreqMin:I

.field private btSafeTxPowers:[I

.field private lteActive:I

.field private lteBitmap:[I

.field private lteSpsDuration:I

.field private lteSpsInitialOffset:I

.field private lteSpsPeriodicity:I

.field private lteSpsStartStop:I

.field private tddSpecialSubframeNumber:I

.field final synthetic this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

.field private wlanSafeRxMax:I

.field private wlanSafeRxMin:I

.field private wlanSafeTxFreqMax:I

.field private wlanSafeTxFreqMin:I

.field private wlanSafeTxPowers:[I


# direct methods
.method public constructor <init>(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 599
    iput-object p1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->this$0:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 576
    iput v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->lteActive:I

    .line 581
    iput v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->lteSpsStartStop:I

    .line 582
    iput v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->lteSpsPeriodicity:I

    .line 583
    iput v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->lteSpsDuration:I

    .line 584
    iput v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->lteSpsInitialOffset:I

    .line 600
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CWS_SERVICE_MGR-CoexMgr"

    const-string v1, "NRTInfo constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_0
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->lteBitmap:[I

    .line 602
    const/16 v0, 0xd

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->wlanSafeTxPowers:[I

    .line 603
    const/16 v0, 0xf

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->btSafeTxPowers:[I

    .line 605
    invoke-virtual {p0}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->reset()V

    .line 606
    return-void
.end method

.method static synthetic access$100(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    .prologue
    .line 574
    iget v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->lteActive:I

    return v0
.end method

.method static synthetic access$1000(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    .prologue
    .line 574
    iget v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->btSafeRxMax:I

    return v0
.end method

.method static synthetic access$1002(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;
    .param p1, "x1"    # I

    .prologue
    .line 574
    iput p1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->btSafeRxMax:I

    return p1
.end method

.method static synthetic access$102(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;
    .param p1, "x1"    # I

    .prologue
    .line 574
    iput p1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->lteActive:I

    return p1
.end method

.method static synthetic access$1100(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    .prologue
    .line 574
    iget v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->btSafeTxFreqMin:I

    return v0
.end method

.method static synthetic access$1102(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;
    .param p1, "x1"    # I

    .prologue
    .line 574
    iput p1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->btSafeTxFreqMin:I

    return p1
.end method

.method static synthetic access$1200(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    .prologue
    .line 574
    iget v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->btSafeTxFreqMax:I

    return v0
.end method

.method static synthetic access$1202(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;
    .param p1, "x1"    # I

    .prologue
    .line 574
    iput p1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->btSafeTxFreqMax:I

    return p1
.end method

.method static synthetic access$2702(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;
    .param p1, "x1"    # I

    .prologue
    .line 574
    iput p1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->lteSpsStartStop:I

    return p1
.end method

.method static synthetic access$2802(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;
    .param p1, "x1"    # I

    .prologue
    .line 574
    iput p1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->lteSpsPeriodicity:I

    return p1
.end method

.method static synthetic access$2902(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;
    .param p1, "x1"    # I

    .prologue
    .line 574
    iput p1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->lteSpsDuration:I

    return p1
.end method

.method static synthetic access$300(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    .prologue
    .line 574
    iget v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->tddSpecialSubframeNumber:I

    return v0
.end method

.method static synthetic access$3002(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;
    .param p1, "x1"    # I

    .prologue
    .line 574
    iput p1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->lteSpsInitialOffset:I

    return p1
.end method

.method static synthetic access$302(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;
    .param p1, "x1"    # I

    .prologue
    .line 574
    iput p1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->tddSpecialSubframeNumber:I

    return p1
.end method

.method static synthetic access$3200(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)[I
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    .prologue
    .line 574
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->wlanSafeTxPowers:[I

    return-object v0
.end method

.method static synthetic access$3300(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)[I
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    .prologue
    .line 574
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->btSafeTxPowers:[I

    return-object v0
.end method

.method static synthetic access$3500(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    .prologue
    .line 574
    invoke-direct {p0}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->dumpValues()V

    return-void
.end method

.method static synthetic access$400(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)[I
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    .prologue
    .line 574
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->lteBitmap:[I

    return-object v0
.end method

.method static synthetic access$500(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    .prologue
    .line 574
    iget v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->wlanSafeRxMax:I

    return v0
.end method

.method static synthetic access$502(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;
    .param p1, "x1"    # I

    .prologue
    .line 574
    iput p1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->wlanSafeRxMax:I

    return p1
.end method

.method static synthetic access$600(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    .prologue
    .line 574
    iget v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->wlanSafeRxMin:I

    return v0
.end method

.method static synthetic access$602(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;
    .param p1, "x1"    # I

    .prologue
    .line 574
    iput p1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->wlanSafeRxMin:I

    return p1
.end method

.method static synthetic access$700(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    .prologue
    .line 574
    iget v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->wlanSafeTxFreqMin:I

    return v0
.end method

.method static synthetic access$702(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;
    .param p1, "x1"    # I

    .prologue
    .line 574
    iput p1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->wlanSafeTxFreqMin:I

    return p1
.end method

.method static synthetic access$800(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    .prologue
    .line 574
    iget v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->wlanSafeTxFreqMax:I

    return v0
.end method

.method static synthetic access$802(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;
    .param p1, "x1"    # I

    .prologue
    .line 574
    iput p1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->wlanSafeTxFreqMax:I

    return p1
.end method

.method static synthetic access$900(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    .prologue
    .line 574
    iget v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->btSafeRxMin:I

    return v0
.end method

.method static synthetic access$902(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;
    .param p1, "x1"    # I

    .prologue
    .line 574
    iput p1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->btSafeRxMin:I

    return p1
.end method

.method private dumpValues()V
    .locals 4

    .prologue
    .line 610
    const-string v1, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lteActive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->lteActive:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const-string v1, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wlanSafeRxMin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->wlanSafeRxMin:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    const-string v1, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wlanSafeRxMax = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->wlanSafeRxMax:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    const-string v1, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "btSafeRxMin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->btSafeRxMin:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const-string v1, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "btSafeRxMax = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->btSafeRxMax:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const-string v1, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lteSpsStartStop = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->lteSpsStartStop:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    const-string v1, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lteSpsPeriodicity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->lteSpsPeriodicity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    const-string v1, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lteSpsDuration = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->lteSpsDuration:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    const-string v1, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lteSpsInitialOffset = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->lteSpsInitialOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 621
    const-string v1, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lteBitmap["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->lteBitmap:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 623
    :cond_0
    const-string v1, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wlanSafeTxFreqMin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->wlanSafeTxFreqMin:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const-string v1, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wlanSafeTxFreqMax = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->wlanSafeTxFreqMax:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const-string v1, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "btSafeTxFreqMin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->btSafeTxFreqMin:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    const-string v1, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "btSafeTxFreqMax = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->btSafeTxFreqMax:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    const-string v1, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tddSpecialSubframeNumber = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->tddSpecialSubframeNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xd

    if-ge v0, v1, :cond_1

    .line 629
    const-string v1, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wlanSafeTxPowers["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->wlanSafeTxPowers:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 631
    :cond_1
    const/4 v0, 0x0

    :goto_2
    const/16 v1, 0xf

    if-ge v0, v1, :cond_2

    .line 632
    const-string v1, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "btSafeTxPowers["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->btSafeTxPowers:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 634
    :cond_2
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 638
    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->wlanSafeRxMin:I

    .line 639
    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->wlanSafeRxMax:I

    .line 640
    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->btSafeRxMin:I

    .line 641
    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->btSafeRxMax:I

    .line 642
    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->lteSpsStartStop:I

    .line 643
    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->lteSpsPeriodicity:I

    .line 644
    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->lteSpsDuration:I

    .line 645
    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->lteSpsInitialOffset:I

    .line 647
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 648
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->lteBitmap:[I

    aput v2, v1, v0

    .line 647
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 650
    :cond_0
    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->wlanSafeTxFreqMin:I

    .line 651
    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->wlanSafeTxFreqMax:I

    .line 652
    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->btSafeTxFreqMin:I

    .line 653
    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->btSafeTxFreqMax:I

    .line 654
    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->tddSpecialSubframeNumber:I

    .line 655
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xd

    if-ge v0, v1, :cond_1

    .line 656
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->wlanSafeTxPowers:[I

    aput v2, v1, v0

    .line 655
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 658
    :cond_1
    const/4 v0, 0x0

    :goto_2
    const/16 v1, 0xf

    if-ge v0, v1, :cond_2

    .line 659
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->btSafeTxPowers:[I

    aput v2, v1, v0

    .line 658
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 661
    :cond_2
    return-void
.end method

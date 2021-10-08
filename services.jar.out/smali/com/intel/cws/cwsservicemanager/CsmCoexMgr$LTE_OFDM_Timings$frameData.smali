.class public Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$LTE_OFDM_Timings$frameData;
.super Ljava/lang/Object;
.source "CsmCoexMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$LTE_OFDM_Timings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "frameData"
.end annotation


# instance fields
.field public mPeriodsDurations:[I

.field public mPeriodsNum:B

.field public mPeriodsTypes:[B


# direct methods
.method public constructor <init>(B[I[B)V
    .locals 1
    .param p1, "length"    # B
    .param p2, "durations"    # [I
    .param p3, "types"    # [B

    .prologue
    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$LTE_OFDM_Timings$frameData;->mPeriodsNum:B

    .line 412
    iput-byte p1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$LTE_OFDM_Timings$frameData;->mPeriodsNum:B

    .line 413
    iput-object p2, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$LTE_OFDM_Timings$frameData;->mPeriodsDurations:[I

    .line 414
    iput-object p3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$LTE_OFDM_Timings$frameData;->mPeriodsTypes:[B

    .line 415
    return-void
.end method


# virtual methods
.method public dump()V
    .locals 6

    .prologue
    .line 419
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->access$000()Z

    move-result v3

    if-nez v3, :cond_0

    .line 443
    :goto_0
    return-void

    .line 421
    :cond_0
    const-string v3, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Number of periods: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-byte v5, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$LTE_OFDM_Timings$frameData;->mPeriodsNum:B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const-string v1, "Periods Type     : "

    .line 423
    .local v1, "dbgStrTypes":Ljava/lang/String;
    const-string v0, "Periods Durations: "

    .line 424
    .local v0, "dbgStrDurations":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-byte v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$LTE_OFDM_Timings$frameData;->mPeriodsNum:B

    if-ge v2, v3, :cond_1

    .line 425
    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$LTE_OFDM_Timings$frameData;->mPeriodsTypes:[B

    aget-byte v3, v3, v2

    packed-switch v3, :pswitch_data_0

    .line 439
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$LTE_OFDM_Timings$frameData;->mPeriodsDurations:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 424
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 427
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " D"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 428
    goto :goto_2

    .line 430
    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " U"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 431
    goto :goto_2

    .line 433
    :pswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " B"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 434
    goto :goto_2

    .line 436
    :pswitch_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " S"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 441
    :cond_1
    const-string v3, "CWS_SERVICE_MGR-CoexMgr"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const-string v3, "CWS_SERVICE_MGR-CoexMgr"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 425
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

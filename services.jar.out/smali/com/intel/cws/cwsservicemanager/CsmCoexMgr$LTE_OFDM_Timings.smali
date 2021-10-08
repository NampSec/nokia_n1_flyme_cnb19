.class Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$LTE_OFDM_Timings;
.super Ljava/lang/Object;
.source "CsmCoexMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LTE_OFDM_Timings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$LTE_OFDM_Timings$frameData;
    }
.end annotation


# static fields
.field static final LTE_FIELD_DURATION_DwPTS_IDX:I = 0x0

.field static final LTE_FIELD_DURATION_GP_IDX:I = 0x2

.field static final LTE_FIELD_DURATION_UpPTS_IDX:I = 0x1

.field static final LTE_OFDM_TIMING_PROFILE_CPULEP_CPDLEP:I = 0x3

.field static final LTE_OFDM_TIMING_PROFILE_CPULEP_CPDLNP:I = 0x2

.field static final LTE_OFDM_TIMING_PROFILE_CPULNP_CPDLEP:I = 0x1

.field static final LTE_OFDM_TIMING_PROFILE_CPULNP_CPDLNP:I = 0x0

.field static final LTE_SUBFRAME_DURATION_IN_US:I = 0x3e8

.field static final PTB:B = 0x2t

.field static final PTD:B = 0x0t

.field static final PTG:B = 0x3t

.field static final PTRESERVED:B = -0x1t

.field static final PTU:B = 0x1t

.field static final SPECIAL_SUBFRAME_CONFIGURATION_NUMBER:I = 0xa

.field static final SUBFRAME_NUMBER_IN_FRAME:I = 0xa

.field static final mCurrentComputationProfile:I = 0x3

.field static sSubFrameFieldDurationsComputeTable:[[[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 334
    new-array v0, v8, [[[I

    const/16 v1, 0xa

    new-array v1, v1, [[I

    new-array v2, v4, [I

    fill-array-data v2, :array_0

    aput-object v2, v1, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_1

    aput-object v2, v1, v6

    new-array v2, v4, [I

    fill-array-data v2, :array_2

    aput-object v2, v1, v7

    new-array v2, v4, [I

    fill-array-data v2, :array_3

    aput-object v2, v1, v4

    new-array v2, v4, [I

    fill-array-data v2, :array_4

    aput-object v2, v1, v8

    const/4 v2, 0x5

    new-array v3, v4, [I

    fill-array-data v3, :array_5

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-array v3, v4, [I

    fill-array-data v3, :array_6

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-array v3, v4, [I

    fill-array-data v3, :array_7

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-array v3, v4, [I

    fill-array-data v3, :array_8

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-array v3, v4, [I

    fill-array-data v3, :array_9

    aput-object v3, v1, v2

    aput-object v1, v0, v5

    const/16 v1, 0xa

    new-array v1, v1, [[I

    new-array v2, v4, [I

    fill-array-data v2, :array_a

    aput-object v2, v1, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_b

    aput-object v2, v1, v6

    new-array v2, v4, [I

    fill-array-data v2, :array_c

    aput-object v2, v1, v7

    new-array v2, v4, [I

    fill-array-data v2, :array_d

    aput-object v2, v1, v4

    new-array v2, v4, [I

    fill-array-data v2, :array_e

    aput-object v2, v1, v8

    const/4 v2, 0x5

    new-array v3, v4, [I

    fill-array-data v3, :array_f

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-array v3, v4, [I

    fill-array-data v3, :array_10

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-array v3, v4, [I

    fill-array-data v3, :array_11

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-array v3, v4, [I

    fill-array-data v3, :array_12

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-array v3, v4, [I

    fill-array-data v3, :array_13

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    const/16 v1, 0xa

    new-array v1, v1, [[I

    new-array v2, v4, [I

    fill-array-data v2, :array_14

    aput-object v2, v1, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_15

    aput-object v2, v1, v6

    new-array v2, v4, [I

    fill-array-data v2, :array_16

    aput-object v2, v1, v7

    new-array v2, v4, [I

    fill-array-data v2, :array_17

    aput-object v2, v1, v4

    new-array v2, v4, [I

    fill-array-data v2, :array_18

    aput-object v2, v1, v8

    const/4 v2, 0x5

    new-array v3, v4, [I

    fill-array-data v3, :array_19

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-array v3, v4, [I

    fill-array-data v3, :array_1a

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-array v3, v4, [I

    fill-array-data v3, :array_1b

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-array v3, v4, [I

    fill-array-data v3, :array_1c

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-array v3, v4, [I

    fill-array-data v3, :array_1d

    aput-object v3, v1, v2

    aput-object v1, v0, v7

    const/16 v1, 0xa

    new-array v1, v1, [[I

    new-array v2, v4, [I

    fill-array-data v2, :array_1e

    aput-object v2, v1, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_1f

    aput-object v2, v1, v6

    new-array v2, v4, [I

    fill-array-data v2, :array_20

    aput-object v2, v1, v7

    new-array v2, v4, [I

    fill-array-data v2, :array_21

    aput-object v2, v1, v4

    new-array v2, v4, [I

    fill-array-data v2, :array_22

    aput-object v2, v1, v8

    const/4 v2, 0x5

    new-array v3, v4, [I

    fill-array-data v3, :array_23

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-array v3, v4, [I

    fill-array-data v3, :array_24

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-array v3, v4, [I

    fill-array-data v3, :array_25

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-array v3, v4, [I

    fill-array-data v3, :array_26

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-array v3, v4, [I

    fill-array-data v3, :array_27

    aput-object v3, v1, v2

    aput-object v1, v0, v4

    sput-object v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$LTE_OFDM_Timings;->sSubFrameFieldDurationsComputeTable:[[[I

    return-void

    :array_0
    .array-data 4
        0xd6
        0x47
        0x2ca
    .end array-data

    :array_1
    .array-data 4
        0x283
        0x47
        0x11d
    .end array-data

    :array_2
    .array-data 4
        0x2ca
        0x47
        0xd6
    .end array-data

    :array_3
    .array-data 4
        0x311
        0x47
        0x8e
    .end array-data

    :array_4
    .array-data 4
        0x359
        0x47
        0x47
    .end array-data

    :array_5
    .array-data 4
        0xd6
        0x8e
        0x282
    .end array-data

    :array_6
    .array-data 4
        0x283
        0x8e
        0xd6
    .end array-data

    :array_7
    .array-data 4
        0x2ca
        0x8e
        0x8e
    .end array-data

    :array_8
    .array-data 4
        0x311
        0x8e
        0x47
    .end array-data

    :array_9
    .array-data 4
        0x2d8
        0x8e
        0x1ac
    .end array-data

    :array_a
    .array-data 4
        0xfa
        0x47
        0x2a6
    .end array-data

    :array_b
    .array-data 4
        0x29a
        0x47
        0x105
    .end array-data

    :array_c
    .array-data 4
        0x2ee
        0x47
        0xb2
    .end array-data

    :array_d
    .array-data 4
        0x341
        0x47
        0x5f
    .end array-data

    :array_e
    .array-data 4
        0xfa
        0x8e
        0x25f
    .end array-data

    :array_f
    .array-data 4
        0x29a
        0x8e
        0xbe
    .end array-data

    :array_10
    .array-data 4
        0x2ee
        0x8e
        0x6b
    .end array-data

    :array_11
    .array-data 4
        0x1a0
        0x8e
        0x1b8
    .end array-data

    :array_12
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_13
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_14
    .array-data 4
        0xd6
        0x53
        0x2be
    .end array-data

    :array_15
    .array-data 4
        0x283
        0x53
        0x111
    .end array-data

    :array_16
    .array-data 4
        0x2ca
        0x53
        0xca
    .end array-data

    :array_17
    .array-data 4
        0x311
        0x53
        0x82
    .end array-data

    :array_18
    .array-data 4
        0x359
        0x53
        0x3b
    .end array-data

    :array_19
    .array-data 4
        0xd6
        0xa9
        0x267
    .end array-data

    :array_1a
    .array-data 4
        0x283
        0xa9
        0xbb
    .end array-data

    :array_1b
    .array-data 4
        0x2ca
        0xa9
        0x73
    .end array-data

    :array_1c
    .array-data 4
        0x311
        0xa9
        0x2c
    .end array-data

    :array_1d
    .array-data 4
        0x2d8
        0xa9
        0x191
    .end array-data

    :array_1e
    .array-data 4
        0xfa
        0x53
        0x29a
    .end array-data

    :array_1f
    .array-data 4
        0x29a
        0x53
        0xfa
    .end array-data

    :array_20
    .array-data 4
        0x2ee
        0x53
        0xa6
    .end array-data

    :array_21
    .array-data 4
        0x341
        0x53
        0x53
    .end array-data

    :array_22
    .array-data 4
        0xfa
        0xa6
        0x247
    .end array-data

    :array_23
    .array-data 4
        0x29a
        0xa6
        0xa6
    .end array-data

    :array_24
    .array-data 4
        0x2ee
        0xa6
        0x53
    .end array-data

    :array_25
    .array-data 4
        0x1a0
        0xa6
        0x1a0
    .end array-data

    :array_26
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_27
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    return-void
.end method

.method public static getFrameDataFromLTEInfos(I[I)Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$LTE_OFDM_Timings$frameData;
    .locals 13
    .param p0, "aSpecialSubframeConfig"    # I
    .param p1, "aLteBitmap"    # [I

    .prologue
    .line 458
    if-ltz p0, :cond_0

    const/16 v9, 0xa

    if-lt p0, v9, :cond_1

    .line 460
    :cond_0
    const-string v9, "CWS_SERVICE_MGR-CoexMgr"

    const-string v10, "getFrameDataFromLTEInfos() SpecialSubframeConfig is wrong!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const/4 v8, 0x0

    .line 566
    :goto_0
    return-object v8

    .line 464
    :cond_1
    array-length v9, p1

    const/16 v10, 0xa

    if-eq v9, v10, :cond_2

    .line 465
    const-string v9, "CWS_SERVICE_MGR-CoexMgr"

    const-string v10, "getFrameDataFromLTEInfos() LTE_BITMAP[] size is wrong!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const/4 v8, 0x0

    goto :goto_0

    .line 471
    :cond_2
    const/16 v9, 0xa

    new-array v6, v9, [I

    .line 473
    .local v6, "periodsDurations":[I
    const/16 v9, 0xa

    new-array v7, v9, [B

    .line 476
    .local v7, "periodsTypes":[B
    const/4 v0, 0x0

    .line 479
    .local v0, "curPeriodIdx":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v9, p1

    if-ge v2, v9, :cond_7

    .line 483
    aget v9, p1, v2

    packed-switch v9, :pswitch_data_0

    .line 497
    const/4 v1, -0x1

    .line 498
    .local v1, "currentPeriodType":B
    const-string v9, "CWS_SERVICE_MGR-CoexMgr"

    const-string v10, "getFrameDataFromLTEInfos() Reserved sub frame in LTE_BITMAP!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const/4 v8, 0x0

    goto :goto_0

    .line 485
    .end local v1    # "currentPeriodType":B
    :pswitch_0
    const/4 v1, 0x0

    .line 503
    .restart local v1    # "currentPeriodType":B
    :goto_2
    if-nez v0, :cond_3

    .line 504
    aput-byte v1, v7, v0

    .line 505
    const/16 v9, 0x3e8

    aput v9, v6, v0

    .line 506
    add-int/lit8 v0, v0, 0x1

    .line 479
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 488
    .end local v1    # "currentPeriodType":B
    :pswitch_1
    const/4 v1, 0x1

    .line 489
    .restart local v1    # "currentPeriodType":B
    goto :goto_2

    .line 491
    .end local v1    # "currentPeriodType":B
    :pswitch_2
    const/4 v1, 0x2

    .line 492
    .restart local v1    # "currentPeriodType":B
    goto :goto_2

    .line 494
    .end local v1    # "currentPeriodType":B
    :pswitch_3
    const/4 v1, 0x3

    .line 495
    .restart local v1    # "currentPeriodType":B
    goto :goto_2

    .line 512
    :cond_3
    add-int/lit8 v9, v0, -0x1

    aget-byte v9, v7, v9

    if-eq v1, v9, :cond_6

    .line 514
    aput-byte v1, v7, v0

    .line 517
    const/4 v9, 0x3

    if-ne v9, v1, :cond_4

    add-int/lit8 v9, v0, -0x1

    aget-byte v9, v7, v9

    if-nez v9, :cond_4

    .line 520
    sget-object v9, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$LTE_OFDM_Timings;->sSubFrameFieldDurationsComputeTable:[[[I

    const/4 v10, 0x3

    aget-object v9, v9, v10

    aget-object v9, v9, p0

    const/4 v10, 0x2

    aget v9, v9, v10

    aput v9, v6, v0

    .line 526
    add-int/lit8 v9, v0, -0x1

    aget v10, v6, v9

    sget-object v11, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$LTE_OFDM_Timings;->sSubFrameFieldDurationsComputeTable:[[[I

    const/4 v12, 0x3

    aget-object v11, v11, v12

    aget-object v11, v11, p0

    const/4 v12, 0x0

    aget v11, v11, v12

    add-int/2addr v10, v11

    aput v10, v6, v9

    .line 531
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 532
    :cond_4
    const/4 v9, 0x1

    if-ne v9, v1, :cond_5

    const/4 v9, 0x3

    add-int/lit8 v10, v0, -0x1

    aget-byte v10, v7, v10

    if-ne v9, v10, :cond_5

    .line 536
    sget-object v9, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$LTE_OFDM_Timings;->sSubFrameFieldDurationsComputeTable:[[[I

    const/4 v10, 0x3

    aget-object v9, v9, v10

    aget-object v9, v9, p0

    const/4 v10, 0x1

    aget v9, v9, v10

    add-int/lit16 v9, v9, 0x3e8

    aput v9, v6, v0

    .line 540
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 544
    :cond_5
    const/16 v9, 0x3e8

    aput v9, v6, v0

    .line 545
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 550
    :cond_6
    add-int/lit8 v9, v0, -0x1

    aget v10, v6, v9

    add-int/lit16 v10, v10, 0x3e8

    aput v10, v6, v9

    goto :goto_3

    .line 556
    .end local v1    # "currentPeriodType":B
    :cond_7
    int-to-byte v4, v0

    .line 557
    .local v4, "newArraySize":B
    new-array v3, v4, [I

    .line 558
    .local v3, "newArrayDurations":[I
    new-array v5, v4, [B

    .line 559
    .local v5, "newArrayTypes":[B
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v4, :cond_8

    .line 560
    aget v9, v6, v2

    aput v9, v3, v2

    .line 561
    aget-byte v9, v7, v2

    aput-byte v9, v5, v2

    .line 559
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 564
    :cond_8
    new-instance v8, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$LTE_OFDM_Timings$frameData;

    invoke-direct {v8, v4, v3, v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$LTE_OFDM_Timings$frameData;-><init>(B[I[B)V

    .line 566
    .local v8, "ret_frameData":Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$LTE_OFDM_Timings$frameData;
    goto/16 :goto_0

    .line 483
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

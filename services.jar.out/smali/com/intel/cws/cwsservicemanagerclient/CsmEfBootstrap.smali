.class public Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;
.super Ljava/lang/Object;
.source "CsmEfBootstrap.java"


# static fields
.field private static final CORRECT_WBXML_TAG:[B

.field private static final DEBUG:Z

.field private static final EF_DOD_PATH:[B

.field private static final HSLP_TAG:[B

.field private static final PKCS15_DF_NAME:[B

.field private static final POSITION_TAG:[B

.field private static final STRING_END:[B

.field private static final STRING_START:[B

.field private static final SUPL_APPID:[B

.field private static final TAG:Ljava/lang/String; = "CsmEfBootstrap"


# instance fields
.field private mContent:[B

.field private mCwsServiceMgr:Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

.field private mId:B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 32
    const-string v0, "CsmEfBootstrap"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->DEBUG:Z

    .line 35
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->EF_DOD_PATH:[B

    .line 36
    new-array v0, v2, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->POSITION_TAG:[B

    .line 37
    new-array v0, v2, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->CORRECT_WBXML_TAG:[B

    .line 39
    new-array v0, v1, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->HSLP_TAG:[B

    .line 40
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    sput-object v0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->SUPL_APPID:[B

    .line 41
    new-array v0, v1, [B

    fill-array-data v0, :array_5

    sput-object v0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->STRING_START:[B

    .line 42
    new-array v0, v1, [B

    fill-array-data v0, :array_6

    sput-object v0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->STRING_END:[B

    .line 43
    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_7

    sput-object v0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->PKCS15_DF_NAME:[B

    return-void

    .line 35
    :array_0
    .array-data 1
        0x64t
        0x10t
    .end array-data

    .line 36
    nop

    :array_1
    .array-data 1
        0x2bt
        0x5t
        0x1t
    .end array-data

    .line 37
    :array_2
    .array-data 1
        0x3t
        0xbt
        0x6at
    .end array-data

    .line 39
    :array_3
    .array-data 1
        -0x79t
        0x34t
    .end array-data

    .line 40
    nop

    :array_4
    .array-data 1
        0x61t
        0x70t
        0x30t
        0x30t
        0x30t
        0x34t
    .end array-data

    .line 41
    nop

    :array_5
    .array-data 1
        0x6t
        0x3t
    .end array-data

    .line 42
    nop

    :array_6
    .array-data 1
        0x0t
        0x1t
    .end array-data

    .line 43
    nop

    :array_7
    .array-data 1
        -0x60t
        0x0t
        0x0t
        0x0t
        0x63t
        0x50t
        0x4bt
        0x43t
        0x53t
        0x2dt
        0x31t
        0x35t
    .end array-data
.end method

.method public constructor <init>(BLcom/intel/cws/cwsservicemanager/ICwsServiceMgr;)V
    .locals 0
    .param p1, "id"    # B
    .param p2, "cwsServiceMgr"    # Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mCwsServiceMgr:Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    .line 55
    iput-byte p1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mId:B

    .line 56
    return-void
.end method

.method private lookupAppId([B)I
    .locals 9
    .param p1, "appId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/cws/cwsservicemanager/CsmException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 324
    const/4 v0, 0x0

    .line 325
    .local v0, "i":I
    const/4 v2, 0x0

    .line 327
    .local v2, "j":I
    iget-object v3, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mContent:[B

    array-length v3, v3

    if-nez v3, :cond_0

    .line 328
    const-string v3, "CsmEfBootstrap"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-byte v5, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mId:B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] mContent is empty."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    new-instance v3, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v4, "mContent is empty"

    invoke-direct {v3, v4, v8}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 332
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mContent:[B

    array-length v3, v3

    add-int/lit8 v3, v3, -0x3

    if-ge v0, v3, :cond_3

    .line 333
    sget-object v3, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->CORRECT_WBXML_TAG:[B

    aget-byte v3, v3, v5

    iget-object v4, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mContent:[B

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_1

    sget-object v3, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->CORRECT_WBXML_TAG:[B

    aget-byte v3, v3, v6

    iget-object v4, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mContent:[B

    aget-byte v4, v4, v6

    if-ne v3, v4, :cond_1

    sget-object v3, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->CORRECT_WBXML_TAG:[B

    aget-byte v3, v3, v7

    iget-object v4, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mContent:[B

    aget-byte v4, v4, v7

    if-eq v3, v4, :cond_2

    .line 336
    :cond_1
    const-string v3, "CsmEfBootstrap"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-byte v5, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mId:B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] Wrong WBXML format"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    new-instance v3, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v4, "Wrong WBXML format"

    invoke-direct {v3, v4}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 332
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 341
    :cond_3
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mContent:[B

    array-length v3, v3

    array-length v4, p1

    add-int/lit8 v4, v4, 0x1

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_8

    .line 342
    const/4 v1, 0x1

    .line 344
    .local v1, "idMatch":Z
    const/4 v2, 0x0

    :goto_2
    array-length v3, p1

    if-ge v2, v3, :cond_4

    .line 345
    aget-byte v3, p1, v2

    iget-object v4, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mContent:[B

    add-int v5, v0, v2

    aget-byte v4, v4, v5

    if-eq v3, v4, :cond_6

    .line 346
    const/4 v1, 0x0

    .line 350
    :cond_4
    iget-object v3, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mContent:[B

    array-length v4, p1

    add-int/2addr v4, v0

    aget-byte v3, v3, v4

    if-eqz v3, :cond_5

    .line 351
    const/4 v1, 0x0

    .line 354
    :cond_5
    if-eqz v1, :cond_7

    .line 355
    array-length v3, p1

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x1

    return v3

    .line 344
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 341
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 360
    .end local v1    # "idMatch":Z
    :cond_8
    new-instance v3, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v4, "No AppId"

    invoke-direct {v3, v4, v8}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method

.method private lookupPositionTag()[B
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, "i":I
    new-array v1, v7, [B

    fill-array-data v1, :array_0

    .line 204
    .local v1, "position":[B
    sget-boolean v2, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "CsmEfBootstrap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mId:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] lookupPositionTag - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mContent:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mContent:[B

    array-length v2, v2

    const/16 v3, 0xb

    if-lt v2, v3, :cond_2

    .line 208
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mContent:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0xb

    if-gt v0, v2, :cond_2

    .line 209
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mContent:[B

    aget-byte v2, v2, v0

    sget-object v3, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->POSITION_TAG:[B

    aget-byte v3, v3, v5

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mContent:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v2, v2, v3

    sget-object v3, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->POSITION_TAG:[B

    aget-byte v3, v3, v6

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mContent:[B

    add-int/lit8 v3, v0, 0x2

    aget-byte v2, v2, v3

    sget-object v3, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->POSITION_TAG:[B

    aget-byte v3, v3, v7

    if-ne v2, v3, :cond_1

    .line 213
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mContent:[B

    add-int/lit8 v3, v0, 0x9

    aget-byte v2, v2, v3

    aput-byte v2, v1, v5

    .line 214
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mContent:[B

    add-int/lit8 v3, v0, 0xa

    aget-byte v2, v2, v3

    aput-byte v2, v1, v6

    .line 208
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 218
    :cond_2
    sget-boolean v2, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "CsmEfBootstrap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mId:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] lookupPositionTag - position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_3
    return-object v1

    .line 202
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method private readBootstrap()[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/cws/cwsservicemanager/CsmException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x5

    .line 60
    new-array v3, v5, [B

    .line 61
    .local v3, "emptyFile":[B
    new-array v0, v5, [B

    .line 63
    .local v0, "bootstrapContent":[B
    sget-boolean v5, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "CsmEfBootstrap"

    const-string v6, "readBootstrap"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mCwsServiceMgr:Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    if-nez v5, :cond_1

    .line 66
    const-string v5, "CsmEfBootstrap"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mId:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] mCwsServiceMgr is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v5, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v6, "File is empty"

    invoke-direct {v5, v6, v8}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 71
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mCwsServiceMgr:Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    iget-byte v6, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mId:B

    invoke-interface {v5, v6}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;->uiccBeginTransaction(B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 78
    :try_start_1
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mCwsServiceMgr:Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    iget-byte v6, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mId:B

    sget-object v7, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->PKCS15_DF_NAME:[B

    invoke-interface {v5, v6, v7}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;->uiccSelectAid(B[B)Z

    move-result v5

    if-nez v5, :cond_2

    .line 79
    const-string v5, "CsmEfBootstrap"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mId:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] PKCS15 not selected"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 81
    :try_start_2
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mCwsServiceMgr:Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    iget-byte v6, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mId:B

    invoke-interface {v5, v6}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;->uiccEndTransaction(B)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 87
    :goto_0
    :try_start_3
    new-instance v5, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v6, "File is empty"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;I)V

    throw v5
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 89
    :catch_0
    move-exception v2

    .line 90
    .local v2, "e":Landroid/os/RemoteException;
    const-string v5, "CsmEfBootstrap"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mId:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] Unable to select Aid PKCS15_DF_NAME."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :try_start_4
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mCwsServiceMgr:Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    iget-byte v6, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mId:B

    invoke-interface {v5, v6}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;->uiccEndTransaction(B)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 98
    :goto_1
    new-instance v5, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v6, "File is empty"

    invoke-direct {v5, v6, v8}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 72
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 73
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string v5, "CsmEfBootstrap"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mId:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] Unable to begin Uicc transaction."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    new-instance v5, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v6, "File is empty"

    invoke-direct {v5, v6, v8}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 82
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v2

    .line 83
    .restart local v2    # "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v5, "CsmEfBootstrap"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mId:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] Unable to end transaction."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 94
    :catch_3
    move-exception v4

    .line 95
    .local v4, "ex":Landroid/os/RemoteException;
    const-string v5, "CsmEfBootstrap"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mId:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] Unable to end transaction."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 102
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_2
    :try_start_6
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mCwsServiceMgr:Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    iget-byte v6, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mId:B

    sget-object v7, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->EF_DOD_PATH:[B

    invoke-interface {v5, v6, v7}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;->uiccSelectEf(B[B)Z

    move-result v5

    if-ne v9, v5, :cond_4

    .line 103
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mCwsServiceMgr:Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    iget-byte v6, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mId:B

    invoke-interface {v5, v6}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;->uiccReadBinary(B)[B

    move-result-object v5

    iput-object v5, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mContent:[B

    .line 104
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mContent:[B

    if-eqz v5, :cond_3

    .line 105
    invoke-direct {p0}, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->lookupPositionTag()[B

    move-result-object v1

    .line 106
    .local v1, "bootstrapPosition":[B
    const/4 v5, 0x0

    aget-byte v5, v1, v5

    if-nez v5, :cond_5

    const/4 v5, 0x1

    aget-byte v5, v1, v5

    if-nez v5, :cond_5

    .line 108
    const-string v5, "CsmEfBootstrap"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mId:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Bootstrap file location not correct"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    .line 111
    :try_start_7
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mCwsServiceMgr:Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    iget-byte v6, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mId:B

    invoke-interface {v5, v6}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;->uiccEndTransaction(B)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5

    .line 116
    :goto_2
    :try_start_8
    new-instance v5, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v6, "File is empty"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;I)V

    throw v5
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4

    .line 138
    .end local v1    # "bootstrapPosition":[B
    :catch_4
    move-exception v2

    .line 139
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string v5, "CsmEfBootstrap"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mId:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] Unable to select Ef EF_DOD_PATH."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :try_start_9
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mCwsServiceMgr:Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    iget-byte v6, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mId:B

    invoke-interface {v5, v6}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;->uiccEndTransaction(B)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_8

    .line 148
    new-instance v5, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v6, "File is empty"

    invoke-direct {v5, v6, v8}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 112
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v1    # "bootstrapPosition":[B
    :catch_5
    move-exception v2

    .line 113
    .restart local v2    # "e":Landroid/os/RemoteException;
    :try_start_a
    const-string v5, "CsmEfBootstrap"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mId:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] Unable to end transaction."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 119
    .end local v1    # "bootstrapPosition":[B
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3
    const-string v5, "CsmEfBootstrap"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mId:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] EF-DODF file not open"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_4

    .line 121
    :try_start_b
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mCwsServiceMgr:Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    iget-byte v6, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mId:B

    invoke-interface {v5, v6}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;->uiccEndTransaction(B)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_6

    .line 126
    :goto_3
    :try_start_c
    new-instance v5, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v6, "File is empty"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 122
    :catch_6
    move-exception v2

    .line 123
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string v5, "CsmEfBootstrap"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mId:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] Unable to end transaction."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 129
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_4
    const-string v5, "CsmEfBootstrap"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mId:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] Bootstrap file location not correct"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_4

    .line 131
    :try_start_d
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mCwsServiceMgr:Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    iget-byte v6, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mId:B

    invoke-interface {v5, v6}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;->uiccEndTransaction(B)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_7

    .line 136
    :goto_4
    :try_start_e
    new-instance v5, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v6, "File is empty"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 132
    :catch_7
    move-exception v2

    .line 133
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string v5, "CsmEfBootstrap"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mId:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] Unable to end transaction."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_4

    goto :goto_4

    .line 143
    :catch_8
    move-exception v4

    .line 144
    .restart local v4    # "ex":Landroid/os/RemoteException;
    const-string v5, "CsmEfBootstrap"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mId:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] Unable to end transaction."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance v5, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v6, "File is empty"

    invoke-direct {v5, v6, v8}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 153
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v4    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "bootstrapPosition":[B
    :cond_5
    :try_start_f
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mCwsServiceMgr:Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    iget-byte v6, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mId:B

    sget-object v7, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->PKCS15_DF_NAME:[B

    invoke-interface {v5, v6, v7}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;->uiccSelectAid(B[B)Z

    move-result v5

    if-nez v5, :cond_6

    .line 154
    const-string v5, "CsmEfBootstrap"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mId:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] PKCS15 not selected"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_9

    .line 156
    :try_start_10
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mCwsServiceMgr:Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    iget-byte v6, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mId:B

    invoke-interface {v5, v6}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;->uiccEndTransaction(B)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_a

    .line 161
    :try_start_11
    new-instance v5, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v6, "File is empty"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;I)V

    throw v5
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_9

    .line 163
    :catch_9
    move-exception v2

    .line 164
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string v5, "CsmEfBootstrap"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mId:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] Unable to select Aid PKCS15_DF_NAME."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    :try_start_12
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mCwsServiceMgr:Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    iget-byte v6, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mId:B

    invoke-interface {v5, v6}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;->uiccEndTransaction(B)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_b

    .line 171
    new-instance v5, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v6, "File is empty"

    invoke-direct {v5, v6, v8}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 157
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_a
    move-exception v2

    .line 158
    .restart local v2    # "e":Landroid/os/RemoteException;
    :try_start_13
    const-string v5, "CsmEfBootstrap"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mId:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] Unable to end transaction."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    new-instance v5, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v6, "File is empty"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;I)V

    throw v5
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_9

    .line 167
    :catch_b
    move-exception v4

    .line 168
    .restart local v4    # "ex":Landroid/os/RemoteException;
    const-string v5, "CsmEfBootstrap"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mId:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] Unable to end transaction."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    new-instance v5, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v6, "File is empty"

    invoke-direct {v5, v6, v8}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 175
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_6
    :try_start_14
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mCwsServiceMgr:Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    iget-byte v6, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mId:B

    invoke-interface {v5, v6, v1}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;->uiccSelectEf(B[B)Z

    move-result v5

    if-ne v9, v5, :cond_7

    .line 176
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mCwsServiceMgr:Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    iget-byte v6, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mId:B

    invoke-interface {v5, v6}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;->uiccReadBinary(B)[B

    move-result-object v0

    .line 177
    sget-boolean v5, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->DEBUG:Z

    if-eqz v5, :cond_7

    const-string v5, "CsmEfBootstrap"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mId:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] Content retrieved: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_c

    .line 192
    :cond_7
    :try_start_15
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mCwsServiceMgr:Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    iget-byte v6, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mId:B

    invoke-interface {v5, v6}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;->uiccEndTransaction(B)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_e

    .line 197
    return-object v0

    .line 180
    :catch_c
    move-exception v2

    .line 181
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string v5, "CsmEfBootstrap"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mId:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] Unable to select Aid PKCS15_DF_NAME."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    :try_start_16
    iget-object v5, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mCwsServiceMgr:Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    iget-byte v6, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mId:B

    invoke-interface {v5, v6}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;->uiccEndTransaction(B)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_d

    .line 188
    new-instance v5, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v6, "File is empty"

    invoke-direct {v5, v6, v8}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 184
    :catch_d
    move-exception v4

    .line 185
    .restart local v4    # "ex":Landroid/os/RemoteException;
    const-string v5, "CsmEfBootstrap"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mId:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] Unable to end transaction."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    new-instance v5, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v6, "File is empty"

    invoke-direct {v5, v6, v8}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 193
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v4    # "ex":Landroid/os/RemoteException;
    :catch_e
    move-exception v2

    .line 194
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string v5, "CsmEfBootstrap"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mId:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] Unable to end transaction."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    new-instance v5, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v6, "File is empty"

    invoke-direct {v5, v6, v8}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;I)V

    throw v5
.end method


# virtual methods
.method public readHslpAddress()Ljava/lang/String;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/cws/cwsservicemanager/CsmException;
        }
    .end annotation

    .prologue
    .line 223
    const/4 v10, 0x0

    .line 224
    .local v10, "i":I
    const/4 v11, 0x0

    .line 225
    .local v11, "startIndex":I
    const/4 v3, 0x0

    .line 226
    .local v3, "endIndex":I
    const/4 v4, 0x0

    .line 227
    .local v4, "endOfAp0004":I
    const/4 v9, 0x0

    .line 228
    .local v9, "hslpTagFound":Z
    const/4 v8, 0x0

    .line 229
    .local v8, "hslpStartStringFound":Z
    const/4 v7, 0x0

    .line 231
    .local v7, "hslpEndStringFound":Z
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 234
    .local v2, "emptyAddress":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->readBootstrap()[B

    move-result-object v12

    iput-object v12, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mContent:[B
    :try_end_0
    .catch Lcom/intel/cws/cwsservicemanager/CsmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    sget-boolean v12, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->DEBUG:Z

    if-eqz v12, :cond_0

    const-string v12, "CsmEfBootstrap"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-byte v14, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mId:B

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] readHslpAddress - mContent: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mContent:[B

    invoke-static {v14}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_0
    :try_start_1
    sget-object v12, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->SUPL_APPID:[B

    invoke-direct {p0, v12}, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->lookupAppId([B)I
    :try_end_1
    .catch Lcom/intel/cws/cwsservicemanager/CsmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 249
    if-nez v4, :cond_2

    .line 250
    const-string v12, "CsmEfBootstrap"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-byte v14, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mId:B

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] ap0004 not found"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    new-instance v12, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v13, "Address is empty"

    const/4 v14, 0x6

    invoke-direct {v12, v13, v14}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;I)V

    throw v12

    .line 235
    :catch_0
    move-exception v1

    .line 236
    .local v1, "e":Lcom/intel/cws/cwsservicemanager/CsmException;
    sget-boolean v12, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->DEBUG:Z

    if-eqz v12, :cond_1

    const-string v12, "CsmEfBootstrap"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-byte v14, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mId:B

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] readHslpAddress - File empty"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_1
    throw v1

    .line 245
    .end local v1    # "e":Lcom/intel/cws/cwsservicemanager/CsmException;
    :catch_1
    move-exception v1

    .line 246
    .restart local v1    # "e":Lcom/intel/cws/cwsservicemanager/CsmException;
    throw v1

    .line 255
    .end local v1    # "e":Lcom/intel/cws/cwsservicemanager/CsmException;
    :cond_2
    move v10, v4

    :goto_0
    iget-object v12, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mContent:[B

    array-length v12, v12

    add-int/lit8 v12, v12, -0x2

    if-ge v10, v12, :cond_3

    .line 256
    sget-object v12, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->HSLP_TAG:[B

    const/4 v13, 0x0

    aget-byte v12, v12, v13

    iget-object v13, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mContent:[B

    aget-byte v13, v13, v10

    if-ne v12, v13, :cond_4

    sget-object v12, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->HSLP_TAG:[B

    const/4 v13, 0x1

    aget-byte v12, v12, v13

    iget-object v13, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mContent:[B

    add-int/lit8 v14, v10, 0x1

    aget-byte v13, v13, v14

    if-ne v12, v13, :cond_4

    .line 257
    const/4 v9, 0x1

    .line 262
    :cond_3
    if-nez v9, :cond_5

    .line 263
    const-string v12, "CsmEfBootstrap"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-byte v14, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mId:B

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] H-SLP Tag not found"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    new-instance v12, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v13, "Address is empty"

    const/4 v14, 0x6

    invoke-direct {v12, v13, v14}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;I)V

    throw v12

    .line 255
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 268
    :cond_5
    add-int/lit8 v10, v10, 0x2

    :goto_1
    iget-object v12, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mContent:[B

    array-length v12, v12

    add-int/lit8 v12, v12, -0x2

    if-ge v10, v12, :cond_6

    .line 269
    sget-object v12, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->STRING_START:[B

    const/4 v13, 0x0

    aget-byte v12, v12, v13

    iget-object v13, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mContent:[B

    aget-byte v13, v13, v10

    if-ne v12, v13, :cond_7

    sget-object v12, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->STRING_START:[B

    const/4 v13, 0x1

    aget-byte v12, v12, v13

    iget-object v13, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mContent:[B

    add-int/lit8 v14, v10, 0x1

    aget-byte v13, v13, v14

    if-ne v12, v13, :cond_7

    .line 271
    const/4 v8, 0x1

    .line 272
    add-int/lit8 v11, v10, 0x2

    .line 282
    :cond_6
    :goto_2
    if-nez v8, :cond_9

    .line 283
    const-string v12, "CsmEfBootstrap"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-byte v14, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mId:B

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] H-SLP string not found"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    new-instance v12, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v13, "Address is empty"

    const/4 v14, 0x6

    invoke-direct {v12, v13, v14}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;I)V

    throw v12

    .line 275
    :cond_7
    sget-object v12, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->STRING_END:[B

    const/4 v13, 0x0

    aget-byte v12, v12, v13

    iget-object v13, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mContent:[B

    aget-byte v13, v13, v10

    if-ne v12, v13, :cond_8

    sget-object v12, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->STRING_END:[B

    const/4 v13, 0x1

    aget-byte v12, v12, v13

    iget-object v13, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mContent:[B

    add-int/lit8 v14, v10, 0x1

    aget-byte v13, v13, v14

    if-ne v12, v13, :cond_8

    .line 277
    const-string v12, "CsmEfBootstrap"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-byte v14, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mId:B

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] Parameter ended without the string staring"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 268
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 288
    :cond_9
    add-int/lit8 v10, v10, 0x2

    :goto_3
    iget-object v12, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mContent:[B

    array-length v12, v12

    add-int/lit8 v12, v12, -0x2

    if-ge v10, v12, :cond_a

    .line 289
    sget-object v12, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->STRING_END:[B

    const/4 v13, 0x0

    aget-byte v12, v12, v13

    iget-object v13, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mContent:[B

    aget-byte v13, v13, v10

    if-ne v12, v13, :cond_b

    sget-object v12, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->STRING_END:[B

    const/4 v13, 0x1

    aget-byte v12, v12, v13

    iget-object v13, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mContent:[B

    add-int/lit8 v14, v10, 0x1

    aget-byte v13, v13, v14

    if-ne v12, v13, :cond_b

    .line 291
    const/4 v7, 0x1

    .line 292
    add-int/lit8 v3, v10, -0x1

    .line 297
    :cond_a
    if-nez v7, :cond_c

    .line 298
    const-string v12, "CsmEfBootstrap"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-byte v14, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mId:B

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] H-SLP end string not found"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    new-instance v12, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v13, "Address is empty"

    const/4 v14, 0x6

    invoke-direct {v12, v13, v14}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;I)V

    throw v12

    .line 288
    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 303
    :cond_c
    add-int/lit8 v12, v3, 0x1

    sub-int/2addr v12, v11

    :try_start_2
    new-array v6, v12, [B

    .line 305
    .local v6, "hslpArray":[B
    const/4 v10, 0x0

    :goto_4
    sub-int v12, v3, v11

    if-gt v10, v12, :cond_d

    .line 306
    iget-object v12, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mContent:[B

    add-int v13, v11, v10

    aget-byte v12, v12, v13

    aput-byte v12, v6, v10

    .line 305
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 309
    :cond_d
    new-instance v0, Ljava/lang/String;

    const-string v12, "US-ASCII"

    invoke-direct {v0, v6, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 310
    .local v0, "decodedString":Ljava/lang/String;
    sget-boolean v12, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->DEBUG:Z

    if-eqz v12, :cond_e

    const-string v12, "CsmEfBootstrap"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-byte v14, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mId:B

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] readHslpAddress - H-SLP string:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_3

    .line 312
    :cond_e
    return-object v0

    .line 314
    .end local v0    # "decodedString":Ljava/lang/String;
    .end local v6    # "hslpArray":[B
    :catch_2
    move-exception v5

    .line 315
    .local v5, "ex":Ljava/lang/NullPointerException;
    const-string v12, "CsmEfBootstrap"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-byte v14, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mId:B

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] readHslpAddress exception:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    .end local v5    # "ex":Ljava/lang/NullPointerException;
    :goto_5
    new-instance v12, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v13, "Address is empty"

    const/4 v14, 0x6

    invoke-direct {v12, v13, v14}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;I)V

    throw v12

    .line 316
    :catch_3
    move-exception v5

    .line 317
    .local v5, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v12, "CsmEfBootstrap"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-byte v14, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->mId:B

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] readHslpAddress exception:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

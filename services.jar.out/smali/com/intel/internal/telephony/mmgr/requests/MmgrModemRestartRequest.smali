.class public Lcom/intel/internal/telephony/mmgr/requests/MmgrModemRestartRequest;
.super Lcom/intel/internal/telephony/mmgr/requests/MmgrBaseRequest;
.source "MmgrModemRestartRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/intel/internal/telephony/mmgr/requests/MmgrBaseRequest;-><init>(I)V

    .line 26
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "ModemRestartRequest"

    return-object v0
.end method

.method protected getPayload()[B
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.class public Lcom/intel/internal/telephony/mmgr/requests/MmgrRegisterEventsRequest;
.super Lcom/intel/internal/telephony/mmgr/requests/MmgrBaseRequest;
.source "MmgrRegisterEventsRequest.java"


# instance fields
.field private subscribedEvents:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "subscribedEvents"    # I

    .prologue
    .line 29
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/intel/internal/telephony/mmgr/requests/MmgrBaseRequest;-><init>(I)V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/intel/internal/telephony/mmgr/requests/MmgrRegisterEventsRequest;->subscribedEvents:I

    .line 30
    invoke-virtual {p0, p1}, Lcom/intel/internal/telephony/mmgr/requests/MmgrRegisterEventsRequest;->setSubscribedEvents(I)V

    .line 31
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "RegisterEventsRequest"

    return-object v0
.end method

.method protected getPayload()[B
    .locals 2

    .prologue
    .line 48
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 50
    .local v0, "ret":Ljava/nio/ByteBuffer;
    iget v1, p0, Lcom/intel/internal/telephony/mmgr/requests/MmgrRegisterEventsRequest;->subscribedEvents:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 52
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public getSubscribedEvents()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/intel/internal/telephony/mmgr/requests/MmgrRegisterEventsRequest;->subscribedEvents:I

    return v0
.end method

.method public setSubscribedEvents(I)V
    .locals 0
    .param p1, "subscribedEvents"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/intel/internal/telephony/mmgr/requests/MmgrRegisterEventsRequest;->subscribedEvents:I

    .line 39
    return-void
.end method

.class public abstract Lcom/intel/internal/telephony/mmgr/requests/MmgrBaseRequest;
.super Lcom/intel/internal/telephony/ModemRequestArgs;
.source "MmgrBaseRequest.java"


# instance fields
.field protected requestId:I


# direct methods
.method protected constructor <init>(I)V
    .locals 2
    .param p1, "requestId"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/intel/internal/telephony/ModemRequestArgs;-><init>()V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/intel/internal/telephony/mmgr/requests/MmgrBaseRequest;->requestId:I

    .line 29
    if-gez p1, :cond_0

    .line 30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "requestId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    iput p1, p0, Lcom/intel/internal/telephony/mmgr/requests/MmgrBaseRequest;->requestId:I

    .line 33
    return-void
.end method


# virtual methods
.method public getFrame()[B
    .locals 4

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/intel/internal/telephony/mmgr/requests/MmgrBaseRequest;->getPayload()[B

    move-result-object v0

    .line 40
    .local v0, "payload":[B
    if-eqz v0, :cond_1

    array-length v1, v0

    .line 46
    .local v1, "payloadSize":I
    :goto_0
    add-int/lit8 v3, v1, 0xc

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 48
    .local v2, "ret":Ljava/nio/ByteBuffer;
    if-eqz v2, :cond_2

    .line 49
    iget v3, p0, Lcom/intel/internal/telephony/mmgr/requests/MmgrBaseRequest;->requestId:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 50
    invoke-super {p0}, Lcom/intel/internal/telephony/ModemRequestArgs;->getTimestamp()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 51
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 52
    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 55
    :cond_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 57
    :goto_1
    return-object v3

    .line 40
    .end local v1    # "payloadSize":I
    .end local v2    # "ret":Ljava/nio/ByteBuffer;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 57
    .restart local v1    # "payloadSize":I
    .restart local v2    # "ret":Ljava/nio/ByteBuffer;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected abstract getPayload()[B
.end method

.class public Lcom/intel/internal/telephony/mmgr/MmgrModemColdResetAckRequest;
.super Lcom/intel/internal/telephony/ModemRequestArgs;
.source "MmgrModemColdResetAckRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/intel/internal/telephony/ModemRequestArgs;-><init>()V

    return-void
.end method


# virtual methods
.method public getFrame()[B
    .locals 2

    .prologue
    .line 27
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 29
    .local v0, "ret":Ljava/nio/ByteBuffer;
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 30
    invoke-super {p0}, Lcom/intel/internal/telephony/ModemRequestArgs;->getTimestamp()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 32
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "ModemColdResetAckRequest"

    return-object v0
.end method

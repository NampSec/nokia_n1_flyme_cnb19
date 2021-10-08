.class public Lcom/intel/internal/telephony/mmgr/responses/MmgrAckResponse;
.super Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;
.source "MmgrAckResponse.java"


# instance fields
.field private ack:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intel/internal/telephony/mmgr/responses/MmgrAckResponse;->ack:Z

    .line 26
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "responseId"    # I
    .param p2, "timestamp"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;-><init>(II)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intel/internal/telephony/mmgr/responses/MmgrAckResponse;->ack:Z

    .line 30
    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 1
    .param p1, "responseId"    # I
    .param p2, "timestamp"    # I
    .param p3, "ack"    # Z

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;-><init>(II)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intel/internal/telephony/mmgr/responses/MmgrAckResponse;->ack:Z

    .line 34
    invoke-virtual {p0, p3}, Lcom/intel/internal/telephony/mmgr/responses/MmgrAckResponse;->setAck(Z)V

    .line 35
    return-void
.end method


# virtual methods
.method public getAck()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/intel/internal/telephony/mmgr/responses/MmgrAckResponse;->ack:Z

    return v0
.end method

.method public setAck(Z)V
    .locals 0
    .param p1, "ack"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/intel/internal/telephony/mmgr/responses/MmgrAckResponse;->ack:Z

    .line 39
    return-void
.end method

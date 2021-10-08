.class public abstract Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;
.super Ljava/lang/Object;
.source "MmgrBaseResponse.java"


# static fields
.field public static final HEADER_SIZE:I = 0xc


# instance fields
.field protected payload:[B

.field protected responseId:I

.field protected timestamp:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v0, p0, Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;->responseId:I

    .line 32
    iput v0, p0, Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;->timestamp:I

    .line 33
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;->payload:[B

    .line 41
    return-void
.end method

.method protected constructor <init>(II)V
    .locals 1
    .param p1, "responseId"    # I
    .param p2, "timestamp"    # I

    .prologue
    const/4 v0, -0x1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v0, p0, Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;->responseId:I

    .line 32
    iput v0, p0, Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;->timestamp:I

    .line 33
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;->payload:[B

    .line 44
    invoke-virtual {p0, p1}, Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;->setResponseId(I)V

    .line 45
    invoke-virtual {p0, p2}, Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;->setTimestamp(I)V

    .line 46
    return-void
.end method

.method public static parseResponse([BII)Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;
    .locals 5
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "size"    # I

    .prologue
    .line 119
    new-instance v0, Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse$1;

    invoke-direct {v0}, Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse$1;-><init>()V

    .line 123
    .local v0, "header":Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;
    const/16 v2, 0xc

    if-ge p2, v2, :cond_0

    .line 124
    const/4 v2, 0x0

    .line 146
    :goto_0
    return-object v2

    .line 127
    :cond_0
    invoke-virtual {v0, p0, p1, p2}, Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;->parseRawFrame([BII)V

    .line 135
    invoke-virtual {v0}, Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;->getResponseId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_1
    move-object v2, v0

    .line 146
    goto :goto_0

    .line 137
    :pswitch_0
    new-instance v1, Lcom/intel/internal/telephony/mmgr/responses/MmgrAckResponse;

    invoke-virtual {v0}, Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;->getResponseId()I

    move-result v2

    invoke-virtual {v0}, Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;->getTimestamp()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/intel/internal/telephony/mmgr/responses/MmgrAckResponse;-><init>(IIZ)V

    .end local v0    # "header":Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;
    .local v1, "header":Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;
    move-object v0, v1

    .line 139
    .end local v1    # "header":Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;
    .restart local v0    # "header":Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;
    goto :goto_1

    .line 141
    :pswitch_1
    new-instance v1, Lcom/intel/internal/telephony/mmgr/responses/MmgrAckResponse;

    invoke-virtual {v0}, Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;->getResponseId()I

    move-result v2

    invoke-virtual {v0}, Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;->getTimestamp()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/intel/internal/telephony/mmgr/responses/MmgrAckResponse;-><init>(IIZ)V

    .end local v0    # "header":Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;
    .restart local v1    # "header":Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;
    move-object v0, v1

    .end local v1    # "header":Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;
    .restart local v0    # "header":Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;
    goto :goto_1

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static parseResponses([BII)Ljava/util/List;
    .locals 8
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Ljava/util/List",
            "<",
            "Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v4, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;>;"
    const/4 v3, 0x0

    .line 154
    .local v3, "parsedResponse":Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;
    move v2, p1

    .line 155
    .local v2, "currentOffset":I
    move v1, p2

    .line 158
    .local v1, "currentLength":I
    :cond_0
    invoke-static {p0, v2, v1}, Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;->parseResponse([BII)Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;

    move-result-object v3

    .line 161
    if-eqz v3, :cond_1

    .line 162
    const-string v5, "ModemStatusManagerJavaLib"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Parsed response ID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;->getResponseId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-virtual {v3}, Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;->getRawFrameLength()I

    move-result v0

    .line 166
    .local v0, "currentFrameLength":I
    add-int/2addr v2, v0

    .line 167
    sub-int/2addr v1, v0

    .line 169
    .end local v0    # "currentFrameLength":I
    :cond_1
    if-eqz v3, :cond_2

    if-lt v2, p2, :cond_0

    .line 171
    :cond_2
    return-object v4
.end method


# virtual methods
.method public getPayload()[B
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;->payload:[B

    return-object v0
.end method

.method public getRawFrame()[B
    .locals 4

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;->getPayload()[B

    move-result-object v0

    .line 94
    .local v0, "payload":[B
    if-eqz v0, :cond_1

    array-length v1, v0

    .line 96
    .local v1, "payloadSize":I
    :goto_0
    add-int/lit8 v3, v1, 0xc

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 99
    .local v2, "ret":Ljava/nio/ByteBuffer;
    if-eqz v2, :cond_2

    .line 100
    iget v3, p0, Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;->responseId:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 101
    invoke-virtual {p0}, Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;->getTimestamp()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 102
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 103
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 106
    :cond_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 108
    :goto_1
    return-object v3

    .line 94
    .end local v1    # "payloadSize":I
    .end local v2    # "ret":Ljava/nio/ByteBuffer;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 108
    .restart local v1    # "payloadSize":I
    .restart local v2    # "ret":Ljava/nio/ByteBuffer;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getRawFrameLength()I
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;->getRawFrame()[B

    move-result-object v0

    .line 114
    .local v0, "frame":[B
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    array-length v1, v0

    goto :goto_0
.end method

.method public getResponseId()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;->responseId:I

    return v0
.end method

.method public getTimestamp()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;->timestamp:I

    return v0
.end method

.method public parseRawFrame([BII)V
    .locals 4
    .param p1, "fullFrame"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I

    .prologue
    .line 79
    if-eqz p1, :cond_0

    array-length v2, p1

    add-int v3, p2, p3

    if-lt v2, v3, :cond_0

    const/16 v2, 0xc

    if-ge p3, v2, :cond_1

    .line 81
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "fullFrame"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    :cond_1
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 84
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;->setResponseId(I)V

    .line 85
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;->setTimestamp(I)V

    .line 86
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 88
    .local v1, "payloadSize":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;->payload:[B

    .line 89
    iget-object v2, p0, Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;->payload:[B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 90
    return-void
.end method

.method public setPayload([B)V
    .locals 0
    .param p1, "payload"    # [B

    .prologue
    .line 75
    iput-object p1, p0, Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;->payload:[B

    .line 76
    return-void
.end method

.method public setResponseId(I)V
    .locals 2
    .param p1, "responseId"    # I

    .prologue
    .line 53
    if-gez p1, :cond_0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "responseId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    iput p1, p0, Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;->responseId:I

    .line 57
    return-void
.end method

.method public setTimestamp(I)V
    .locals 2
    .param p1, "timestamp"    # I

    .prologue
    .line 64
    if-gez p1, :cond_0

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timestamp"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    iput p1, p0, Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;->timestamp:I

    .line 68
    return-void
.end method

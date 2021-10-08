.class public Lcom/intel/internal/telephony/mmgr/requests/MmgrRegisterNameRequest;
.super Lcom/intel/internal/telephony/mmgr/requests/MmgrBaseRequest;
.source "MmgrRegisterNameRequest.java"


# instance fields
.field private clientName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "clientName"    # Ljava/lang/String;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/intel/internal/telephony/mmgr/requests/MmgrBaseRequest;-><init>(I)V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/intel/internal/telephony/mmgr/requests/MmgrRegisterNameRequest;->clientName:Ljava/lang/String;

    .line 35
    invoke-virtual {p0, p1}, Lcom/intel/internal/telephony/mmgr/requests/MmgrRegisterNameRequest;->setClientName(Ljava/lang/String;)V

    .line 36
    return-void
.end method


# virtual methods
.method public getClientName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/intel/internal/telephony/mmgr/requests/MmgrRegisterNameRequest;->clientName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string v0, "RegisterNameRequest"

    return-object v0
.end method

.method protected getPayload()[B
    .locals 5

    .prologue
    .line 54
    const/16 v3, 0x40

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 56
    .local v2, "ret":Ljava/nio/ByteBuffer;
    const/4 v0, 0x0

    .line 59
    .local v0, "clientNameBytes":[B
    :try_start_0
    iget-object v3, p0, Lcom/intel/internal/telephony/mmgr/requests/MmgrRegisterNameRequest;->clientName:Ljava/lang/String;

    const-string v4, "US-ASCII"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 63
    :goto_0
    if-eqz v0, :cond_0

    .line 64
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 66
    :cond_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    return-object v3

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v3, "ModemStatusManagerJavaLib"

    const-string v4, "Ascii encoding not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setClientName(Ljava/lang/String;)V
    .locals 3
    .param p1, "clientName"    # Ljava/lang/String;

    .prologue
    .line 43
    const/4 v0, 0x0

    const/16 v1, 0x3f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/intel/internal/telephony/mmgr/requests/MmgrRegisterNameRequest;->clientName:Ljava/lang/String;

    .line 45
    return-void
.end method

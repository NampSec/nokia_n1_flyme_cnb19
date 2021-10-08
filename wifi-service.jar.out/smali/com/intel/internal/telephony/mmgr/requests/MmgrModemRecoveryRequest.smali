.class public Lcom/intel/internal/telephony/mmgr/requests/MmgrModemRecoveryRequest;
.super Lcom/intel/internal/telephony/mmgr/requests/MmgrBaseRequest;
.source "MmgrModemRecoveryRequest.java"


# instance fields
.field private causes:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "causes"    # [Ljava/lang/String;

    .prologue
    .line 29
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/intel/internal/telephony/mmgr/requests/MmgrBaseRequest;-><init>(I)V

    .line 30
    iput-object p1, p0, Lcom/intel/internal/telephony/mmgr/requests/MmgrModemRecoveryRequest;->causes:[Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "ModemRecoveryRequest"

    return-object v0
.end method

.method protected getPayload()[B
    .locals 4

    .prologue
    .line 40
    iget-object v3, p0, Lcom/intel/internal/telephony/mmgr/requests/MmgrModemRecoveryRequest;->causes:[Ljava/lang/String;

    if-nez v3, :cond_0

    .line 41
    const/4 v3, 0x0

    new-array v3, v3, [B

    .line 54
    :goto_0
    return-object v3

    .line 43
    :cond_0
    const/4 v2, 0x4

    .line 44
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/intel/internal/telephony/mmgr/requests/MmgrModemRecoveryRequest;->causes:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 45
    add-int/lit8 v2, v2, 0x4

    .line 46
    iget-object v3, p0, Lcom/intel/internal/telephony/mmgr/requests/MmgrModemRecoveryRequest;->causes:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 48
    :cond_1
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 49
    .local v1, "ret":Ljava/nio/ByteBuffer;
    iget-object v3, p0, Lcom/intel/internal/telephony/mmgr/requests/MmgrModemRecoveryRequest;->causes:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 50
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/intel/internal/telephony/mmgr/requests/MmgrModemRecoveryRequest;->causes:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 51
    iget-object v3, p0, Lcom/intel/internal/telephony/mmgr/requests/MmgrModemRecoveryRequest;->causes:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 52
    iget-object v3, p0, Lcom/intel/internal/telephony/mmgr/requests/MmgrModemRecoveryRequest;->causes:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 54
    :cond_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    goto :goto_0
.end method

.class public abstract Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr$Stub;
.super Landroid/os/Binder;
.source "ICwsServiceMgr.java"

# interfaces
.implements Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.intel.cws.cwsservicemanager.ICwsServiceMgr"

.field static final TRANSACTION_atSendCmd:I = 0xc

.field static final TRANSACTION_csmRegisterCallback:I = 0x1

.field static final TRANSACTION_csmStart:I = 0x3

.field static final TRANSACTION_csmStop:I = 0x4

.field static final TRANSACTION_csmUnregisterCallback:I = 0x2

.field static final TRANSACTION_getLastError:I = 0xd

.field static final TRANSACTION_getWifiSafeChannelBitmap:I = 0xe

.field static final TRANSACTION_uiccBeginTransaction:I = 0x6

.field static final TRANSACTION_uiccEndTransaction:I = 0x7

.field static final TRANSACTION_uiccIsUsim:I = 0x5

.field static final TRANSACTION_uiccReadBinary:I = 0x9

.field static final TRANSACTION_uiccSelectAid:I = 0xb

.field static final TRANSACTION_uiccSelectEf:I = 0xa

.field static final TRANSACTION_uiccTransmitAPDU:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.intel.cws.cwsservicemanager.ICwsServiceMgr"

    invoke-virtual {p0, p0, v0}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "com.intel.cws.cwsservicemanager.ICwsServiceMgr"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 196
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    .line 46
    :sswitch_0
    const-string v0, "com.intel.cws.cwsservicemanager.ICwsServiceMgr"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v0, "com.intel.cws.cwsservicemanager.ICwsServiceMgr"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 55
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 56
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr$Stub;->csmRegisterCallback(ILandroid/os/IBinder;)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 62
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IBinder;
    :sswitch_2
    const-string v0, "com.intel.cws.cwsservicemanager.ICwsServiceMgr"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 66
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 67
    .restart local v2    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr$Stub;->csmUnregisterCallback(ILandroid/os/IBinder;)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 73
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IBinder;
    :sswitch_3
    const-string v0, "com.intel.cws.cwsservicemanager.ICwsServiceMgr"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 76
    .local v1, "_arg0":B
    invoke-virtual {p0, v1}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr$Stub;->csmStart(B)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 82
    .end local v1    # "_arg0":B
    :sswitch_4
    const-string v0, "com.intel.cws.cwsservicemanager.ICwsServiceMgr"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 85
    .restart local v1    # "_arg0":B
    invoke-virtual {p0, v1}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr$Stub;->csmStop(B)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 91
    .end local v1    # "_arg0":B
    :sswitch_5
    const-string v9, "com.intel.cws.cwsservicemanager.ICwsServiceMgr"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr$Stub;->uiccIsUsim()Z

    move-result v7

    .line 93
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    if-eqz v7, :cond_0

    move v0, v8

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 99
    .end local v7    # "_result":Z
    :sswitch_6
    const-string v0, "com.intel.cws.cwsservicemanager.ICwsServiceMgr"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 102
    .restart local v1    # "_arg0":B
    invoke-virtual {p0, v1}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr$Stub;->uiccBeginTransaction(B)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 108
    .end local v1    # "_arg0":B
    :sswitch_7
    const-string v0, "com.intel.cws.cwsservicemanager.ICwsServiceMgr"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 111
    .restart local v1    # "_arg0":B
    invoke-virtual {p0, v1}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr$Stub;->uiccEndTransaction(B)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 117
    .end local v1    # "_arg0":B
    :sswitch_8
    const-string v0, "com.intel.cws.cwsservicemanager.ICwsServiceMgr"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 121
    .restart local v1    # "_arg0":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 123
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 125
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 127
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 129
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .local v6, "_arg5":[B
    move-object v0, p0

    .line 130
    invoke-virtual/range {v0 .. v6}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr$Stub;->uiccTransmitAPDU(BIIII[B)Ljava/lang/String;

    move-result-object v7

    .line 131
    .local v7, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 137
    .end local v1    # "_arg0":B
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":[B
    .end local v7    # "_result":Ljava/lang/String;
    :sswitch_9
    const-string v0, "com.intel.cws.cwsservicemanager.ICwsServiceMgr"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 140
    .restart local v1    # "_arg0":B
    invoke-virtual {p0, v1}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr$Stub;->uiccReadBinary(B)[B

    move-result-object v7

    .line 141
    .local v7, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 147
    .end local v1    # "_arg0":B
    .end local v7    # "_result":[B
    :sswitch_a
    const-string v9, "com.intel.cws.cwsservicemanager.ICwsServiceMgr"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 151
    .restart local v1    # "_arg0":B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 152
    .local v2, "_arg1":[B
    invoke-virtual {p0, v1, v2}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr$Stub;->uiccSelectEf(B[B)Z

    move-result v7

    .line 153
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    if-eqz v7, :cond_1

    move v0, v8

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 159
    .end local v1    # "_arg0":B
    .end local v2    # "_arg1":[B
    .end local v7    # "_result":Z
    :sswitch_b
    const-string v9, "com.intel.cws.cwsservicemanager.ICwsServiceMgr"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 163
    .restart local v1    # "_arg0":B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 164
    .restart local v2    # "_arg1":[B
    invoke-virtual {p0, v1, v2}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr$Stub;->uiccSelectAid(B[B)Z

    move-result v7

    .line 165
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    if-eqz v7, :cond_2

    move v0, v8

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 171
    .end local v1    # "_arg0":B
    .end local v2    # "_arg1":[B
    .end local v7    # "_result":Z
    :sswitch_c
    const-string v0, "com.intel.cws.cwsservicemanager.ICwsServiceMgr"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr$Stub;->atSendCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 175
    .local v7, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 181
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":Ljava/lang/String;
    :sswitch_d
    const-string v0, "com.intel.cws.cwsservicemanager.ICwsServiceMgr"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr$Stub;->getLastError()I

    move-result v7

    .line 183
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 189
    .end local v7    # "_result":I
    :sswitch_e
    const-string v0, "com.intel.cws.cwsservicemanager.ICwsServiceMgr"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr$Stub;->getWifiSafeChannelBitmap()I

    move-result v7

    .line 191
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

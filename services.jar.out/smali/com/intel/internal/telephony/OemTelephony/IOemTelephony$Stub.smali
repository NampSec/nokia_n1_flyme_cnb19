.class public abstract Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;
.super Landroid/os/Binder;
.source "IOemTelephony.java"

# interfaces
.implements Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.intel.internal.telephony.OemTelephony.IOemTelephony"

.field static final TRANSACTION_activateThermalSensorNotification:I = 0x7

.field static final TRANSACTION_activateThermalSensorNotificationV2:I = 0x8

.field static final TRANSACTION_enableAdaptiveClocking:I = 0x15

.field static final TRANSACTION_getATR:I = 0x1

.field static final TRANSACTION_getAdaptiveClockingFrequencyInfo:I = 0x16

.field static final TRANSACTION_getCSGState:I = 0x11

.field static final TRANSACTION_getCoexIdcBtParams:I = 0x22

.field static final TRANSACTION_getCoexIdcRtParams:I = 0x24

.field static final TRANSACTION_getCoexIdcSignalingParams:I = 0x23

.field static final TRANSACTION_getDumpScreen:I = 0x6

.field static final TRANSACTION_getDvPState:I = 0x25

.field static final TRANSACTION_getGprsCell:I = 0x5

.field static final TRANSACTION_getOemVersion:I = 0x2

.field static final TRANSACTION_getPcscf:I = 0x12

.field static final TRANSACTION_getPlmnHistory:I = 0x20

.field static final TRANSACTION_getRFPowerCutbackTable:I = 0xb

.field static final TRANSACTION_getSMSTransportMode:I = 0x9

.field static final TRANSACTION_getSafeTxPowerDecodingTable:I = 0x21

.field static final TRANSACTION_getThermalSensorValue:I = 0x3

.field static final TRANSACTION_getThermalSensorValueV2:I = 0x4

.field static final TRANSACTION_registerDedicatedBearerListener:I = 0x19

.field static final TRANSACTION_registerSrvccListener:I = 0x17

.field static final TRANSACTION_sendAtCommand:I = 0xf

.field static final TRANSACTION_setBtParams:I = 0x1e

.field static final TRANSACTION_setCSGAutoSelection:I = 0x10

.field static final TRANSACTION_setCoexReporting:I = 0x1c

.field static final TRANSACTION_setDvPEnabled:I = 0x26

.field static final TRANSACTION_setImsCallAvailable:I = 0xd

.field static final TRANSACTION_setImsSmsAvailable:I = 0xe

.field static final TRANSACTION_setLteFreqReporting:I = 0x1f

.field static final TRANSACTION_setRFPowerCutbackTable:I = 0xc

.field static final TRANSACTION_setRegistrationStatusAndBandInd:I = 0x14

.field static final TRANSACTION_setRegistrationStatusAndBandReporting:I = 0x1b

.field static final TRANSACTION_setSMSTransportMode:I = 0xa

.field static final TRANSACTION_setSrvccSyncParams:I = 0x13

.field static final TRANSACTION_setWlanParams:I = 0x1d

.field static final TRANSACTION_unregisterDedicatedBearerListener:I = 0x1a

.field static final TRANSACTION_unregisterSrvccListener:I = 0x18


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p0, p0, v0}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 452
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 45
    :sswitch_0
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v1, 0x1

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->getATR()Ljava/lang/String;

    move-result-object v7

    .line 52
    .local v7, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    const/4 v1, 0x1

    goto :goto_0

    .line 58
    .end local v7    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->getOemVersion()I

    move-result v7

    .line 60
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    const/4 v1, 0x1

    goto :goto_0

    .line 66
    .end local v7    # "_result":I
    :sswitch_3
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 69
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->getThermalSensorValue(I)Ljava/lang/String;

    move-result-object v7

    .line 70
    .local v7, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    const/4 v1, 0x1

    goto :goto_0

    .line 76
    .end local v2    # "_arg0":I
    .end local v7    # "_result":Ljava/lang/String;
    :sswitch_4
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->getThermalSensorValueV2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 80
    .restart local v7    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    const/4 v1, 0x1

    goto :goto_0

    .line 86
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":Ljava/lang/String;
    :sswitch_5
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->getGprsCell()Ljava/lang/String;

    move-result-object v7

    .line 88
    .restart local v7    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    const/4 v1, 0x1

    goto :goto_0

    .line 94
    .end local v7    # "_result":Ljava/lang/String;
    :sswitch_6
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 97
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->getDumpScreen(I)Ljava/lang/String;

    move-result-object v7

    .line 98
    .restart local v7    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    const/4 v1, 0x1

    goto :goto_0

    .line 104
    .end local v2    # "_arg0":I
    .end local v7    # "_result":Ljava/lang/String;
    :sswitch_7
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 108
    .local v2, "_arg0":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 110
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 112
    .local v5, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 113
    .local v6, "_arg3":I
    invoke-virtual {p0, v2, v4, v5, v6}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->activateThermalSensorNotification(ZIII)V

    .line 114
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 106
    .end local v2    # "_arg0":Z
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 118
    :sswitch_8
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 124
    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 126
    .restart local v5    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 127
    .restart local v6    # "_arg3":I
    invoke-virtual {p0, v2, v4, v5, v6}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->activateThermalSensorNotificationV2(Ljava/lang/String;III)V

    .line 128
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 132
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    :sswitch_9
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->getSMSTransportMode()I

    move-result v7

    .line 134
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 140
    .end local v7    # "_result":I
    :sswitch_a
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 143
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->setSMSTransportMode(I)V

    .line 144
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 148
    .end local v2    # "_arg0":I
    :sswitch_b
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->getRFPowerCutbackTable()I

    move-result v7

    .line 150
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 156
    .end local v7    # "_result":I
    :sswitch_c
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 159
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->setRFPowerCutbackTable(I)V

    .line 160
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 164
    .end local v2    # "_arg0":I
    :sswitch_d
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 167
    .local v2, "_arg0":Z
    :goto_2
    invoke-virtual {p0, v2}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->setImsCallAvailable(Z)V

    .line 168
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 166
    .end local v2    # "_arg0":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 172
    :sswitch_e
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    .line 175
    .restart local v2    # "_arg0":Z
    :goto_3
    invoke-virtual {p0, v2}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->setImsSmsAvailable(Z)V

    .line 176
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 174
    .end local v2    # "_arg0":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    .line 180
    :sswitch_f
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->sendAtCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 184
    .local v7, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 190
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":Ljava/lang/String;
    :sswitch_10
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->setCSGAutoSelection()Z

    move-result v7

    .line 192
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    if-eqz v7, :cond_3

    const/4 v1, 0x1

    :goto_4
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 193
    :cond_3
    const/4 v1, 0x0

    goto :goto_4

    .line 198
    .end local v7    # "_result":Z
    :sswitch_11
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->getCSGState()Ljava/lang/String;

    move-result-object v7

    .line 200
    .local v7, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 206
    .end local v7    # "_result":Ljava/lang/String;
    :sswitch_12
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 210
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/intel/internal/telephony/OemTelephony/IPcscfListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/intel/internal/telephony/OemTelephony/IPcscfListener;

    move-result-object v4

    .line 211
    .local v4, "_arg1":Lcom/intel/internal/telephony/OemTelephony/IPcscfListener;
    invoke-virtual {p0, v2, v4}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->getPcscf(Ljava/lang/String;Lcom/intel/internal/telephony/OemTelephony/IPcscfListener;)V

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 217
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Lcom/intel/internal/telephony/OemTelephony/IPcscfListener;
    :sswitch_13
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    sget-object v1, Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 221
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 222
    sget-object v1, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Message;

    .line 227
    .local v4, "_arg1":Landroid/os/Message;
    :goto_5
    invoke-virtual {p0, v0, v4}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->setSrvccSyncParams(Ljava/util/List;Landroid/os/Message;)V

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 225
    .end local v4    # "_arg1":Landroid/os/Message;
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/os/Message;
    goto :goto_5

    .line 233
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam;>;"
    .end local v4    # "_arg1":Landroid/os/Message;
    :sswitch_14
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v2, 0x1

    .line 236
    .local v2, "_arg0":Z
    :goto_6
    invoke-virtual {p0, v2}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->setRegistrationStatusAndBandInd(Z)V

    .line 237
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 235
    .end local v2    # "_arg0":Z
    :cond_5
    const/4 v2, 0x0

    goto :goto_6

    .line 241
    :sswitch_15
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    const/4 v2, 0x1

    .line 244
    .restart local v2    # "_arg0":Z
    :goto_7
    invoke-virtual {p0, v2}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->enableAdaptiveClocking(Z)Z

    move-result v7

    .line 245
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    if-eqz v7, :cond_7

    const/4 v1, 0x1

    :goto_8
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 243
    .end local v2    # "_arg0":Z
    .end local v7    # "_result":Z
    :cond_6
    const/4 v2, 0x0

    goto :goto_7

    .line 246
    .restart local v2    # "_arg0":Z
    .restart local v7    # "_result":Z
    :cond_7
    const/4 v1, 0x0

    goto :goto_8

    .line 251
    .end local v2    # "_arg0":Z
    .end local v7    # "_result":Z
    :sswitch_16
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->getAdaptiveClockingFrequencyInfo()Ljava/util/List;

    move-result-object v8

    .line 253
    .local v8, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/intel/internal/telephony/OemTelephony/AdaptiveClockingFrequencyInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 255
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 259
    .end local v8    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/intel/internal/telephony/OemTelephony/AdaptiveClockingFrequencyInfo;>;"
    :sswitch_17
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/intel/internal/telephony/OemTelephony/ISrvccListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/intel/internal/telephony/OemTelephony/ISrvccListener;

    move-result-object v2

    .line 262
    .local v2, "_arg0":Lcom/intel/internal/telephony/OemTelephony/ISrvccListener;
    invoke-virtual {p0, v2}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->registerSrvccListener(Lcom/intel/internal/telephony/OemTelephony/ISrvccListener;)V

    .line 263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 268
    .end local v2    # "_arg0":Lcom/intel/internal/telephony/OemTelephony/ISrvccListener;
    :sswitch_18
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/intel/internal/telephony/OemTelephony/ISrvccListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/intel/internal/telephony/OemTelephony/ISrvccListener;

    move-result-object v2

    .line 271
    .restart local v2    # "_arg0":Lcom/intel/internal/telephony/OemTelephony/ISrvccListener;
    invoke-virtual {p0, v2}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->unregisterSrvccListener(Lcom/intel/internal/telephony/OemTelephony/ISrvccListener;)V

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 277
    .end local v2    # "_arg0":Lcom/intel/internal/telephony/OemTelephony/ISrvccListener;
    :sswitch_19
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener;

    move-result-object v2

    .line 280
    .local v2, "_arg0":Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener;
    invoke-virtual {p0, v2}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->registerDedicatedBearerListener(Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener;)V

    .line 281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 286
    .end local v2    # "_arg0":Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener;
    :sswitch_1a
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener;

    move-result-object v2

    .line 289
    .restart local v2    # "_arg0":Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener;
    invoke-virtual {p0, v2}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->unregisterDedicatedBearerListener(Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener;)V

    .line 290
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 295
    .end local v2    # "_arg0":Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener;
    :sswitch_1b
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 299
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    const/4 v4, 0x1

    .line 300
    .local v4, "_arg1":Z
    :goto_9
    invoke-virtual {p0, v2, v3, v4}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->setRegistrationStatusAndBandReporting(JZ)I

    move-result v7

    .line 301
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 299
    .end local v4    # "_arg1":Z
    .end local v7    # "_result":I
    :cond_8
    const/4 v4, 0x0

    goto :goto_9

    .line 307
    .end local v2    # "_arg0":J
    :sswitch_1c
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 311
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    const/4 v4, 0x1

    .line 312
    .restart local v4    # "_arg1":Z
    :goto_a
    invoke-virtual {p0, v2, v3, v4}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->setCoexReporting(JZ)I

    move-result v7

    .line 313
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 311
    .end local v4    # "_arg1":Z
    .end local v7    # "_result":I
    :cond_9
    const/4 v4, 0x0

    goto :goto_a

    .line 319
    .end local v2    # "_arg0":J
    :sswitch_1d
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 323
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    const/4 v4, 0x1

    .line 325
    .restart local v4    # "_arg1":Z
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 327
    .restart local v5    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg3":I
    move-object v1, p0

    .line 328
    invoke-virtual/range {v1 .. v6}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->setWlanParams(JZII)I

    move-result v7

    .line 329
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 323
    .end local v4    # "_arg1":Z
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    .end local v7    # "_result":I
    :cond_a
    const/4 v4, 0x0

    goto :goto_b

    .line 335
    .end local v2    # "_arg0":J
    :sswitch_1e
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 339
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    const/4 v4, 0x1

    .line 340
    .restart local v4    # "_arg1":Z
    :goto_c
    invoke-virtual {p0, v2, v3, v4}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->setBtParams(JZ)I

    move-result v7

    .line 341
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 339
    .end local v4    # "_arg1":Z
    .end local v7    # "_result":I
    :cond_b
    const/4 v4, 0x0

    goto :goto_c

    .line 347
    .end local v2    # "_arg0":J
    :sswitch_1f
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 351
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    const/4 v4, 0x1

    .line 352
    .restart local v4    # "_arg1":Z
    :goto_d
    invoke-virtual {p0, v2, v3, v4}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->setLteFreqReporting(JZ)I

    move-result v7

    .line 353
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 351
    .end local v4    # "_arg1":Z
    .end local v7    # "_result":I
    :cond_c
    const/4 v4, 0x0

    goto :goto_d

    .line 359
    .end local v2    # "_arg0":J
    :sswitch_20
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 363
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 364
    .local v4, "_arg1":I
    invoke-virtual {p0, v2, v3, v4}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->getPlmnHistory(JI)Ljava/util/List;

    move-result-object v9

    .line 365
    .local v9, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/intel/internal/telephony/OemTelephony/PlmnEntry;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 367
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 371
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":I
    .end local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/intel/internal/telephony/OemTelephony/PlmnEntry;>;"
    :sswitch_21
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 374
    .restart local v2    # "_arg0":J
    invoke-virtual {p0, v2, v3}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->getSafeTxPowerDecodingTable(J)Lcom/intel/internal/telephony/OemTelephony/SafeTxPowerTables;

    move-result-object v7

    .line 375
    .local v7, "_result":Lcom/intel/internal/telephony/OemTelephony/SafeTxPowerTables;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    if-eqz v7, :cond_d

    .line 377
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    const/4 v1, 0x1

    invoke-virtual {v7, p3, v1}, Lcom/intel/internal/telephony/OemTelephony/SafeTxPowerTables;->writeToParcel(Landroid/os/Parcel;I)V

    .line 383
    :goto_e
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 381
    :cond_d
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e

    .line 387
    .end local v2    # "_arg0":J
    .end local v7    # "_result":Lcom/intel/internal/telephony/OemTelephony/SafeTxPowerTables;
    :sswitch_22
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 390
    .restart local v2    # "_arg0":J
    invoke-virtual {p0, v2, v3}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->getCoexIdcBtParams(J)Lcom/intel/internal/telephony/OemTelephony/CoexIdcBtParams;

    move-result-object v7

    .line 391
    .local v7, "_result":Lcom/intel/internal/telephony/OemTelephony/CoexIdcBtParams;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    if-eqz v7, :cond_e

    .line 393
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 394
    const/4 v1, 0x1

    invoke-virtual {v7, p3, v1}, Lcom/intel/internal/telephony/OemTelephony/CoexIdcBtParams;->writeToParcel(Landroid/os/Parcel;I)V

    .line 399
    :goto_f
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 397
    :cond_e
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f

    .line 403
    .end local v2    # "_arg0":J
    .end local v7    # "_result":Lcom/intel/internal/telephony/OemTelephony/CoexIdcBtParams;
    :sswitch_23
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 406
    .restart local v2    # "_arg0":J
    invoke-virtual {p0, v2, v3}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->getCoexIdcSignalingParams(J)Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;

    move-result-object v7

    .line 407
    .local v7, "_result":Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    if-eqz v7, :cond_f

    .line 409
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 410
    const/4 v1, 0x1

    invoke-virtual {v7, p3, v1}, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->writeToParcel(Landroid/os/Parcel;I)V

    .line 415
    :goto_10
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 413
    :cond_f
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_10

    .line 419
    .end local v2    # "_arg0":J
    .end local v7    # "_result":Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;
    :sswitch_24
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 422
    .restart local v2    # "_arg0":J
    invoke-virtual {p0, v2, v3}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->getCoexIdcRtParams(J)Lcom/intel/internal/telephony/OemTelephony/CoexIdcRtParams;

    move-result-object v7

    .line 423
    .local v7, "_result":Lcom/intel/internal/telephony/OemTelephony/CoexIdcRtParams;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    if-eqz v7, :cond_10

    .line 425
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 426
    const/4 v1, 0x1

    invoke-virtual {v7, p3, v1}, Lcom/intel/internal/telephony/OemTelephony/CoexIdcRtParams;->writeToParcel(Landroid/os/Parcel;I)V

    .line 431
    :goto_11
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 429
    :cond_10
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11

    .line 435
    .end local v2    # "_arg0":J
    .end local v7    # "_result":Lcom/intel/internal/telephony/OemTelephony/CoexIdcRtParams;
    :sswitch_25
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    invoke-virtual {p0}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->getDvPState()I

    move-result v7

    .line 437
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 439
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 443
    .end local v7    # "_result":I
    :sswitch_26
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11

    const/4 v2, 0x1

    .line 446
    .local v2, "_arg0":Z
    :goto_12
    invoke-virtual {p0, v2}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->setDvPEnabled(Z)Z

    move-result v7

    .line 447
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    if-eqz v7, :cond_12

    const/4 v1, 0x1

    :goto_13
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 449
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 445
    .end local v2    # "_arg0":Z
    .end local v7    # "_result":Z
    :cond_11
    const/4 v2, 0x0

    goto :goto_12

    .line 448
    .restart local v2    # "_arg0":Z
    .restart local v7    # "_result":Z
    :cond_12
    const/4 v1, 0x0

    goto :goto_13

    .line 41
    nop

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
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

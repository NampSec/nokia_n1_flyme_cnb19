.class public Lcom/intel/internal/telephony/OemTelephony/SafeTxPowerTables;
.super Ljava/lang/Object;
.source "SafeTxPowerTables.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/intel/internal/telephony/OemTelephony/SafeTxPowerTables;",
            ">;"
        }
    .end annotation
.end field

.field private static final SAFE_BT_TX_POWER_DECODING_TABLE_SIZE:I = 0x10

.field private static final SAFE_WLAN_TX_POWER_DECODING_TABLE_SIZE:I = 0x20


# instance fields
.field public mResult:I

.field public mSafeBtTxPowerDecodingTable:[I

.field public mSafeWlanTxPowerDecodingTable:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/intel/internal/telephony/OemTelephony/SafeTxPowerTables$1;

    invoke-direct {v0}, Lcom/intel/internal/telephony/OemTelephony/SafeTxPowerTables$1;-><init>()V

    sput-object v0, Lcom/intel/internal/telephony/OemTelephony/SafeTxPowerTables;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/SafeTxPowerTables;->mResult:I

    .line 38
    iput-object v1, p0, Lcom/intel/internal/telephony/OemTelephony/SafeTxPowerTables;->mSafeWlanTxPowerDecodingTable:[I

    .line 39
    iput-object v1, p0, Lcom/intel/internal/telephony/OemTelephony/SafeTxPowerTables;->mSafeBtTxPowerDecodingTable:[I

    .line 40
    return-void
.end method

.method public constructor <init>(I[I[I)V
    .locals 0
    .param p1, "result"    # I
    .param p2, "safeWlanTxPowerDecodingTable"    # [I
    .param p3, "safeBtTxPowerDecodingTable"    # [I

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/intel/internal/telephony/OemTelephony/SafeTxPowerTables;->mResult:I

    .line 56
    iput-object p2, p0, Lcom/intel/internal/telephony/OemTelephony/SafeTxPowerTables;->mSafeWlanTxPowerDecodingTable:[I

    .line 57
    iput-object p3, p0, Lcom/intel/internal/telephony/OemTelephony/SafeTxPowerTables;->mSafeBtTxPowerDecodingTable:[I

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/SafeTxPowerTables;->mResult:I

    .line 45
    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/intel/internal/telephony/OemTelephony/SafeTxPowerTables;->mSafeWlanTxPowerDecodingTable:[I

    .line 46
    iget-object v0, p0, Lcom/intel/internal/telephony/OemTelephony/SafeTxPowerTables;->mSafeWlanTxPowerDecodingTable:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 48
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/intel/internal/telephony/OemTelephony/SafeTxPowerTables;->mSafeBtTxPowerDecodingTable:[I

    .line 49
    iget-object v0, p0, Lcom/intel/internal/telephony/OemTelephony/SafeTxPowerTables;->mSafeBtTxPowerDecodingTable:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 50
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 67
    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/SafeTxPowerTables;->mResult:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-object v0, p0, Lcom/intel/internal/telephony/OemTelephony/SafeTxPowerTables;->mSafeWlanTxPowerDecodingTable:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 69
    iget-object v0, p0, Lcom/intel/internal/telephony/OemTelephony/SafeTxPowerTables;->mSafeBtTxPowerDecodingTable:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 70
    return-void
.end method

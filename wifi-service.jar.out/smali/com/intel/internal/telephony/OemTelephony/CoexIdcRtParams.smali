.class public Lcom/intel/internal/telephony/OemTelephony/CoexIdcRtParams;
.super Ljava/lang/Object;
.source "CoexIdcRtParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/intel/internal/telephony/OemTelephony/CoexIdcRtParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mDlFrameSyncEn:B

.field public mResult:I

.field public mRxPriResendTime:I

.field public mRxPriTmin:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcRtParams$1;

    invoke-direct {v0}, Lcom/intel/internal/telephony/OemTelephony/CoexIdcRtParams$1;-><init>()V

    sput-object v0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcRtParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcRtParams;->mResult:I

    .line 35
    iput-byte v1, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcRtParams;->mDlFrameSyncEn:B

    .line 36
    iput-byte v1, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcRtParams;->mRxPriTmin:B

    .line 37
    iput v1, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcRtParams;->mRxPriResendTime:I

    .line 38
    return-void
.end method

.method public constructor <init>(IBBI)V
    .locals 0
    .param p1, "result"    # I
    .param p2, "dlFrameSyncEn"    # B
    .param p3, "rxPriTmin"    # B
    .param p4, "rxPriResendTime"    # I

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcRtParams;->mResult:I

    .line 52
    iput-byte p2, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcRtParams;->mDlFrameSyncEn:B

    .line 53
    iput-byte p3, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcRtParams;->mRxPriTmin:B

    .line 54
    iput p4, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcRtParams;->mRxPriResendTime:I

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcRtParams;->mResult:I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcRtParams;->mDlFrameSyncEn:B

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcRtParams;->mRxPriTmin:B

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcRtParams;->mRxPriResendTime:I

    .line 45
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 64
    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcRtParams;->mResult:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget-byte v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcRtParams;->mDlFrameSyncEn:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 66
    iget-byte v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcRtParams;->mRxPriTmin:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 67
    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcRtParams;->mRxPriResendTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    return-void
.end method

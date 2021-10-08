.class public Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;
.super Ljava/lang/Object;
.source "CoexIdcSignalingParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mMwsFrameSyncAssertJitter:I

.field public mMwsFrameSyncAssertOffset:I

.field public mMwsPiorityAssertOffsetRequest:I

.field public mMwsRxAssertJitter:I

.field public mMwsRxAssertOffset:I

.field public mMwsRxDeassertJitter:I

.field public mMwsRxDeassertOffset:I

.field public mMwsTxAssertJitter:I

.field public mMwsTxAssertOffset:I

.field public mMwsTxDeassertJitter:I

.field public mMwsTxDeassertOffset:I

.field public mResult:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams$1;

    invoke-direct {v0}, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams$1;-><init>()V

    sput-object v0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mResult:I

    .line 51
    iput v1, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsFrameSyncAssertOffset:I

    .line 52
    iput v1, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsFrameSyncAssertJitter:I

    .line 53
    iput v1, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsRxAssertOffset:I

    .line 54
    iput v1, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsRxAssertJitter:I

    .line 55
    iput v1, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsRxDeassertOffset:I

    .line 56
    iput v1, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsRxDeassertJitter:I

    .line 57
    iput v1, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsTxAssertOffset:I

    .line 58
    iput v1, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsTxAssertJitter:I

    .line 59
    iput v1, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsTxDeassertOffset:I

    .line 60
    iput v1, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsTxDeassertJitter:I

    .line 61
    iput v1, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsPiorityAssertOffsetRequest:I

    .line 62
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIII)V
    .locals 0
    .param p1, "result"    # I
    .param p2, "mwsFrameSyncAssertOffset"    # I
    .param p3, "mwsFrameSyncAssertJitter"    # I
    .param p4, "mwsRxAssertOffset"    # I
    .param p5, "mwsRxAssertJitter"    # I
    .param p6, "mwsRxDeassertOffset"    # I
    .param p7, "mwsRxDeassertJitter"    # I
    .param p8, "mwsTxAssertOffset"    # I
    .param p9, "mwsTxAssertJitter"    # I
    .param p10, "mwsTxDeassertOffset"    # I
    .param p11, "mwsTxDeassertJitter"    # I
    .param p12, "mwsPiorityAssertOffsetRequest"    # I

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput p1, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mResult:I

    .line 85
    iput p2, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsFrameSyncAssertOffset:I

    .line 86
    iput p3, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsFrameSyncAssertJitter:I

    .line 87
    iput p4, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsRxAssertOffset:I

    .line 88
    iput p5, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsRxAssertJitter:I

    .line 89
    iput p6, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsRxDeassertOffset:I

    .line 90
    iput p7, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsRxDeassertJitter:I

    .line 91
    iput p8, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsTxAssertOffset:I

    .line 92
    iput p9, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsTxAssertJitter:I

    .line 93
    iput p10, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsTxDeassertOffset:I

    .line 94
    iput p11, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsTxDeassertJitter:I

    .line 95
    iput p12, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsPiorityAssertOffsetRequest:I

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mResult:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsFrameSyncAssertOffset:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsFrameSyncAssertJitter:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsRxAssertOffset:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsRxAssertJitter:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsRxDeassertOffset:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsRxDeassertJitter:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsTxAssertOffset:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsTxAssertJitter:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsTxDeassertOffset:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsTxDeassertJitter:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsPiorityAssertOffsetRequest:I

    .line 77
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 105
    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mResult:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsFrameSyncAssertOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsFrameSyncAssertJitter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsRxAssertOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsRxAssertJitter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsRxDeassertOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsRxDeassertJitter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsTxAssertOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsTxAssertJitter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsTxDeassertOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsTxDeassertJitter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsPiorityAssertOffsetRequest:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    return-void
.end method

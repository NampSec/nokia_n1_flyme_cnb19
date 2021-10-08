.class public Lcom/intel/internal/telephony/OemTelephony/CoexIdcBtParams;
.super Ljava/lang/Object;
.source "CoexIdcBtParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/intel/internal/telephony/OemTelephony/CoexIdcBtParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mBtNoiseFigure:I

.field public mResult:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcBtParams$1;

    invoke-direct {v0}, Lcom/intel/internal/telephony/OemTelephony/CoexIdcBtParams$1;-><init>()V

    sput-object v0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcBtParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcBtParams;->mResult:I

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcBtParams;->mBtNoiseFigure:I

    .line 32
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "result"    # I
    .param p2, "btNoiseFigure"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcBtParams;->mResult:I

    .line 41
    iput p2, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcBtParams;->mBtNoiseFigure:I

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcBtParams;->mResult:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcBtParams;->mBtNoiseFigure:I

    .line 37
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 51
    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcBtParams;->mResult:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcBtParams;->mBtNoiseFigure:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    return-void
.end method

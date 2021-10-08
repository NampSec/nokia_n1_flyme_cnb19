.class public Lcom/intel/internal/telephony/OemTelephony/PlmnEntry;
.super Ljava/lang/Object;
.source "PlmnEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/intel/internal/telephony/OemTelephony/PlmnEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mBands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mChannelBw:I

.field public mMcc:I

.field public mMnc:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/intel/internal/telephony/OemTelephony/PlmnEntry$1;

    invoke-direct {v0}, Lcom/intel/internal/telephony/OemTelephony/PlmnEntry$1;-><init>()V

    sput-object v0, Lcom/intel/internal/telephony/OemTelephony/PlmnEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/PlmnEntry;->mMcc:I

    .line 37
    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/PlmnEntry;->mMnc:I

    .line 38
    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/PlmnEntry;->mChannelBw:I

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/intel/internal/telephony/OemTelephony/PlmnEntry;->mBands:Ljava/util/List;

    .line 40
    return-void
.end method

.method public constructor <init>(IIILjava/util/List;)V
    .locals 1
    .param p1, "mcc"    # I
    .param p2, "mnc"    # I
    .param p3, "channelBw"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p4, "bands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lcom/intel/internal/telephony/OemTelephony/PlmnEntry;->mMcc:I

    .line 52
    iput p2, p0, Lcom/intel/internal/telephony/OemTelephony/PlmnEntry;->mMnc:I

    .line 53
    iput p3, p0, Lcom/intel/internal/telephony/OemTelephony/PlmnEntry;->mChannelBw:I

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/intel/internal/telephony/OemTelephony/PlmnEntry;->mBands:Ljava/util/List;

    .line 55
    iget-object v0, p0, Lcom/intel/internal/telephony/OemTelephony/PlmnEntry;->mBands:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 56
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

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/PlmnEntry;->mMcc:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/PlmnEntry;->mMnc:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/PlmnEntry;->mChannelBw:I

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/intel/internal/telephony/OemTelephony/PlmnEntry;->mBands:Ljava/util/List;

    .line 47
    iget-object v0, p0, Lcom/intel/internal/telephony/OemTelephony/PlmnEntry;->mBands:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 48
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 65
    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/PlmnEntry;->mMcc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/PlmnEntry;->mMnc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/PlmnEntry;->mChannelBw:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-object v0, p0, Lcom/intel/internal/telephony/OemTelephony/PlmnEntry;->mBands:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 69
    return-void
.end method

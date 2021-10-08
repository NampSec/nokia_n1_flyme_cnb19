.class public final Landroid/location/GpsStatus;
.super Ljava/lang/Object;
.source "GpsStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GpsStatus$NmeaListener;,
        Landroid/location/GpsStatus$Listener;,
        Landroid/location/GpsStatus$SatelliteIterator;
    }
.end annotation


# static fields
.field public static final GPS_EVENT_FIRST_FIX:I = 0x3

.field public static final GPS_EVENT_SATELLITE_STATUS:I = 0x4

.field public static final GPS_EVENT_STARTED:I = 0x1

.field public static final GPS_EVENT_STOPPED:I = 0x2

.field private static final NUM_SATELLITES:I = 0xff

.field private static final mGnssSvStatus:Z


# instance fields
.field private mSatelliteList:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation
.end field

.field private mSatellites:[Landroid/location/GpsSatellite;

.field private mTimeToFirstFix:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 157
    const-string/jumbo v0, "ro.gnss.sv.status"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/location/GpsStatus;->mGnssSvStatus:Z

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/16 v1, 0xff

    new-array v1, v1, [Landroid/location/GpsSatellite;

    iput-object v1, p0, Landroid/location/GpsStatus;->mSatellites:[Landroid/location/GpsSatellite;

    .line 68
    new-instance v1, Landroid/location/GpsStatus$1;

    invoke-direct {v1, p0}, Landroid/location/GpsStatus$1;-><init>(Landroid/location/GpsStatus;)V

    iput-object v1, p0, Landroid/location/GpsStatus;->mSatelliteList:Ljava/lang/Iterable;

    .line 132
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/location/GpsStatus;->mSatellites:[Landroid/location/GpsSatellite;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 133
    iget-object v1, p0, Landroid/location/GpsStatus;->mSatellites:[Landroid/location/GpsSatellite;

    new-instance v2, Landroid/location/GpsSatellite;

    add-int/lit8 v3, v0, 0x1

    invoke-direct {v2, v3}, Landroid/location/GpsSatellite;-><init>(I)V

    aput-object v2, v1, v0

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/location/GpsStatus;)[Landroid/location/GpsSatellite;
    .locals 1
    .param p0, "x0"    # Landroid/location/GpsStatus;

    .prologue
    .line 28
    iget-object v0, p0, Landroid/location/GpsStatus;->mSatellites:[Landroid/location/GpsSatellite;

    return-object v0
.end method


# virtual methods
.method public getMaxSatellites()I
    .locals 1

    .prologue
    .line 253
    const/16 v0, 0xff

    return v0
.end method

.method public getSatellites()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Landroid/location/GpsStatus;->mSatelliteList:Ljava/lang/Iterable;

    return-object v0
.end method

.method public getTimeToFirstFix()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Landroid/location/GpsStatus;->mTimeToFirstFix:I

    return v0
.end method

.method declared-synchronized setStatus(I[I[F[F[FIII)V
    .locals 6
    .param p1, "svCount"    # I
    .param p2, "prns"    # [I
    .param p3, "snrs"    # [F
    .param p4, "elevations"    # [F
    .param p5, "azimuths"    # [F
    .param p6, "ephemerisMask"    # I
    .param p7, "almanacMask"    # I
    .param p8, "usedInFixMask"    # I

    .prologue
    .line 170
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Landroid/location/GpsStatus;->mSatellites:[Landroid/location/GpsSatellite;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 171
    iget-object v4, p0, Landroid/location/GpsStatus;->mSatellites:[Landroid/location/GpsSatellite;

    aget-object v4, v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/location/GpsSatellite;->mValid:Z

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_6

    .line 175
    aget v4, p2, v0

    add-int/lit8 v1, v4, -0x1

    .line 177
    .local v1, "prn":I
    sget-boolean v4, Landroid/location/GpsStatus;->mGnssSvStatus:Z

    if-eqz v4, :cond_2

    .line 184
    const/4 v4, 0x1

    shl-int v3, v4, v0

    .line 194
    .local v3, "svShift":I
    :goto_2
    if-ltz v1, :cond_1

    iget-object v4, p0, Landroid/location/GpsStatus;->mSatellites:[Landroid/location/GpsSatellite;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 195
    iget-object v4, p0, Landroid/location/GpsStatus;->mSatellites:[Landroid/location/GpsSatellite;

    aget-object v2, v4, v1

    .line 197
    .local v2, "satellite":Landroid/location/GpsSatellite;
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/location/GpsSatellite;->mValid:Z

    .line 198
    aget v4, p3, v0

    iput v4, v2, Landroid/location/GpsSatellite;->mSnr:F

    .line 199
    aget v4, p4, v0

    iput v4, v2, Landroid/location/GpsSatellite;->mElevation:F

    .line 200
    aget v4, p5, v0

    iput v4, v2, Landroid/location/GpsSatellite;->mAzimuth:F

    .line 201
    and-int v4, p6, v3

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    :goto_3
    iput-boolean v4, v2, Landroid/location/GpsSatellite;->mHasEphemeris:Z

    .line 202
    and-int v4, p7, v3

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    :goto_4
    iput-boolean v4, v2, Landroid/location/GpsSatellite;->mHasAlmanac:Z

    .line 203
    and-int v4, p8, v3

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    :goto_5
    iput-boolean v4, v2, Landroid/location/GpsSatellite;->mUsedInFix:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    .end local v2    # "satellite":Landroid/location/GpsSatellite;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 192
    .end local v3    # "svShift":I
    :cond_2
    const/4 v4, 0x1

    shl-int v3, v4, v1

    .restart local v3    # "svShift":I
    goto :goto_2

    .line 201
    .restart local v2    # "satellite":Landroid/location/GpsSatellite;
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 202
    :cond_4
    const/4 v4, 0x0

    goto :goto_4

    .line 203
    :cond_5
    const/4 v4, 0x0

    goto :goto_5

    .line 206
    .end local v1    # "prn":I
    .end local v2    # "satellite":Landroid/location/GpsSatellite;
    .end local v3    # "svShift":I
    :cond_6
    monitor-exit p0

    return-void

    .line 170
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method setStatus(Landroid/location/GpsStatus;)V
    .locals 3
    .param p1, "status"    # Landroid/location/GpsStatus;

    .prologue
    .line 215
    invoke-virtual {p1}, Landroid/location/GpsStatus;->getTimeToFirstFix()I

    move-result v1

    iput v1, p0, Landroid/location/GpsStatus;->mTimeToFirstFix:I

    .line 217
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/location/GpsStatus;->mSatellites:[Landroid/location/GpsSatellite;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 218
    iget-object v1, p0, Landroid/location/GpsStatus;->mSatellites:[Landroid/location/GpsSatellite;

    aget-object v1, v1, v0

    iget-object v2, p1, Landroid/location/GpsStatus;->mSatellites:[Landroid/location/GpsSatellite;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/location/GpsSatellite;->setStatus(Landroid/location/GpsSatellite;)V

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    :cond_0
    return-void
.end method

.method setTimeToFirstFix(I)V
    .locals 0
    .param p1, "ttff"    # I

    .prologue
    .line 223
    iput p1, p0, Landroid/location/GpsStatus;->mTimeToFirstFix:I

    .line 224
    return-void
.end method

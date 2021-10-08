.class public Landroid/content/pm/PackageParser$LRTComparator;
.super Ljava/lang/Object;
.source "PackageParser.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LRTComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/PackageParser$Package;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;)I
    .locals 4
    .param p1, "pkg1"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "pkg2"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 4491
    iget-wide v0, p1, Landroid/content/pm/PackageParser$Package;->mLastPackageUsageTimeInMills:J

    iget-wide v2, p2, Landroid/content/pm/PackageParser$Package;->mLastPackageUsageTimeInMills:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p1, Landroid/content/pm/PackageParser$Package;->mLastPackageUsageTimeInMills:J

    iget-wide v2, p2, Landroid/content/pm/PackageParser$Package;->mLastPackageUsageTimeInMills:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 4488
    check-cast p1, Landroid/content/pm/PackageParser$Package;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/content/pm/PackageParser$Package;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageParser$LRTComparator;->compare(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;)I

    move-result v0

    return v0
.end method

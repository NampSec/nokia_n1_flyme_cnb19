.class final Lcom/android/internal/os/ProcessCpuTracker$1;
.super Ljava/lang/Object;
.source "ProcessCpuTracker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/ProcessCpuTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/internal/os/ProcessCpuTracker$Stats;Lcom/android/internal/os/ProcessCpuTracker$Stats;)I
    .locals 6
    .param p1, "sta"    # Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .param p2, "stb"    # Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 303
    iget v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v5, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    add-int/2addr v4, v5

    iget v5, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_iowait:I

    add-int v0, v4, v5

    .line 304
    .local v0, "ta":I
    iget v4, p2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v5, p2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    add-int/2addr v4, v5

    iget v5, p2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_iowait:I

    add-int v1, v4, v5

    .line 305
    .local v1, "tb":I
    if-eq v0, v1, :cond_2

    .line 306
    if-le v0, v1, :cond_1

    .line 314
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 306
    goto :goto_0

    .line 308
    :cond_2
    iget-boolean v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    iget-boolean v5, p2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    if-eq v4, v5, :cond_3

    .line 309
    iget-boolean v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 311
    :cond_3
    iget-boolean v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    iget-boolean v5, p2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    if-eq v4, v5, :cond_4

    .line 312
    iget-boolean v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 314
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 300
    check-cast p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/ProcessCpuTracker$1;->compare(Lcom/android/internal/os/ProcessCpuTracker$Stats;Lcom/android/internal/os/ProcessCpuTracker$Stats;)I

    move-result v0

    return v0
.end method

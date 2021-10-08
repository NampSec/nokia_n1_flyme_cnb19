.class Lcom/android/server/pm/PackageManagerService$InstallHistory;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstallHistory"
.end annotation


# static fields
.field private static final WRITE_INTERVAL:I = 0x1b7740


# instance fields
.field private final INSTALL_HISTORY_CLASS_NAME:Ljava/lang/String;

.field private final MAX_INSTALL_HISTORY_PERIOD:J

.field private final mBackgroundWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mFileLock:Ljava/lang/Object;

.field private final mLastWritten:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 4

    .prologue
    .line 556
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$InstallHistory;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 558
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallHistory;->mFileLock:Ljava/lang/Object;

    .line 559
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallHistory;->mLastWritten:Ljava/util/concurrent/atomic/AtomicLong;

    .line 560
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallHistory;->mBackgroundWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 561
    const-class v0, Lcom/android/server/pm/PackageManagerService$InstallHistory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallHistory;->INSTALL_HISTORY_CLASS_NAME:Ljava/lang/String;

    .line 568
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x16d

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/PackageManagerService$InstallHistory;->MAX_INSTALL_HISTORY_PERIOD:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "x1"    # Lcom/android/server/pm/PackageManagerService$1;

    .prologue
    .line 556
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$InstallHistory;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/pm/PackageManagerService$InstallHistory;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerService$InstallHistory;

    .prologue
    .line 556
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$InstallHistory;->writeInstallHistory()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/pm/PackageManagerService$InstallHistory;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerService$InstallHistory;

    .prologue
    .line 556
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$InstallHistory;->readInstallHistory()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/pm/PackageManagerService$InstallHistory;Landroid/content/pm/PackageParser$Package;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerService$InstallHistory;
    .param p1, "x1"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 556
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$InstallHistory;->storePackageInfo(Landroid/content/pm/PackageParser$Package;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/pm/PackageManagerService$InstallHistory;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerService$InstallHistory;
    .param p1, "x1"    # Z

    .prologue
    .line 556
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$InstallHistory;->writePackageHistory(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/pm/PackageManagerService$InstallHistory;Landroid/content/pm/PackageParser$Package;Z)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerService$InstallHistory;
    .param p1, "x1"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "x2"    # Z

    .prologue
    .line 556
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$InstallHistory;->suggestDexOptFlag(Landroid/content/pm/PackageParser$Package;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/PackageManagerService$InstallHistory;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerService$InstallHistory;

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallHistory;->INSTALL_HISTORY_CLASS_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/pm/PackageManagerService$InstallHistory;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerService$InstallHistory;

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallHistory;->mBackgroundWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private ageFunction()V
    .locals 14

    .prologue
    .line 646
    const-string v7, "persist.selective.IHFilePeriod"

    iget-wide v10, p0, Lcom/android/server/pm/PackageManagerService$InstallHistory;->MAX_INSTALL_HISTORY_PERIOD:J

    invoke-static {v7, v10, v11}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 650
    .local v0, "INSTALL_HISTORY_PERIOD":J
    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v7, v0, v10

    if-ltz v7, :cond_0

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v7, v0, v10

    if-lez v7, :cond_1

    .line 652
    :cond_0
    iget-wide v0, p0, Lcom/android/server/pm/PackageManagerService$InstallHistory;->MAX_INSTALL_HISTORY_PERIOD:J

    .line 655
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 656
    .local v8, "now":J
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$InstallHistory;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mUsageHistory:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 657
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$UsageInfo;>;>;"
    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 658
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 659
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$UsageInfo;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageManagerService$UsageInfo;

    .line 661
    .local v6, "item":Lcom/android/server/pm/PackageManagerService$UsageInfo;
    if-eqz v6, :cond_2

    .line 662
    iget-wide v10, v6, Lcom/android/server/pm/PackageManagerService$UsageInfo;->lastPackageUsageTimeInMills:J

    sub-long v2, v8, v10

    .line 663
    .local v2, "diff":J
    cmp-long v7, v2, v0

    if-lez v7, :cond_2

    .line 664
    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_SELECTIVE:Z

    if-eqz v7, :cond_3

    .line 665
    const-string v7, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$InstallHistory;->INSTALL_HISTORY_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": Removing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/android/server/pm/PackageManagerService$UsageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " because last used app: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, v6, Lcom/android/server/pm/PackageManagerService$UsageInfo;->lastPackageUsageTimeInMills:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ms, now: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ms. \ndiff : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ms, INSTALL_HISTORY_PERIOD: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ms."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 676
    .end local v2    # "diff":J
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$UsageInfo;>;"
    .end local v6    # "item":Lcom/android/server/pm/PackageManagerService$UsageInfo;
    :cond_4
    return-void
.end method

.method private decodeFileInfo(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 689
    return-void
.end method

.method private getInstallHistoryFile()Landroid/util/AtomicFile;
    .locals 4

    .prologue
    .line 572
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 573
    .local v0, "dataDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "system"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 574
    .local v2, "systemDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v3, "install-history.list"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 575
    .local v1, "fname":Ljava/io/File;
    new-instance v3, Landroid/util/AtomicFile;

    invoke-direct {v3, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object v3
.end method

.method private readInstallHistory()V
    .locals 21

    .prologue
    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallHistory;->mFileLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 715
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallHistory;->getInstallHistoryFile()Landroid/util/AtomicFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    .line 716
    .local v12, "file":Landroid/util/AtomicFile;
    const/4 v14, 0x0

    .line 718
    .local v14, "in":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v15, Ljava/io/BufferedInputStream;

    invoke-virtual {v12}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    invoke-direct {v15, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 719
    .end local v14    # "in":Ljava/io/BufferedInputStream;
    .local v15, "in":Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    .line 722
    .local v17, "sb":Ljava/lang/StringBuffer;
    const/16 v3, 0xa

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1, v3}, Lcom/android/server/pm/PackageManagerService$InstallHistory;->readToken(Ljava/io/InputStream;Ljava/lang/StringBuffer;C)Ljava/lang/String;

    move-result-object v13

    .line 723
    .local v13, "firstWord":Ljava/lang/String;
    if-nez v13, :cond_0

    .line 724
    new-instance v3, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$InstallHistory;->INSTALL_HISTORY_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Failed to read version information"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 781
    .end local v13    # "firstWord":Ljava/lang/String;
    .end local v17    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v3

    move-object v14, v15

    .line 786
    .end local v15    # "in":Ljava/io/BufferedInputStream;
    .restart local v14    # "in":Ljava/io/BufferedInputStream;
    :goto_0
    :try_start_3
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 788
    :goto_1
    monitor-exit v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 789
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallHistory;->mLastWritten:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 790
    return-void

    .line 731
    .end local v14    # "in":Ljava/io/BufferedInputStream;
    .restart local v13    # "firstWord":Ljava/lang/String;
    .restart local v15    # "in":Ljava/io/BufferedInputStream;
    .restart local v17    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    :try_start_4
    invoke-virtual {v13}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 732
    .local v19, "versionInfo":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerService$InstallHistory;->decodeFileInfo(I)V

    .line 735
    :goto_2
    const/16 v3, 0x20

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1, v3}, Lcom/android/server/pm/PackageManagerService$InstallHistory;->readToken(Ljava/io/InputStream;Ljava/lang/StringBuffer;C)Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v4

    .line 736
    .local v4, "packageName":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 786
    :try_start_5
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v14, v15

    .line 787
    .end local v15    # "in":Ljava/io/BufferedInputStream;
    .restart local v14    # "in":Ljava/io/BufferedInputStream;
    goto :goto_1

    .line 739
    .end local v14    # "in":Ljava/io/BufferedInputStream;
    .restart local v15    # "in":Ljava/io/BufferedInputStream;
    :cond_1
    const/16 v3, 0x20

    :try_start_6
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1, v3}, Lcom/android/server/pm/PackageManagerService$InstallHistory;->readToken(Ljava/io/InputStream;Ljava/lang/StringBuffer;C)Ljava/lang/String;

    move-result-object v5

    .line 740
    .local v5, "dexOptFlag":Ljava/lang/String;
    if-nez v5, :cond_2

    .line 741
    new-instance v3, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$InstallHistory;->INSTALL_HISTORY_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Failed to find dexOpt level for package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 782
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "dexOptFlag":Ljava/lang/String;
    .end local v13    # "firstWord":Ljava/lang/String;
    .end local v17    # "sb":Ljava/lang/StringBuffer;
    .end local v19    # "versionInfo":I
    :catch_1
    move-exception v11

    move-object v14, v15

    .line 783
    .end local v15    # "in":Ljava/io/BufferedInputStream;
    .local v11, "e":Ljava/io/IOException;
    .restart local v14    # "in":Ljava/io/BufferedInputStream;
    :goto_3
    :try_start_7
    const-string v3, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$InstallHistory;->INSTALL_HISTORY_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Failed to read package installation history"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 786
    :try_start_8
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .line 788
    .end local v11    # "e":Ljava/io/IOException;
    .end local v12    # "file":Landroid/util/AtomicFile;
    .end local v14    # "in":Ljava/io/BufferedInputStream;
    :catchall_0
    move-exception v3

    monitor-exit v20
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v3

    .line 745
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "dexOptFlag":Ljava/lang/String;
    .restart local v12    # "file":Landroid/util/AtomicFile;
    .restart local v13    # "firstWord":Ljava/lang/String;
    .restart local v15    # "in":Ljava/io/BufferedInputStream;
    .restart local v17    # "sb":Ljava/lang/StringBuffer;
    .restart local v19    # "versionInfo":I
    :cond_2
    const/16 v3, 0x20

    :try_start_9
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1, v3}, Lcom/android/server/pm/PackageManagerService$InstallHistory;->readToken(Ljava/io/InputStream;Ljava/lang/StringBuffer;C)Ljava/lang/String;

    move-result-object v18

    .line 746
    .local v18, "timeInMillisString":Ljava/lang/String;
    if-nez v18, :cond_3

    .line 747
    new-instance v3, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$InstallHistory;->INSTALL_HISTORY_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Failed to find last usage time for package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 786
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "dexOptFlag":Ljava/lang/String;
    .end local v13    # "firstWord":Ljava/lang/String;
    .end local v17    # "sb":Ljava/lang/StringBuffer;
    .end local v18    # "timeInMillisString":Ljava/lang/String;
    .end local v19    # "versionInfo":I
    :catchall_1
    move-exception v3

    move-object v14, v15

    .end local v15    # "in":Ljava/io/BufferedInputStream;
    .restart local v14    # "in":Ljava/io/BufferedInputStream;
    :goto_4
    :try_start_a
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 751
    .end local v14    # "in":Ljava/io/BufferedInputStream;
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "dexOptFlag":Ljava/lang/String;
    .restart local v13    # "firstWord":Ljava/lang/String;
    .restart local v15    # "in":Ljava/io/BufferedInputStream;
    .restart local v17    # "sb":Ljava/lang/StringBuffer;
    .restart local v18    # "timeInMillisString":Ljava/lang/String;
    .restart local v19    # "versionInfo":I
    :cond_3
    const/16 v3, 0x20

    :try_start_b
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1, v3}, Lcom/android/server/pm/PackageManagerService$InstallHistory;->readToken(Ljava/io/InputStream;Ljava/lang/StringBuffer;C)Ljava/lang/String;

    move-result-object v16

    .line 752
    .local v16, "readDexOptDate":Ljava/lang/String;
    if-nez v16, :cond_4

    .line 753
    new-instance v3, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$InstallHistory;->INSTALL_HISTORY_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Failed to read dexOpt/aging date for package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 759
    :cond_4
    :try_start_c
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-result-wide v6

    .line 767
    .local v6, "timeInMillis":J
    :try_start_d
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-result v10

    .line 773
    .local v10, "dexOptTime":I
    :try_start_e
    const-string v3, "UNKNOWN-Flag"

    if-ne v5, v3, :cond_5

    .line 774
    const/4 v5, 0x0

    .line 777
    :cond_5
    new-instance v2, Lcom/android/server/pm/PackageManagerService$UsageInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallHistory;->this$0:Lcom/android/server/pm/PackageManagerService;

    int-to-long v8, v10

    invoke-direct/range {v2 .. v9}, Lcom/android/server/pm/PackageManagerService$UsageInfo;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 779
    .local v2, "usageInfo":Lcom/android/server/pm/PackageManagerService$UsageInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallHistory;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mUsageHistory:Landroid/util/ArrayMap;

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 760
    .end local v2    # "usageInfo":Lcom/android/server/pm/PackageManagerService$UsageInfo;
    .end local v6    # "timeInMillis":J
    .end local v10    # "dexOptTime":I
    :catch_2
    move-exception v11

    .line 761
    .local v11, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$InstallHistory;->INSTALL_HISTORY_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Failed to parse "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " as a long."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 768
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    .restart local v6    # "timeInMillis":J
    :catch_3
    move-exception v11

    .line 769
    .restart local v11    # "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$InstallHistory;->INSTALL_HISTORY_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Failed to parse "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " as an Integer."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 786
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "dexOptFlag":Ljava/lang/String;
    .end local v6    # "timeInMillis":J
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    .end local v13    # "firstWord":Ljava/lang/String;
    .end local v15    # "in":Ljava/io/BufferedInputStream;
    .end local v16    # "readDexOptDate":Ljava/lang/String;
    .end local v17    # "sb":Ljava/lang/StringBuffer;
    .end local v18    # "timeInMillisString":Ljava/lang/String;
    .end local v19    # "versionInfo":I
    .restart local v14    # "in":Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v3

    goto/16 :goto_4

    .line 782
    :catch_4
    move-exception v11

    goto/16 :goto_3

    .line 781
    :catch_5
    move-exception v3

    goto/16 :goto_0
.end method

.method private readToken(Ljava/io/InputStream;Ljava/lang/StringBuffer;C)Ljava/lang/String;
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "sb"    # Ljava/lang/StringBuffer;
    .param p3, "endOfToken"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 693
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 695
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 696
    .local v0, "ch":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 697
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 698
    const/4 v1, 0x0

    .line 703
    :goto_1
    return-object v1

    .line 700
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unexpected EOF"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 702
    :cond_1
    if-ne v0, p3, :cond_2

    .line 703
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 705
    :cond_2
    int-to-char v1, v0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private storePackageInfo(Landroid/content/pm/PackageParser$Package;)V
    .locals 8
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 614
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallHistory;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mUsageHistory:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 615
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallHistory;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mUsageHistory:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService$UsageInfo;

    .line 616
    .local v0, "usageInfo":Lcom/android/server/pm/PackageManagerService$UsageInfo;
    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageManagerService$UsageInfo;->updateUsage(Landroid/content/pm/PackageParser$Package;)V

    .line 628
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallHistory;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mUsageHistory:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    return-void

    .line 618
    .end local v0    # "usageInfo":Lcom/android/server/pm/PackageManagerService$UsageInfo;
    :cond_0
    new-instance v0, Lcom/android/server/pm/PackageManagerService$UsageInfo;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallHistory;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->mDexOptFlag:Ljava/lang/String;

    iget-wide v4, p1, Landroid/content/pm/PackageParser$Package;->mLastPackageUsageTimeInMills:J

    iget-wide v6, p1, Landroid/content/pm/PackageParser$Package;->mDexOptTime:J

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/PackageManagerService$UsageInfo;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;JJ)V

    .restart local v0    # "usageInfo":Lcom/android/server/pm/PackageManagerService$UsageInfo;
    goto :goto_0
.end method

.method private suggestDexOptFlag(Landroid/content/pm/PackageParser$Package;Z)Ljava/lang/String;
    .locals 2
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "install"    # Z

    .prologue
    .line 633
    const-string v0, "selective.debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_SELECTIVE:Z

    .line 636
    const-string v0, "persist.selective.enabled"

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEFAULT_SELECTIVE_ENABLED:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/PackageManagerService;->SELECTIVE_ENABLED:Z

    .line 637
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->SELECTIVE_ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "O2"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private writeInstallHistory()V
    .locals 14

    .prologue
    .line 794
    const-string v8, "persist.selective.enabled"

    sget-boolean v9, Lcom/android/server/pm/PackageManagerService;->DEFAULT_SELECTIVE_ENABLED:Z

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/android/server/pm/PackageManagerService;->SELECTIVE_ENABLED:Z

    .line 795
    sget-boolean v8, Lcom/android/server/pm/PackageManagerService;->SELECTIVE_ENABLED:Z

    if-nez v8, :cond_0

    .line 853
    :goto_0
    return-void

    .line 798
    :cond_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$InstallHistory;->ageFunction()V

    .line 799
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$InstallHistory;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v8, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v9

    .line 800
    :try_start_0
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$InstallHistory;->mFileLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 801
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$InstallHistory;->getInstallHistoryFile()Landroid/util/AtomicFile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 802
    .local v3, "file":Landroid/util/AtomicFile;
    const/4 v2, 0x0

    .line 804
    .local v2, "f":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 805
    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-direct {v6, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 806
    .local v6, "out":Ljava/io/BufferedOutputStream;
    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    const/16 v11, 0x1b0

    const/16 v12, 0x3e8

    const/16 v13, 0x408

    invoke-static {v8, v11, v12, v13}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 808
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 811
    .local v7, "sb":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 812
    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 814
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v11, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 817
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$InstallHistory;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mUsageHistory:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 820
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$UsageInfo;>;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 821
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 822
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$UsageInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageManagerService$UsageInfo;

    .line 824
    .local v5, "item":Lcom/android/server/pm/PackageManagerService$UsageInfo;
    if-eqz v5, :cond_1

    .line 825
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 826
    iget-object v8, v5, Lcom/android/server/pm/PackageManagerService$UsageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 828
    iget-object v8, v5, Lcom/android/server/pm/PackageManagerService$UsageInfo;->dexOptFlag:Ljava/lang/String;

    if-nez v8, :cond_3

    .line 829
    const-string v8, "UNKNOWN-Flag"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    :goto_2
    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 834
    iget-wide v12, v5, Lcom/android/server/pm/PackageManagerService$UsageInfo;->lastPackageUsageTimeInMills:J

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 835
    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 836
    iget-wide v12, v5, Lcom/android/server/pm/PackageManagerService$UsageInfo;->dexOptTime:J

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 837
    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 839
    :cond_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v11, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 843
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$UsageInfo;>;"
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$UsageInfo;>;>;"
    .end local v5    # "item":Lcom/android/server/pm/PackageManagerService$UsageInfo;
    .end local v6    # "out":Ljava/io/BufferedOutputStream;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 844
    .local v0, "e":Ljava/io/IOException;
    if-eqz v2, :cond_2

    .line 845
    :try_start_3
    invoke-virtual {v3, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 847
    :cond_2
    const-string v8, "PackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/server/pm/PackageManagerService$InstallHistory;->INSTALL_HISTORY_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": Failed to write package usage history"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 850
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 851
    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 852
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$InstallHistory;->mLastWritten:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto/16 :goto_0

    .line 831
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$UsageInfo;>;"
    .restart local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$UsageInfo;>;>;"
    .restart local v5    # "item":Lcom/android/server/pm/PackageManagerService$UsageInfo;
    .restart local v6    # "out":Ljava/io/BufferedOutputStream;
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    :try_start_5
    iget-object v8, v5, Lcom/android/server/pm/PackageManagerService$UsageInfo;->dexOptFlag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 850
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$UsageInfo;>;"
    .end local v2    # "f":Ljava/io/FileOutputStream;
    .end local v3    # "file":Landroid/util/AtomicFile;
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$UsageInfo;>;>;"
    .end local v5    # "item":Lcom/android/server/pm/PackageManagerService$UsageInfo;
    .end local v6    # "out":Ljava/io/BufferedOutputStream;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v8

    :try_start_6
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v8

    .line 851
    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v8

    .line 841
    .restart local v2    # "f":Ljava/io/FileOutputStream;
    .restart local v3    # "file":Landroid/util/AtomicFile;
    .restart local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$UsageInfo;>;>;"
    .restart local v6    # "out":Ljava/io/BufferedOutputStream;
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    :try_start_8
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V

    .line 842
    invoke-virtual {v3, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3
.end method

.method private writePackageHistory(Z)V
    .locals 7
    .param p1, "force"    # Z

    .prologue
    const/4 v6, 0x0

    .line 584
    const-string v1, "selective.forceIHWrite"

    invoke-static {v1, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 585
    .local v0, "forceInstallHistoryWrite":Z
    if-nez p1, :cond_0

    if-eqz v0, :cond_2

    .line 586
    :cond_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$InstallHistory;->writeInstallHistory()V

    .line 608
    :cond_1
    :goto_0
    return-void

    .line 589
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallHistory;->mLastWritten:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x1b7740

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    .line 593
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallHistory;->mBackgroundWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v6, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 594
    new-instance v1, Lcom/android/server/pm/PackageManagerService$InstallHistory$1;

    const-string v2, "InstallHistory_DiskWriter"

    invoke-direct {v1, p0, v2}, Lcom/android/server/pm/PackageManagerService$InstallHistory$1;-><init>(Lcom/android/server/pm/PackageManagerService$InstallHistory;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService$InstallHistory$1;->start()V

    goto :goto_0
.end method

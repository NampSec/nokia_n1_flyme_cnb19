.class Lcom/android/server/wifi/WifiServiceImpl$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiServiceImpl;->checkAndStartWifi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mPrefWifiChan:[I

.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 1

    .prologue
    .line 394
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$2;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 396
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$2;->mPrefWifiChan:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x6
        0x1
        0xb
        0xa
        0x9
        0x8
        0x7
        0x5
        0x4
        0x3
        0x2
    .end array-data
.end method

.method private isChannelSafe(II)Z
    .locals 2
    .param p1, "aSafeBitmap"    # I
    .param p2, "aChannel"    # I

    .prologue
    const/4 v0, 0x1

    .line 401
    add-int/lit8 v1, p2, -0x1

    shl-int v1, v0, v1

    and-int/2addr v1, p1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 406
    const-string v7, "CoexSafechannels"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 408
    .local v1, "coexBundle":Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 409
    const-string v7, "CoexSafechannelsWifi"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 411
    .local v5, "safeChannels":I
    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "got safechannels "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl$2;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v7, v7, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v6

    .line 415
    .local v6, "wifiApState":I
    const/16 v7, 0xd

    if-eq v6, v7, :cond_0

    const/16 v7, 0xc

    if-ne v6, v7, :cond_2

    .line 418
    :cond_0
    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl$2;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiServiceImpl;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 419
    .local v3, "lastWifiApConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v3, :cond_2

    const/4 v7, -0x1

    if-eq v5, v7, :cond_2

    if-eqz v5, :cond_2

    .line 421
    iget v0, v3, Landroid/net/wifi/WifiConfiguration;->channel:I

    .line 422
    .local v0, "channel":I
    move v4, v0

    .line 424
    .local v4, "newChannel":I
    invoke-direct {p0, v5, v0}, Lcom/android/server/wifi/WifiServiceImpl$2;->isChannelSafe(II)Z

    move-result v7

    if-nez v7, :cond_1

    .line 431
    const/16 v7, 0x3fff

    if-ne v5, v7, :cond_3

    .line 432
    const/4 v4, 0x6

    .line 433
    const-string v7, "WifiService"

    const-string v8, "No safe channel available, softap use channel 6"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_1
    if-eq v0, v4, :cond_4

    .line 451
    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "restarting softap old channel: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " new channel:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl$2;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v7, v7, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 454
    iput v4, v3, Landroid/net/wifi/WifiConfiguration;->channel:I

    .line 455
    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl$2;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v7, v7, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v8, 0x1

    invoke-virtual {v7, v3, v8}, Lcom/android/server/wifi/WifiStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 463
    .end local v0    # "channel":I
    .end local v3    # "lastWifiApConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "newChannel":I
    .end local v5    # "safeChannels":I
    .end local v6    # "wifiApState":I
    :cond_2
    :goto_0
    return-void

    .line 440
    .restart local v0    # "channel":I
    .restart local v3    # "lastWifiApConfig":Landroid/net/wifi/WifiConfiguration;
    .restart local v4    # "newChannel":I
    .restart local v5    # "safeChannels":I
    .restart local v6    # "wifiApState":I
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl$2;->mPrefWifiChan:[I

    array-length v7, v7

    if-ge v2, v7, :cond_1

    .line 441
    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl$2;->mPrefWifiChan:[I

    aget v4, v7, v2

    .line 442
    invoke-direct {p0, v5, v4}, Lcom/android/server/wifi/WifiServiceImpl$2;->isChannelSafe(II)Z

    move-result v7

    if-nez v7, :cond_1

    .line 440
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 457
    .end local v2    # "i":I
    :cond_4
    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NOT restarting softap old channel: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " new channel:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.class public Lcom/android/server/usb/UsbAudioManager;
.super Ljava/lang/Object;
.source "UsbAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbAudioManager$AudioDevice;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAudioDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/usb/UsbDevice;",
            "Lcom/android/server/usb/UsbAudioManager$AudioDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/android/server/usb/UsbAudioManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbAudioManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbAudioManager;->mAudioDevices:Ljava/util/HashMap;

    .line 76
    iput-object p1, p0, Lcom/android/server/usb/UsbAudioManager;->mContext:Landroid/content/Context;

    .line 77
    return-void
.end method

.method private sendDeviceNotification(Lcom/android/server/usb/UsbAudioManager$AudioDevice;Z)V
    .locals 3
    .param p1, "audioDevice"    # Lcom/android/server/usb/UsbAudioManager$AudioDevice;
    .param p2, "enabled"    # Z

    .prologue
    .line 84
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.USB_AUDIO_DEVICE_PLUG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 86
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 87
    const-string v2, "state"

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    const-string v1, "card"

    iget v2, p1, Lcom/android/server/usb/UsbAudioManager$AudioDevice;->mCard:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    const-string v1, "device"

    iget v2, p1, Lcom/android/server/usb/UsbAudioManager$AudioDevice;->mDevice:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    const-string v1, "hasPlayback"

    iget-boolean v2, p1, Lcom/android/server/usb/UsbAudioManager$AudioDevice;->mHasPlayback:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 91
    const-string v1, "hasCapture"

    iget-boolean v2, p1, Lcom/android/server/usb/UsbAudioManager$AudioDevice;->mHasCapture:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 92
    const-string v1, "hasMIDI"

    iget-boolean v2, p1, Lcom/android/server/usb/UsbAudioManager$AudioDevice;->mHasMIDI:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 93
    iget-object v1, p0, Lcom/android/server/usb/UsbAudioManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 94
    return-void

    .line 87
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private waitForAlsaFile(IIZ)Z
    .locals 10
    .param p1, "card"    # I
    .param p2, "device"    # I
    .param p3, "capture"    # Z

    .prologue
    .line 98
    const/4 v4, 0x5

    .line 99
    .local v4, "kNumRetries":I
    const/16 v5, 0x1f4

    .line 100
    .local v5, "kSleepTime":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/dev/snd/pcmC"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "D"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p3, :cond_1

    const-string v7, "c"

    :goto_0
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "alsaDevPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, "alsaDevFile":Ljava/io/File;
    const/4 v3, 0x0

    .line 103
    .local v3, "exists":Z
    const/4 v6, 0x0

    .local v6, "retry":I
    :goto_1
    if-nez v3, :cond_2

    const/4 v7, 0x5

    if-ge v6, v7, :cond_2

    .line 104
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    .line 105
    if-nez v3, :cond_0

    .line 107
    const-wide/16 v8, 0x1f4

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 103
    :cond_0
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 100
    .end local v0    # "alsaDevFile":Ljava/io/File;
    .end local v1    # "alsaDevPath":Ljava/lang/String;
    .end local v3    # "exists":Z
    .end local v6    # "retry":I
    :cond_1
    const-string v7, "p"

    goto :goto_0

    .line 108
    .restart local v0    # "alsaDevFile":Ljava/io/File;
    .restart local v1    # "alsaDevPath":Ljava/lang/String;
    .restart local v3    # "exists":Z
    .restart local v6    # "retry":I
    :catch_0
    move-exception v2

    .line 109
    .local v2, "ex":Ljava/lang/IllegalThreadStateException;
    sget-object v7, Lcom/android/server/usb/UsbAudioManager;->TAG:Ljava/lang/String;

    const-string v8, "usb: IllegalThreadStateException while waiting for ALSA file."

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 110
    .end local v2    # "ex":Ljava/lang/IllegalThreadStateException;
    :catch_1
    move-exception v2

    .line 111
    .local v2, "ex":Ljava/lang/InterruptedException;
    sget-object v7, Lcom/android/server/usb/UsbAudioManager;->TAG:Ljava/lang/String;

    const-string v8, "usb: InterruptedException while waiting for ALSA file."

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 116
    .end local v2    # "ex":Ljava/lang/InterruptedException;
    :cond_2
    return v3
.end method


# virtual methods
.method deviceAdded(Landroid/hardware/usb/UsbDevice;)V
    .locals 14
    .param p1, "usbDevice"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    const/4 v13, 0x1

    .line 121
    const/4 v10, 0x0

    .line 124
    .local v10, "isAudioDevice":Z
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v9

    .line 125
    .local v9, "interfaceCount":I
    const/4 v12, 0x0

    .local v12, "ntrfaceIndex":I
    :goto_0
    if-nez v10, :cond_1

    if-ge v12, v9, :cond_1

    .line 127
    invoke-virtual {p1, v12}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v11

    .line 128
    .local v11, "ntrface":Landroid/hardware/usb/UsbInterface;
    invoke-virtual {v11}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v1

    if-ne v1, v13, :cond_0

    .line 129
    const/4 v10, 0x1

    .line 126
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 132
    .end local v11    # "ntrface":Landroid/hardware/usb/UsbInterface;
    :cond_1
    if-nez v10, :cond_3

    .line 180
    :cond_2
    :goto_1
    return-void

    .line 137
    :cond_3
    new-instance v7, Landroid/alsa/AlsaCardsParser;

    invoke-direct {v7}, Landroid/alsa/AlsaCardsParser;-><init>()V

    .line 138
    .local v7, "cardsParser":Landroid/alsa/AlsaCardsParser;
    invoke-virtual {v7}, Landroid/alsa/AlsaCardsParser;->scan()V

    .line 142
    new-instance v8, Landroid/alsa/AlsaDevicesParser;

    invoke-direct {v8}, Landroid/alsa/AlsaDevicesParser;-><init>()V

    .line 143
    .local v8, "devicesParser":Landroid/alsa/AlsaDevicesParser;
    invoke-virtual {v8}, Landroid/alsa/AlsaDevicesParser;->scan()V

    .line 146
    const-string v1, "USB Audio"

    invoke-virtual {v7, v1}, Landroid/alsa/AlsaCardsParser;->get_card_number_by_name(Ljava/lang/String;)I

    move-result v2

    .line 147
    .local v2, "card":I
    if-ltz v2, :cond_4

    invoke-virtual {v7}, Landroid/alsa/AlsaCardsParser;->getNumCardRecords()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v2, v1, :cond_5

    .line 152
    :cond_4
    invoke-virtual {v7}, Landroid/alsa/AlsaCardsParser;->getNumCardRecords()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    .line 154
    :cond_5
    const/4 v3, 0x0

    .line 156
    .local v3, "device":I
    invoke-virtual {v8, v2}, Landroid/alsa/AlsaDevicesParser;->hasPlaybackDevices(I)Z

    move-result v4

    .line 157
    .local v4, "hasPlayback":Z
    invoke-virtual {v8, v2}, Landroid/alsa/AlsaDevicesParser;->hasCaptureDevices(I)Z

    move-result v5

    .line 158
    .local v5, "hasCapture":Z
    invoke-virtual {v8, v2}, Landroid/alsa/AlsaDevicesParser;->hasMIDIDevices(I)Z

    move-result v6

    .line 161
    .local v6, "hasMidi":Z
    if-eqz v4, :cond_6

    const/4 v1, 0x0

    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/usb/UsbAudioManager;->waitForAlsaFile(IIZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 167
    :cond_6
    if-eqz v5, :cond_7

    invoke-direct {p0, v2, v3, v13}, Lcom/android/server/usb/UsbAudioManager;->waitForAlsaFile(IIZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 177
    :cond_7
    new-instance v0, Lcom/android/server/usb/UsbAudioManager$AudioDevice;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usb/UsbAudioManager$AudioDevice;-><init>(Lcom/android/server/usb/UsbAudioManager;IIZZZ)V

    .line 178
    .local v0, "audioDevice":Lcom/android/server/usb/UsbAudioManager$AudioDevice;
    iget-object v1, p0, Lcom/android/server/usb/UsbAudioManager;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-direct {p0, v0, v13}, Lcom/android/server/usb/UsbAudioManager;->sendDeviceNotification(Lcom/android/server/usb/UsbAudioManager$AudioDevice;Z)V

    goto :goto_1
.end method

.method deviceRemoved(Landroid/hardware/usb/UsbDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    .line 187
    iget-object v1, p0, Lcom/android/server/usb/UsbAudioManager;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbAudioManager$AudioDevice;

    .line 188
    .local v0, "audioDevice":Lcom/android/server/usb/UsbAudioManager$AudioDevice;
    if-eqz v0, :cond_0

    .line 189
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/usb/UsbAudioManager;->sendDeviceNotification(Lcom/android/server/usb/UsbAudioManager$AudioDevice;Z)V

    .line 191
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 194
    const-string v2, "  USB AudioDevices:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    iget-object v2, p0, Lcom/android/server/usb/UsbAudioManager;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 196
    .local v0, "device":Landroid/hardware/usb/UsbDevice;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usb/UsbAudioManager;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 198
    .end local v0    # "device":Landroid/hardware/usb/UsbDevice;
    :cond_0
    return-void
.end method

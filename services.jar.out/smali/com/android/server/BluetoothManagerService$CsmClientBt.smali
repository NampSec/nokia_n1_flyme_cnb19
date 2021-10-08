.class Lcom/android/server/BluetoothManagerService$CsmClientBt;
.super Lcom/intel/cws/cwsservicemanagerclient/CsmClient;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CsmClientBt"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/BluetoothManagerService;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/cws/cwsservicemanager/CsmException;
        }
    .end annotation

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$CsmClientBt;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 155
    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;-><init>(Landroid/content/Context;BI)V

    .line 156
    return-void
.end method

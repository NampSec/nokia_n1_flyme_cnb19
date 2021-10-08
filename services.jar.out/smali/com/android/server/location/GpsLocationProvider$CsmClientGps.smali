.class Lcom/android/server/location/GpsLocationProvider$CsmClientGps;
.super Lcom/intel/cws/cwsservicemanagerclient/CsmClient;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CsmClientGps"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GpsLocationProvider$CsmClientGps$GetBootstrapTask;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/cws/cwsservicemanager/CsmException;
        }
    .end annotation

    .prologue
    .line 2146
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$CsmClientGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    .line 2147
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;-><init>(Landroid/content/Context;BI)V

    .line 2148
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider$CsmClientGps;->csmActivateSimStatusReceiver()V

    .line 2149
    return-void
.end method


# virtual methods
.method public csmClientModemUnavailable()V
    .locals 0

    .prologue
    .line 2153
    invoke-super {p0}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->csmClientModemUnavailable()V

    .line 2154
    return-void
.end method

.method public onSimAbsent()V
    .locals 4

    .prologue
    .line 2165
    invoke-super {p0}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->onSimAbsent()V

    .line 2167
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$CsmClientGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mUiccHslp:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$4100(Lcom/android/server/location/GpsLocationProvider;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2168
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$CsmClientGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/location/GpsLocationProvider;->mUiccHslp:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/location/GpsLocationProvider;->access$4102(Lcom/android/server/location/GpsLocationProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 2169
    # getter for: Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GpsLocationProvider"

    const-string v1, "Sim absent - resetting H-SLP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2171
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$CsmClientGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$4200(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$CsmClientGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$4300(Lcom/android/server/location/GpsLocationProvider;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2172
    # getter for: Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "GpsLocationProvider"

    const-string v1, "Using H-SLP read from the config file"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2173
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$CsmClientGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$CsmClientGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$4300(Lcom/android/server/location/GpsLocationProvider;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$CsmClientGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I
    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider;->access$4400(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v3

    # invokes: Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->access$4500(Lcom/android/server/location/GpsLocationProvider;ILjava/lang/String;I)V

    .line 2178
    :cond_2
    return-void
.end method

.method public onSimLoaded()V
    .locals 2

    .prologue
    .line 2158
    invoke-super {p0}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->onSimLoaded()V

    .line 2160
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$CsmClientGps$GetBootstrapTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/GpsLocationProvider$CsmClientGps$GetBootstrapTask;-><init>(Lcom/android/server/location/GpsLocationProvider$CsmClientGps;Lcom/android/server/location/GpsLocationProvider$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/server/location/GpsLocationProvider$CsmClientGps$GetBootstrapTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2161
    return-void
.end method

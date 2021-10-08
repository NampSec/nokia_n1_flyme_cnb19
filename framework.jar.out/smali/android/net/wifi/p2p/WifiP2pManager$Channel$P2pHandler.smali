.class Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;
.super Landroid/os/Handler;
.source "WifiP2pManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pManager$Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "P2pHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 736
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 737
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 738
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 742
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget v11, p1, Landroid/os/Message;->arg2:I

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->getListener(I)Ljava/lang/Object;
    invoke-static {v10, v11}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$000(Landroid/net/wifi/p2p/WifiP2pManager$Channel;I)Ljava/lang/Object;

    move-result-object v5

    .line 743
    .local v5, "listener":Ljava/lang/Object;
    iget v10, p1, Landroid/os/Message;->what:I

    sparse-switch v10, :sswitch_data_0

    .line 853
    const-string v10, "WifiP2pManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ignored "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    .end local v5    # "listener":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 745
    .restart local v5    # "listener":Ljava/lang/Object;
    :sswitch_0
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mChannelListener:Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$100(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 746
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mChannelListener:Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$100(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    move-result-object v10

    invoke-interface {v10}, Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;->onChannelDisconnected()V

    .line 747
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    # setter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mChannelListener:Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;
    invoke-static {v10, v4}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$102(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    goto :goto_0

    .line 752
    :sswitch_1
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    # setter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mUserAuthListener:Landroid/net/wifi/p2p/WifiP2pManager$UserAuthorizationListener;
    invoke-static {v10, v4}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$202(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$UserAuthorizationListener;)Landroid/net/wifi/p2p/WifiP2pManager$UserAuthorizationListener;

    .line 774
    :sswitch_2
    if-eqz v5, :cond_0

    .line 775
    check-cast v5, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .end local v5    # "listener":Ljava/lang/Object;
    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v5, v10}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onFailure(I)V

    goto :goto_0

    .line 801
    .restart local v5    # "listener":Ljava/lang/Object;
    :sswitch_3
    if-eqz v5, :cond_0

    .line 802
    check-cast v5, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .end local v5    # "listener":Ljava/lang/Object;
    invoke-interface {v5}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onSuccess()V

    goto :goto_0

    .line 806
    .restart local v5    # "listener":Ljava/lang/Object;
    :sswitch_4
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 807
    .local v6, "peers":Landroid/net/wifi/p2p/WifiP2pDeviceList;
    if-eqz v5, :cond_0

    .line 808
    check-cast v5, Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;

    .end local v5    # "listener":Ljava/lang/Object;
    invoke-interface {v5, v6}, Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;->onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    goto :goto_0

    .line 812
    .end local v6    # "peers":Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .restart local v5    # "listener":Ljava/lang/Object;
    :sswitch_5
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 813
    .local v8, "wifiP2pInfo":Landroid/net/wifi/p2p/WifiP2pInfo;
    if-eqz v5, :cond_0

    .line 814
    check-cast v5, Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

    .end local v5    # "listener":Ljava/lang/Object;
    invoke-interface {v5, v8}, Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;->onConnectionInfoAvailable(Landroid/net/wifi/p2p/WifiP2pInfo;)V

    goto :goto_0

    .line 818
    .end local v8    # "wifiP2pInfo":Landroid/net/wifi/p2p/WifiP2pInfo;
    .restart local v5    # "listener":Ljava/lang/Object;
    :sswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 819
    .local v1, "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    if-eqz v5, :cond_0

    .line 820
    check-cast v5, Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

    .end local v5    # "listener":Ljava/lang/Object;
    invoke-interface {v5, v1}, Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;->onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    goto :goto_0

    .line 824
    .end local v1    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    .restart local v5    # "listener":Ljava/lang/Object;
    :sswitch_7
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    .line 825
    .local v7, "resp":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->handleServiceResponse(Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V
    invoke-static {v10, v7}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$300(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V

    goto :goto_0

    .line 828
    .end local v7    # "resp":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    :sswitch_8
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pGroupList;

    .line 829
    .local v2, "groups":Landroid/net/wifi/p2p/WifiP2pGroupList;
    if-eqz v5, :cond_0

    .line 830
    check-cast v5, Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;

    .end local v5    # "listener":Ljava/lang/Object;
    invoke-interface {v5, v2}, Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;->onPersistentGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroupList;)V

    goto :goto_0

    .line 835
    .end local v2    # "groups":Landroid/net/wifi/p2p/WifiP2pGroupList;
    .restart local v5    # "listener":Ljava/lang/Object;
    :sswitch_9
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 836
    .local v3, "handoverBundle":Landroid/os/Bundle;
    if-eqz v5, :cond_0

    .line 837
    if-eqz v3, :cond_1

    const-string v10, "android.net.wifi.p2p.EXTRA_HANDOVER_MESSAGE"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 840
    .local v4, "handoverMessage":Ljava/lang/String;
    :cond_1
    check-cast v5, Landroid/net/wifi/p2p/WifiP2pManager$HandoverMessageListener;

    .end local v5    # "listener":Ljava/lang/Object;
    invoke-interface {v5, v4}, Landroid/net/wifi/p2p/WifiP2pManager$HandoverMessageListener;->onHandoverMessageAvailable(Ljava/lang/String;)V

    goto :goto_0

    .line 845
    .end local v3    # "handoverBundle":Landroid/os/Bundle;
    .end local v4    # "handoverMessage":Ljava/lang/String;
    .restart local v5    # "listener":Ljava/lang/Object;
    :sswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 846
    .local v0, "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->handleUserAuthRequest(Landroid/net/wifi/p2p/WifiP2pConfig;)V
    invoke-static {v10, v0}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;)V

    goto/16 :goto_0

    .line 849
    .end local v0    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    :sswitch_b
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/net/wifi/WpsInfo;

    .line 850
    .local v9, "wps":Landroid/net/wifi/WpsInfo;
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->handleUserAuthShowPin(Landroid/net/wifi/WpsInfo;)V
    invoke-static {v10, v9}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/WpsInfo;)V

    goto/16 :goto_0

    .line 743
    nop

    :sswitch_data_0
    .sparse-switch
        0x11004 -> :sswitch_0
        0x22002 -> :sswitch_2
        0x22003 -> :sswitch_3
        0x22005 -> :sswitch_2
        0x22006 -> :sswitch_3
        0x22008 -> :sswitch_2
        0x22009 -> :sswitch_3
        0x2200b -> :sswitch_2
        0x2200c -> :sswitch_3
        0x2200e -> :sswitch_2
        0x2200f -> :sswitch_3
        0x22011 -> :sswitch_2
        0x22012 -> :sswitch_3
        0x22014 -> :sswitch_4
        0x22016 -> :sswitch_5
        0x22018 -> :sswitch_6
        0x2201d -> :sswitch_2
        0x2201e -> :sswitch_3
        0x22020 -> :sswitch_2
        0x22021 -> :sswitch_3
        0x22023 -> :sswitch_2
        0x22024 -> :sswitch_3
        0x22026 -> :sswitch_2
        0x22027 -> :sswitch_3
        0x22029 -> :sswitch_2
        0x2202a -> :sswitch_3
        0x2202c -> :sswitch_2
        0x2202d -> :sswitch_3
        0x2202f -> :sswitch_2
        0x22030 -> :sswitch_3
        0x22032 -> :sswitch_7
        0x22034 -> :sswitch_2
        0x22035 -> :sswitch_3
        0x22037 -> :sswitch_2
        0x22038 -> :sswitch_3
        0x2203a -> :sswitch_8
        0x2203c -> :sswitch_2
        0x2203d -> :sswitch_3
        0x2203f -> :sswitch_2
        0x22040 -> :sswitch_3
        0x22042 -> :sswitch_2
        0x22043 -> :sswitch_3
        0x22045 -> :sswitch_2
        0x22046 -> :sswitch_3
        0x22048 -> :sswitch_2
        0x22049 -> :sswitch_3
        0x2204d -> :sswitch_9
        0x22050 -> :sswitch_3
        0x22051 -> :sswitch_2
        0x22053 -> :sswitch_1
        0x22054 -> :sswitch_3
        0x22055 -> :sswitch_a
        0x22056 -> :sswitch_b
    .end sparse-switch
.end method

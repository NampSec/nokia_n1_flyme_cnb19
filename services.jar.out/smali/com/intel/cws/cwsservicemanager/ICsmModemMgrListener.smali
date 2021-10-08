.class public interface abstract Lcom/intel/cws/cwsservicemanager/ICsmModemMgrListener;
.super Ljava/lang/Object;
.source "ICsmModemMgrListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intel/cws/cwsservicemanager/ICsmModemMgrListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract mmgrClbkModemAvailable()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract mmgrClbkModemUnavailable(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

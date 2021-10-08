.class public abstract Lcom/intel/internal/telephony/ModemRequestArgs;
.super Ljava/lang/Object;
.source "ModemRequestArgs.java"


# instance fields
.field private sender:Lcom/intel/internal/telephony/ModemStatusMonitor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intel/internal/telephony/ModemRequestArgs;->sender:Lcom/intel/internal/telephony/ModemStatusMonitor;

    return-void
.end method


# virtual methods
.method public abstract getFrame()[B
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public getSender()Lcom/intel/internal/telephony/ModemStatusMonitor;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/intel/internal/telephony/ModemRequestArgs;->sender:Lcom/intel/internal/telephony/ModemStatusMonitor;

    return-object v0
.end method

.method public getTimestamp()I
    .locals 4

    .prologue
    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 35
    .local v0, "currentMs":J
    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    long-to-int v2, v2

    return v2
.end method

.method public setSender(Lcom/intel/internal/telephony/ModemStatusMonitor;)V
    .locals 0
    .param p1, "sender"    # Lcom/intel/internal/telephony/ModemStatusMonitor;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/intel/internal/telephony/ModemRequestArgs;->sender:Lcom/intel/internal/telephony/ModemStatusMonitor;

    .line 30
    return-void
.end method

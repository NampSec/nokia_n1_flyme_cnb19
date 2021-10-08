.class public Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$btRtControl;
.super Ljava/lang/Object;
.source "CsmCoexMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "btRtControl"
.end annotation


# instance fields
.field public mConfiguredChannelType:I

.field public mCurrentChannelType:I

.field public mRxCenterFreq:I

.field public mRxChannelBw:I

.field public mState:I

.field public mTxCenterFreq:I

.field public mTxChannelBw:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "rxCenterFreq"    # I
    .param p3, "txCenterFreq"    # I
    .param p4, "rxChannelBw"    # I
    .param p5, "txChannelBw"    # I
    .param p6, "channelType"    # I

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput p1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$btRtControl;->mState:I

    .line 199
    iput p2, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$btRtControl;->mRxCenterFreq:I

    .line 200
    iput p3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$btRtControl;->mTxCenterFreq:I

    .line 201
    iput p4, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$btRtControl;->mRxChannelBw:I

    .line 202
    iput p5, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$btRtControl;->mTxChannelBw:I

    .line 203
    iput p6, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$btRtControl;->mConfiguredChannelType:I

    .line 204
    iput p6, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$btRtControl;->mCurrentChannelType:I

    .line 205
    return-void
.end method

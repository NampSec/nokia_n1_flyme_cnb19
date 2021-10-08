.class public Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATParser;
.super Ljava/lang/Object;
.source "CsmATCmdMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ATParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;


# direct methods
.method public constructor <init>(Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATParser;->this$0:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    return-void
.end method


# virtual methods
.method public parseString(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "toParse"    # Ljava/lang/String;

    .prologue
    .line 228
    if-nez p1, :cond_0

    .line 229
    const/4 v0, 0x0

    .line 235
    :goto_0
    return-object v0

    .line 233
    :cond_0
    const-string v1, "[:,]"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "atValues":[Ljava/lang/String;
    goto :goto_0
.end method

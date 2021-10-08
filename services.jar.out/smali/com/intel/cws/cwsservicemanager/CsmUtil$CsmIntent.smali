.class Lcom/intel/cws/cwsservicemanager/CsmUtil$CsmIntent;
.super Ljava/lang/Object;
.source "CsmUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/cws/cwsservicemanager/CsmUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CsmIntent"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmUtil$CsmIntent;->mContext:Landroid/content/Context;

    .line 46
    iput-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmUtil$CsmIntent;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method synthetic constructor <init>(Lcom/intel/cws/cwsservicemanager/CsmUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmUtil$1;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/intel/cws/cwsservicemanager/CsmUtil$CsmIntent;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/intel/cws/cwsservicemanager/CsmUtil$CsmIntent;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmUtil$CsmIntent;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmUtil$CsmIntent;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/intel/cws/cwsservicemanager/CsmUtil$CsmIntent;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmUtil$CsmIntent;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/intel/cws/cwsservicemanager/CsmUtil$CsmIntent;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$200(Lcom/intel/cws/cwsservicemanager/CsmUtil$CsmIntent;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmUtil$CsmIntent;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmUtil$CsmIntent;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$202(Lcom/intel/cws/cwsservicemanager/CsmUtil$CsmIntent;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmUtil$CsmIntent;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/intel/cws/cwsservicemanager/CsmUtil$CsmIntent;->mIntent:Landroid/content/Intent;

    return-object p1
.end method

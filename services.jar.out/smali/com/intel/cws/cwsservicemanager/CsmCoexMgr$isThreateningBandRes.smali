.class final enum Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;
.super Ljava/lang/Enum;
.source "CsmCoexMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "isThreateningBandRes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;

.field public static final enum BAND38:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;

.field public static final enum BAND40:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;

.field public static final enum BAND41:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;

.field public static final enum BAND7:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;

.field public static final enum ERROR:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;

.field public static final enum SAFE_BAND:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 304
    new-instance v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;

    const-string v1, "BAND7"

    invoke-direct {v0, v1, v3}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;->BAND7:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;

    new-instance v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;

    const-string v1, "BAND38"

    invoke-direct {v0, v1, v4}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;->BAND38:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;

    new-instance v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;

    const-string v1, "BAND40"

    invoke-direct {v0, v1, v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;->BAND40:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;

    new-instance v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;

    const-string v1, "BAND41"

    invoke-direct {v0, v1, v6}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;->BAND41:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;

    new-instance v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;

    const-string v1, "SAFE_BAND"

    invoke-direct {v0, v1, v7}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;->SAFE_BAND:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;

    new-instance v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;

    const-string v1, "ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;->ERROR:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;

    sget-object v1, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;->BAND7:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;

    aput-object v1, v0, v3

    sget-object v1, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;->BAND38:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;

    aput-object v1, v0, v4

    sget-object v1, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;->BAND40:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;

    aput-object v1, v0, v5

    sget-object v1, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;->BAND41:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;

    aput-object v1, v0, v6

    sget-object v1, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;->SAFE_BAND:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;->ERROR:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;

    aput-object v2, v0, v1

    sput-object v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;->$VALUES:[Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 304
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 304
    const-class v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;

    return-object v0
.end method

.method public static values()[Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;
    .locals 1

    .prologue
    .line 304
    sget-object v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;->$VALUES:[Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;

    invoke-virtual {v0}, [Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;

    return-object v0
.end method

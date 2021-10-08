.class final enum Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$modemStates;
.super Ljava/lang/Enum;
.source "CsmCoexMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "modemStates"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$modemStates;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$modemStates;

.field public static final enum Not_Registered:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$modemStates;

.field public static final enum RF_OFF:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$modemStates;

.field public static final enum Registered:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$modemStates;

.field public static final enum Unknown:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$modemStates;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 307
    new-instance v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$modemStates;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v2}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$modemStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$modemStates;->Unknown:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$modemStates;

    new-instance v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$modemStates;

    const-string v1, "RF_OFF"

    invoke-direct {v0, v1, v3}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$modemStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$modemStates;->RF_OFF:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$modemStates;

    new-instance v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$modemStates;

    const-string v1, "Not_Registered"

    invoke-direct {v0, v1, v4}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$modemStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$modemStates;->Not_Registered:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$modemStates;

    new-instance v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$modemStates;

    const-string v1, "Registered"

    invoke-direct {v0, v1, v5}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$modemStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$modemStates;->Registered:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$modemStates;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$modemStates;

    sget-object v1, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$modemStates;->Unknown:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$modemStates;

    aput-object v1, v0, v2

    sget-object v1, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$modemStates;->RF_OFF:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$modemStates;

    aput-object v1, v0, v3

    sget-object v1, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$modemStates;->Not_Registered:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$modemStates;

    aput-object v1, v0, v4

    sget-object v1, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$modemStates;->Registered:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$modemStates;

    aput-object v1, v0, v5

    sput-object v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$modemStates;->$VALUES:[Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$modemStates;

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
    .line 307
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$modemStates;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 307
    const-class v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$modemStates;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$modemStates;

    return-object v0
.end method

.method public static values()[Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$modemStates;
    .locals 1

    .prologue
    .line 307
    sget-object v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$modemStates;->$VALUES:[Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$modemStates;

    invoke-virtual {v0}, [Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$modemStates;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$modemStates;

    return-object v0
.end method

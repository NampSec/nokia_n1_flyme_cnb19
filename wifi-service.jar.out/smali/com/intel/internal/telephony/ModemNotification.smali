.class public final enum Lcom/intel/internal/telephony/ModemNotification;
.super Ljava/lang/Enum;
.source "ModemNotification.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/intel/internal/telephony/ModemNotification;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/intel/internal/telephony/ModemNotification;

.field public static final enum ACK:Lcom/intel/internal/telephony/ModemNotification;

.field public static final enum ALL:Lcom/intel/internal/telephony/ModemNotification;

.field public static final enum COLD_RESET:Lcom/intel/internal/telephony/ModemNotification;

.field public static final enum CORE_DUMP:Lcom/intel/internal/telephony/ModemNotification;

.field public static final enum NACK:Lcom/intel/internal/telephony/ModemNotification;

.field public static final enum NONE:Lcom/intel/internal/telephony/ModemNotification;

.field public static final enum PLATFORM_REBOOT:Lcom/intel/internal/telephony/ModemNotification;

.field public static final enum SHUTDOWN:Lcom/intel/internal/telephony/ModemNotification;

.field public static final enum STARTING:Lcom/intel/internal/telephony/ModemNotification;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 22
    new-instance v0, Lcom/intel/internal/telephony/ModemNotification;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4, v4}, Lcom/intel/internal/telephony/ModemNotification;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/intel/internal/telephony/ModemNotification;->NONE:Lcom/intel/internal/telephony/ModemNotification;

    .line 23
    new-instance v0, Lcom/intel/internal/telephony/ModemNotification;

    const-string v1, "COLD_RESET"

    invoke-direct {v0, v1, v5, v5}, Lcom/intel/internal/telephony/ModemNotification;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/intel/internal/telephony/ModemNotification;->COLD_RESET:Lcom/intel/internal/telephony/ModemNotification;

    .line 24
    new-instance v0, Lcom/intel/internal/telephony/ModemNotification;

    const-string v1, "SHUTDOWN"

    invoke-direct {v0, v1, v6, v6}, Lcom/intel/internal/telephony/ModemNotification;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/intel/internal/telephony/ModemNotification;->SHUTDOWN:Lcom/intel/internal/telephony/ModemNotification;

    .line 25
    new-instance v0, Lcom/intel/internal/telephony/ModemNotification;

    const-string v1, "PLATFORM_REBOOT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v7}, Lcom/intel/internal/telephony/ModemNotification;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/intel/internal/telephony/ModemNotification;->PLATFORM_REBOOT:Lcom/intel/internal/telephony/ModemNotification;

    .line 26
    new-instance v0, Lcom/intel/internal/telephony/ModemNotification;

    const-string v1, "STARTING"

    invoke-direct {v0, v1, v7, v8}, Lcom/intel/internal/telephony/ModemNotification;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/intel/internal/telephony/ModemNotification;->STARTING:Lcom/intel/internal/telephony/ModemNotification;

    .line 27
    new-instance v0, Lcom/intel/internal/telephony/ModemNotification;

    const-string v1, "CORE_DUMP"

    const/4 v2, 0x5

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/intel/internal/telephony/ModemNotification;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/intel/internal/telephony/ModemNotification;->CORE_DUMP:Lcom/intel/internal/telephony/ModemNotification;

    .line 28
    new-instance v0, Lcom/intel/internal/telephony/ModemNotification;

    const-string v1, "ACK"

    const/4 v2, 0x6

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Lcom/intel/internal/telephony/ModemNotification;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/intel/internal/telephony/ModemNotification;->ACK:Lcom/intel/internal/telephony/ModemNotification;

    .line 29
    new-instance v0, Lcom/intel/internal/telephony/ModemNotification;

    const-string v1, "NACK"

    const/4 v2, 0x7

    const/16 v3, 0x40

    invoke-direct {v0, v1, v2, v3}, Lcom/intel/internal/telephony/ModemNotification;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/intel/internal/telephony/ModemNotification;->NACK:Lcom/intel/internal/telephony/ModemNotification;

    .line 30
    new-instance v0, Lcom/intel/internal/telephony/ModemNotification;

    const-string v1, "ALL"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v8, v2}, Lcom/intel/internal/telephony/ModemNotification;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/intel/internal/telephony/ModemNotification;->ALL:Lcom/intel/internal/telephony/ModemNotification;

    .line 21
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/intel/internal/telephony/ModemNotification;

    sget-object v1, Lcom/intel/internal/telephony/ModemNotification;->NONE:Lcom/intel/internal/telephony/ModemNotification;

    aput-object v1, v0, v4

    sget-object v1, Lcom/intel/internal/telephony/ModemNotification;->COLD_RESET:Lcom/intel/internal/telephony/ModemNotification;

    aput-object v1, v0, v5

    sget-object v1, Lcom/intel/internal/telephony/ModemNotification;->SHUTDOWN:Lcom/intel/internal/telephony/ModemNotification;

    aput-object v1, v0, v6

    const/4 v1, 0x3

    sget-object v2, Lcom/intel/internal/telephony/ModemNotification;->PLATFORM_REBOOT:Lcom/intel/internal/telephony/ModemNotification;

    aput-object v2, v0, v1

    sget-object v1, Lcom/intel/internal/telephony/ModemNotification;->STARTING:Lcom/intel/internal/telephony/ModemNotification;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/intel/internal/telephony/ModemNotification;->CORE_DUMP:Lcom/intel/internal/telephony/ModemNotification;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/intel/internal/telephony/ModemNotification;->ACK:Lcom/intel/internal/telephony/ModemNotification;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/intel/internal/telephony/ModemNotification;->NACK:Lcom/intel/internal/telephony/ModemNotification;

    aput-object v2, v0, v1

    sget-object v1, Lcom/intel/internal/telephony/ModemNotification;->ALL:Lcom/intel/internal/telephony/ModemNotification;

    aput-object v1, v0, v8

    sput-object v0, Lcom/intel/internal/telephony/ModemNotification;->$VALUES:[Lcom/intel/internal/telephony/ModemNotification;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, Lcom/intel/internal/telephony/ModemNotification;->value:I

    .line 36
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/intel/internal/telephony/ModemNotification;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/intel/internal/telephony/ModemNotification;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/intel/internal/telephony/ModemNotification;

    return-object v0
.end method

.method public static values()[Lcom/intel/internal/telephony/ModemNotification;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/intel/internal/telephony/ModemNotification;->$VALUES:[Lcom/intel/internal/telephony/ModemNotification;

    invoke-virtual {v0}, [Lcom/intel/internal/telephony/ModemNotification;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/intel/internal/telephony/ModemNotification;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/intel/internal/telephony/ModemNotification;->value:I

    return v0
.end method

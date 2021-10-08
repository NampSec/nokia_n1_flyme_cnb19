.class public final enum Lcom/intel/internal/telephony/ModemStatus;
.super Ljava/lang/Enum;
.source "ModemStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/intel/internal/telephony/ModemStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/intel/internal/telephony/ModemStatus;

.field public static final enum ALL:Lcom/intel/internal/telephony/ModemStatus;

.field public static final enum DEAD:Lcom/intel/internal/telephony/ModemStatus;

.field public static final enum DOWN:Lcom/intel/internal/telephony/ModemStatus;

.field public static final enum NFLUSH:Lcom/intel/internal/telephony/ModemStatus;

.field public static final enum NONE:Lcom/intel/internal/telephony/ModemStatus;

.field public static final enum UP:Lcom/intel/internal/telephony/ModemStatus;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 22
    new-instance v0, Lcom/intel/internal/telephony/ModemStatus;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4, v4}, Lcom/intel/internal/telephony/ModemStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/intel/internal/telephony/ModemStatus;->NONE:Lcom/intel/internal/telephony/ModemStatus;

    .line 23
    new-instance v0, Lcom/intel/internal/telephony/ModemStatus;

    const-string v1, "DOWN"

    invoke-direct {v0, v1, v5, v5}, Lcom/intel/internal/telephony/ModemStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/intel/internal/telephony/ModemStatus;->DOWN:Lcom/intel/internal/telephony/ModemStatus;

    .line 24
    new-instance v0, Lcom/intel/internal/telephony/ModemStatus;

    const-string v1, "UP"

    invoke-direct {v0, v1, v6, v6}, Lcom/intel/internal/telephony/ModemStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/intel/internal/telephony/ModemStatus;->UP:Lcom/intel/internal/telephony/ModemStatus;

    .line 25
    new-instance v0, Lcom/intel/internal/telephony/ModemStatus;

    const-string v1, "DEAD"

    invoke-direct {v0, v1, v8, v7}, Lcom/intel/internal/telephony/ModemStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/intel/internal/telephony/ModemStatus;->DEAD:Lcom/intel/internal/telephony/ModemStatus;

    .line 26
    new-instance v0, Lcom/intel/internal/telephony/ModemStatus;

    const-string v1, "NFLUSH"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v7, v2}, Lcom/intel/internal/telephony/ModemStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/intel/internal/telephony/ModemStatus;->NFLUSH:Lcom/intel/internal/telephony/ModemStatus;

    .line 27
    new-instance v0, Lcom/intel/internal/telephony/ModemStatus;

    const-string v1, "ALL"

    const/4 v2, 0x5

    const/16 v3, 0xff

    invoke-direct {v0, v1, v2, v3}, Lcom/intel/internal/telephony/ModemStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/intel/internal/telephony/ModemStatus;->ALL:Lcom/intel/internal/telephony/ModemStatus;

    .line 21
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/intel/internal/telephony/ModemStatus;

    sget-object v1, Lcom/intel/internal/telephony/ModemStatus;->NONE:Lcom/intel/internal/telephony/ModemStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/intel/internal/telephony/ModemStatus;->DOWN:Lcom/intel/internal/telephony/ModemStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/intel/internal/telephony/ModemStatus;->UP:Lcom/intel/internal/telephony/ModemStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/intel/internal/telephony/ModemStatus;->DEAD:Lcom/intel/internal/telephony/ModemStatus;

    aput-object v1, v0, v8

    sget-object v1, Lcom/intel/internal/telephony/ModemStatus;->NFLUSH:Lcom/intel/internal/telephony/ModemStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/intel/internal/telephony/ModemStatus;->ALL:Lcom/intel/internal/telephony/ModemStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/intel/internal/telephony/ModemStatus;->$VALUES:[Lcom/intel/internal/telephony/ModemStatus;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput p3, p0, Lcom/intel/internal/telephony/ModemStatus;->value:I

    .line 33
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/intel/internal/telephony/ModemStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/intel/internal/telephony/ModemStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/intel/internal/telephony/ModemStatus;

    return-object v0
.end method

.method public static values()[Lcom/intel/internal/telephony/ModemStatus;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/intel/internal/telephony/ModemStatus;->$VALUES:[Lcom/intel/internal/telephony/ModemStatus;

    invoke-virtual {v0}, [Lcom/intel/internal/telephony/ModemStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/intel/internal/telephony/ModemStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/intel/internal/telephony/ModemStatus;->value:I

    return v0
.end method

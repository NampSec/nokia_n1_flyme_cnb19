.class public final Lcom/android/server/pm/LicPermission;
.super Ljava/lang/Object;
.source "LicPermission.java"


# static fields
.field static final REQUIRE_ALL:I = 0x1

.field static final REQUIRE_ALL_STR:Ljava/lang/String; = "all"

.field static final REQUIRE_ANY:I = 0x0

.field static final REQUIRE_ANY_STR:Ljava/lang/String; = "any"

.field static final REQUIRE_ERROR:I = -0x1


# instance fields
.field public certsInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/CertInfo;",
            ">;"
        }
    .end annotation
.end field

.field public licPerm:Landroid/content/pm/LicPermissionParser$LicPermission;

.field mName:Ljava/lang/String;

.field mRequire:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "require"    # I

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "LicPermission Stub"

    iput-object v0, p0, Lcom/android/server/pm/LicPermission;->mName:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/LicPermission;->mRequire:I

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/LicPermission;->certsInfo:Ljava/util/ArrayList;

    .line 42
    iput-object p1, p0, Lcom/android/server/pm/LicPermission;->mName:Ljava/lang/String;

    .line 43
    iput p2, p0, Lcom/android/server/pm/LicPermission;->mRequire:I

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "require"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "LicPermission Stub"

    iput-object v0, p0, Lcom/android/server/pm/LicPermission;->mName:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/LicPermission;->mRequire:I

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/LicPermission;->certsInfo:Ljava/util/ArrayList;

    .line 49
    iput-object p1, p0, Lcom/android/server/pm/LicPermission;->mName:Ljava/lang/String;

    .line 50
    invoke-virtual {p0, p2}, Lcom/android/server/pm/LicPermission;->getRequireInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/LicPermission;->mRequire:I

    .line 52
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/pm/LicPermission;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getRequire()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/android/server/pm/LicPermission;->mRequire:I

    return v0
.end method

.method public getRequireInteger(Ljava/lang/String;)I
    .locals 1
    .param p1, "require"    # Ljava/lang/String;

    .prologue
    .line 75
    const-string v0, "any"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 77
    :goto_0
    return v0

    .line 76
    :cond_0
    const-string v0, "all"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 77
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getRequireString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    iget v0, p0, Lcom/android/server/pm/LicPermission;->mRequire:I

    if-nez v0, :cond_0

    const-string v0, "any"

    .line 67
    :goto_0
    return-object v0

    .line 66
    :cond_0
    iget v0, p0, Lcom/android/server/pm/LicPermission;->mRequire:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "all"

    goto :goto_0

    .line 67
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

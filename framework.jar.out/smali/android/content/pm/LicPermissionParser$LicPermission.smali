.class public final Landroid/content/pm/LicPermissionParser$LicPermission;
.super Landroid/content/pm/PackageParser$Component;
.source "LicPermissionParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/LicPermissionParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LicPermission"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/pm/PackageParser$Component",
        "<",
        "Landroid/content/pm/PackageParser$IntentInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final info:Landroid/content/pm/LicPermissionInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageParser$Package;)V
    .locals 1
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 481
    invoke-direct {p0, p1}, Landroid/content/pm/PackageParser$Component;-><init>(Landroid/content/pm/PackageParser$Package;)V

    .line 482
    new-instance v0, Landroid/content/pm/LicPermissionInfo;

    invoke-direct {v0}, Landroid/content/pm/LicPermissionInfo;-><init>()V

    iput-object v0, p0, Landroid/content/pm/LicPermissionParser$LicPermission;->info:Landroid/content/pm/LicPermissionInfo;

    .line 483
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/LicPermissionInfo;)V
    .locals 0
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "info"    # Landroid/content/pm/LicPermissionInfo;

    .prologue
    .line 486
    invoke-direct {p0, p1}, Landroid/content/pm/PackageParser$Component;-><init>(Landroid/content/pm/PackageParser$Package;)V

    .line 487
    iput-object p2, p0, Landroid/content/pm/LicPermissionParser$LicPermission;->info:Landroid/content/pm/LicPermissionInfo;

    .line 488
    return-void
.end method


# virtual methods
.method public setPackageName(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 491
    invoke-super {p0, p1}, Landroid/content/pm/PackageParser$Component;->setPackageName(Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Landroid/content/pm/LicPermissionParser$LicPermission;->info:Landroid/content/pm/LicPermissionInfo;

    iput-object p1, v0, Landroid/content/pm/LicPermissionInfo;->packageName:Ljava/lang/String;

    .line 493
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LicPermission{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/LicPermissionParser$LicPermission;->info:Landroid/content/pm/LicPermissionInfo;

    iget-object v1, v1, Landroid/content/pm/LicPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

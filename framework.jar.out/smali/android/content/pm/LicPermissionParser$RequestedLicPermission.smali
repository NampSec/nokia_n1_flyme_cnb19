.class public final Landroid/content/pm/LicPermissionParser$RequestedLicPermission;
.super Ljava/lang/Object;
.source "LicPermissionParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/LicPermissionParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestedLicPermission"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public usesLicenses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/LicPermissionParser$RequestedLicPermission;->usesLicenses:Ljava/util/List;

    return-void
.end method

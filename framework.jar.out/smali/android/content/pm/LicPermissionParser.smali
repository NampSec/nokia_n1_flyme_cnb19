.class public Landroid/content/pm/LicPermissionParser;
.super Ljava/lang/Object;
.source "LicPermissionParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/LicPermissionParser$License;,
        Landroid/content/pm/LicPermissionParser$RequestedLicPermission;,
        Landroid/content/pm/LicPermissionParser$LicPermission;
    }
.end annotation


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final LICENSED_PERMISSIONS_FILENAME:Ljava/lang/String; = "LicensedPermissions.xml"

.field private static final RIGID_PARSER:Z = false

.field private static final TAG:Ljava/lang/String; = "LicPermissionParser"

.field private static final TAG_CERT:Ljava/lang/String; = "cert"

.field private static final TAG_LIC_PERMISSION:Ljava/lang/String; = "lic-permission"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_REVLIST:Ljava/lang/String; = "revlist"

.field private static final TAG_USES_LICENSE:Ljava/lang/String; = "uses-license"

.field private static final TAG_USES_LIC_PERMISSION:Ljava/lang/String; = "uses-lic-permission"


# instance fields
.field private mApkPath:Ljava/lang/String;

.field private mParser:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 507
    return-void
.end method

.method private static buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 7
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "clsSeq"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    const/16 v6, -0x66

    const/16 v4, 0x2e

    .line 452
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gtz v3, :cond_1

    .line 453
    :cond_0
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lic-permission buildClassName: Empty class name in package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v6, v4}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 457
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 458
    .local v2, "cls":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 459
    .local v1, "c":C
    if-ne v1, v4, :cond_2

    .line 460
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 469
    :goto_0
    return-object v3

    .line 462
    :cond_2
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_3

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 464
    .local v0, "b":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 465
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 468
    .end local v0    # "b":Ljava/lang/StringBuilder;
    :cond_3
    const/16 v3, 0x61

    if-lt v1, v3, :cond_4

    const/16 v3, 0x7a

    if-gt v1, v3, :cond_4

    .line 469
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 471
    :cond_4
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lic-permission buildClassName: Bad class name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v6, v4}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method private checkLicPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Permission;

    .line 83
    .local v1, "perm":Landroid/content/pm/PackageParser$Permission;
    iget-object v2, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    const/4 v2, 0x1

    .line 86
    .end local v1    # "perm":Landroid/content/pm/PackageParser$Permission;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private parseLicPermission(Landroid/content/pm/PackageParser$Package;)Z
    .locals 12
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    .line 192
    iget-object v8, p0, Landroid/content/pm/LicPermissionParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    if-nez v8, :cond_0

    const/4 v8, 0x0

    .line 249
    :goto_0
    return v8

    .line 194
    :cond_0
    new-instance v5, Landroid/content/pm/LicPermissionParser$LicPermission;

    invoke-direct {v5, p1}, Landroid/content/pm/LicPermissionParser$LicPermission;-><init>(Landroid/content/pm/PackageParser$Package;)V

    .line 196
    .local v5, "perm":Landroid/content/pm/LicPermissionParser$LicPermission;
    iget-object v8, v5, Landroid/content/pm/LicPermissionParser$LicPermission;->info:Landroid/content/pm/LicPermissionInfo;

    invoke-direct {p0, p1, v8}, Landroid/content/pm/LicPermissionParser;->parseLicPermissionInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/LicPermissionInfo;)Z

    .line 199
    iget-object v8, p0, Landroid/content/pm/LicPermissionParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 201
    .local v1, "innerDepth":I
    :cond_1
    :goto_1
    iget-object v8, p0, Landroid/content/pm/LicPermissionParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, "type":I
    const/4 v8, 0x1

    if-eq v7, v8, :cond_a

    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    iget-object v8, p0, Landroid/content/pm/LicPermissionParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v1, :cond_a

    .line 202
    :cond_2
    const/4 v8, 0x3

    if-eq v7, v8, :cond_1

    const/4 v8, 0x4

    if-eq v7, v8, :cond_1

    .line 206
    iget-object v8, p0, Landroid/content/pm/LicPermissionParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 207
    .local v6, "tagName":Ljava/lang/String;
    const-string v8, "cert"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 208
    new-instance v0, Lcom/android/server/pm/CertInfo;

    invoke-direct {v0}, Lcom/android/server/pm/CertInfo;-><init>()V

    .line 209
    .local v0, "certInfo":Lcom/android/server/pm/CertInfo;
    iget-object v8, p0, Landroid/content/pm/LicPermissionParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v9, 0x0

    const-string v10, "key"

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 210
    .local v3, "key":Ljava/lang/String;
    if-eqz v3, :cond_3

    const-string v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 211
    :cond_3
    new-instance v8, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v9, -0x66

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Empty key under <cert> of <lic-permission>: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v8

    .line 215
    :cond_4
    iput-object v3, v0, Lcom/android/server/pm/CertInfo;->key:Ljava/lang/String;

    .line 217
    iget-object v8, p0, Landroid/content/pm/LicPermissionParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v9, 0x0

    const-string v10, "licenseHint"

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 218
    .local v4, "licenseHint":Ljava/lang/String;
    if-eqz v4, :cond_5

    const-string v8, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 219
    iput-object v4, v0, Lcom/android/server/pm/CertInfo;->licenseHint:Ljava/lang/String;

    .line 221
    :cond_5
    iget-object v8, p0, Landroid/content/pm/LicPermissionParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 223
    .local v2, "innerRevListDepth":I
    :cond_6
    iget-object v8, p0, Landroid/content/pm/LicPermissionParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_8

    const/4 v8, 0x3

    if-ne v7, v8, :cond_7

    iget-object v8, p0, Landroid/content/pm/LicPermissionParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v2, :cond_8

    .line 225
    :cond_7
    const/4 v8, 0x3

    if-eq v7, v8, :cond_6

    const/4 v8, 0x4

    if-eq v7, v8, :cond_6

    .line 228
    iget-object v8, p0, Landroid/content/pm/LicPermissionParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 229
    const-string/jumbo v8, "revlist"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-direct {p0, v0}, Landroid/content/pm/LicPermissionParser;->parseRevokePackages(Lcom/android/server/pm/CertInfo;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 230
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 233
    :cond_8
    iget-object v8, v5, Landroid/content/pm/LicPermissionParser$LicPermission;->info:Landroid/content/pm/LicPermissionInfo;

    iget-object v8, v8, Landroid/content/pm/LicPermissionInfo;->certsInfoList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 240
    .end local v0    # "certInfo":Lcom/android/server/pm/CertInfo;
    .end local v2    # "innerRevListDepth":I
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "licenseHint":Ljava/lang/String;
    :cond_9
    const-string v8, "LicPermissionParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown element under <lic-permission>: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/content/pm/LicPermissionParser;->mApkPath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/content/pm/LicPermissionParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v8, p0, Landroid/content/pm/LicPermissionParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v8}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 248
    .end local v6    # "tagName":Ljava/lang/String;
    :cond_a
    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->licPermissions:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    const/4 v8, 0x1

    goto/16 :goto_0
.end method

.method private parseLicPermissionInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/LicPermissionInfo;)Z
    .locals 6
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "licPermInfo"    # Landroid/content/pm/LicPermissionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/16 v5, -0x66

    .line 101
    iget-object v2, p0, Landroid/content/pm/LicPermissionParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v3, "name"

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 103
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    const-string v3, " does not specify android:name"

    invoke-direct {v2, v5, v3}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 105
    :cond_0
    invoke-direct {p0, p1, v0}, Landroid/content/pm/LicPermissionParser;->checkLicPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 106
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " licensed permission ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] not exists "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "in AndroidManifest.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 111
    :cond_1
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/content/pm/LicPermissionParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Landroid/content/pm/LicPermissionInfo;->name:Ljava/lang/String;

    .line 113
    iget-object v2, p2, Landroid/content/pm/LicPermissionInfo;->name:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 114
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lic-permission buildClassName for"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "failed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 119
    :cond_2
    iget-object v2, p0, Landroid/content/pm/LicPermissionParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v3, "require"

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "require":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 121
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    const-string v3, "lic-permission does not specify android:require"

    invoke-direct {v2, v5, v3}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 124
    :cond_3
    const-string v2, "any"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "all"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 125
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    const-string v3, "lic-permission wrong value in specify android:require, only allowed any|all"

    invoke-direct {v2, v5, v3}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 130
    :cond_4
    iput-object v1, p2, Landroid/content/pm/LicPermissionInfo;->require:Ljava/lang/String;

    .line 132
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v2, p2, Landroid/content/pm/LicPermissionInfo;->packageName:Ljava/lang/String;

    .line 133
    const/4 v2, 0x1

    return v2
.end method

.method private parseLicense(Landroid/content/pm/PackageParser$Package;)Z
    .locals 10
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/16 v8, -0x66

    .line 313
    iget-object v6, p0, Landroid/content/pm/LicPermissionParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v7, "name"

    invoke-interface {v6, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 314
    .local v5, "name":Ljava/lang/String;
    new-instance v1, Lcom/android/server/pm/CertInfo;

    invoke-direct {v1}, Lcom/android/server/pm/CertInfo;-><init>()V

    .line 315
    .local v1, "certInfo":Lcom/android/server/pm/CertInfo;
    if-nez v5, :cond_0

    .line 316
    new-instance v6, Landroid/content/pm/PackageParser$PackageParserException;

    const-string/jumbo v7, "no name in <license> entries"

    invoke-direct {v6, v8, v7}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 320
    :cond_0
    iget-object v6, p0, Landroid/content/pm/LicPermissionParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v7, "licenseHint"

    invoke-interface {v6, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 321
    .local v4, "licenseHint":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 322
    new-instance v6, Landroid/content/pm/PackageParser$PackageParserException;

    const-string/jumbo v7, "no licenseHint in <license> entries"

    invoke-direct {v6, v8, v7}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 326
    :cond_1
    iget-object v6, p0, Landroid/content/pm/LicPermissionParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v7, "allowChain"

    invoke-interface {v6, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "allowChain":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 328
    new-instance v6, Landroid/content/pm/PackageParser$PackageParserException;

    const-string/jumbo v7, "no allowChain in <license> entries"

    invoke-direct {v6, v8, v7}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 330
    :cond_2
    const-string/jumbo v6, "true"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "false"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 331
    new-instance v6, Landroid/content/pm/PackageParser$PackageParserException;

    const-string/jumbo v7, "only true/false allowed for allowChain attribute in <license> entries"

    invoke-direct {v6, v8, v7}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 335
    :cond_3
    iget-object v6, p0, Landroid/content/pm/LicPermissionParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v7, "key"

    invoke-interface {v6, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 336
    .local v2, "key":Ljava/lang/String;
    if-eqz v2, :cond_4

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 337
    :cond_4
    new-instance v6, Landroid/content/pm/PackageParser$PackageParserException;

    const-string/jumbo v7, "no key in <license> entries"

    invoke-direct {v6, v8, v7}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 341
    :cond_5
    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->licenses:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 342
    new-instance v6, Landroid/content/pm/PackageParser$PackageParserException;

    const-string v7, "duplicated license name in other <license> entries"

    invoke-direct {v6, v8, v7}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 346
    :cond_6
    new-instance v3, Landroid/content/pm/LicPermissionParser$License;

    invoke-direct {v3}, Landroid/content/pm/LicPermissionParser$License;-><init>()V

    .line 347
    .local v3, "lic":Landroid/content/pm/LicPermissionParser$License;
    iput-object v5, v3, Landroid/content/pm/LicPermissionParser$License;->name:Ljava/lang/String;

    .line 348
    iput-object v4, v3, Landroid/content/pm/LicPermissionParser$License;->licenseHint:Ljava/lang/String;

    .line 349
    const-string/jumbo v6, "true"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, v3, Landroid/content/pm/LicPermissionParser$License;->allowChain:Z

    .line 350
    invoke-virtual {v1, v2}, Lcom/android/server/pm/CertInfo;->revertCert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Landroid/content/pm/LicPermissionParser$License;->key:Ljava/lang/String;

    .line 351
    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->licenses:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    const/4 v6, 0x1

    return v6
.end method

.method private parsePackageLicensed(Landroid/content/pm/PackageParser$Package;)Landroid/content/pm/PackageParser$Package;
    .locals 9
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/content/pm/PackageParser$PackageParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/16 v6, -0x66

    .line 370
    :cond_0
    iget-object v3, p0, Landroid/content/pm/LicPermissionParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .local v2, "type":I
    if-eq v2, v4, :cond_1

    if-ne v2, v7, :cond_0

    .line 374
    :cond_1
    if-eq v2, v4, :cond_2

    .line 375
    const-string v3, "LicPermissionParser"

    const-string v4, "No start tag found in LicensedPermissions.xml"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    const-string v4, "No start tag found in LicensedPermissions.xml"

    invoke-direct {v3, v6, v4}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 380
    :cond_2
    iget-object v3, p0, Landroid/content/pm/LicPermissionParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 382
    .local v0, "outerDepth":I
    :cond_3
    :goto_0
    iget-object v3, p0, Landroid/content/pm/LicPermissionParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v7, :cond_8

    if-ne v2, v8, :cond_4

    iget-object v3, p0, Landroid/content/pm/LicPermissionParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_8

    .line 383
    :cond_4
    if-eq v2, v8, :cond_3

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    .line 387
    iget-object v3, p0, Landroid/content/pm/LicPermissionParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 388
    .local v1, "tagName":Ljava/lang/String;
    const-string v3, "lic-permission"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 389
    invoke-direct {p0, p1}, Landroid/content/pm/LicPermissionParser;->parseLicPermission(Landroid/content/pm/PackageParser$Package;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 390
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    const-string v4, "Failed to parse tag lic-permission "

    invoke-direct {v3, v6, v4}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 393
    :cond_5
    const-string/jumbo v3, "uses-lic-permission"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 394
    invoke-direct {p0, p1}, Landroid/content/pm/LicPermissionParser;->parseUsesLicPermission(Landroid/content/pm/PackageParser$Package;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 395
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    const-string v4, "Failed to parse uses-lic-permission "

    invoke-direct {v3, v6, v4}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 398
    :cond_6
    const-string v3, "license"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 399
    invoke-direct {p0, p1}, Landroid/content/pm/LicPermissionParser;->parseLicense(Landroid/content/pm/PackageParser$Package;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 400
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    const-string v4, "Failed to parse license "

    invoke-direct {v3, v6, v4}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 404
    :cond_7
    const-string v3, "LicPermissionParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <lic-manifest>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/content/pm/LicPermissionParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/content/pm/LicPermissionParser;->mApkPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/content/pm/LicPermissionParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v3, p0, Landroid/content/pm/LicPermissionParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 411
    .end local v1    # "tagName":Ljava/lang/String;
    :cond_8
    return-object p1
.end method

.method private parseRevokePackages(Lcom/android/server/pm/CertInfo;)Z
    .locals 9
    .param p1, "certInfo"    # Lcom/android/server/pm/CertInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    .line 149
    iget-object v4, p0, Landroid/content/pm/LicPermissionParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 151
    .local v0, "innerDepth":I
    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/content/pm/LicPermissionParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    if-eq v3, v7, :cond_4

    if-ne v3, v8, :cond_1

    iget-object v4, p0, Landroid/content/pm/LicPermissionParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_4

    .line 152
    :cond_1
    if-eq v3, v8, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 156
    iget-object v4, p0, Landroid/content/pm/LicPermissionParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "package"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 158
    iget-object v4, p0, Landroid/content/pm/LicPermissionParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v5, 0x0

    const-string/jumbo v6, "name"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 160
    new-instance v4, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v5, -0x66

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Empty name of package under <revlist>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 164
    :cond_2
    iget-object v4, p1, Lcom/android/server/pm/CertInfo;->revokePackagesList:Ljava/util/HashSet;

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 170
    .end local v1    # "name":Ljava/lang/String;
    :cond_3
    const-string v4, "LicPermissionParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <revlist>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/content/pm/LicPermissionParser;->mApkPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/content/pm/LicPermissionParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v4, p0, Landroid/content/pm/LicPermissionParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 178
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_4
    return v7
.end method

.method private parseUsesLicPermission(Landroid/content/pm/PackageParser$Package;)Z
    .locals 12
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v8, 0x1

    const/16 v9, -0x66

    .line 264
    iget-object v6, p0, Landroid/content/pm/LicPermissionParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v7, "name"

    invoke-interface {v6, v11, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, "name":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 267
    new-instance v6, Landroid/content/pm/PackageParser$PackageParserException;

    const-string/jumbo v7, "no name in <uses-lic-permission> entries"

    invoke-direct {v6, v9, v7}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 271
    :cond_0
    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 272
    .local v0, "index":I
    const/4 v6, -0x1

    if-ne v0, v6, :cond_1

    .line 273
    new-instance v6, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "uses licensed permission ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] not exists "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "in AndroidManifest.xml"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v9, v7}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 278
    :cond_1
    new-instance v3, Landroid/content/pm/LicPermissionParser$RequestedLicPermission;

    invoke-direct {v3}, Landroid/content/pm/LicPermissionParser$RequestedLicPermission;-><init>()V

    .line 279
    .local v3, "rlp":Landroid/content/pm/LicPermissionParser$RequestedLicPermission;
    iput-object v2, v3, Landroid/content/pm/LicPermissionParser$RequestedLicPermission;->name:Ljava/lang/String;

    .line 282
    iget-object v6, p0, Landroid/content/pm/LicPermissionParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 284
    .local v1, "innerDepth":I
    :cond_2
    :goto_0
    iget-object v6, p0, Landroid/content/pm/LicPermissionParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, "type":I
    if-eq v5, v8, :cond_5

    if-ne v5, v10, :cond_3

    iget-object v6, p0, Landroid/content/pm/LicPermissionParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v1, :cond_5

    .line 285
    :cond_3
    if-eq v5, v10, :cond_2

    const/4 v6, 0x4

    if-eq v5, v6, :cond_2

    .line 289
    iget-object v6, p0, Landroid/content/pm/LicPermissionParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 290
    .local v4, "tagName":Ljava/lang/String;
    const-string/jumbo v6, "uses-license"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 291
    iget-object v6, p0, Landroid/content/pm/LicPermissionParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v7, "name"

    invoke-interface {v6, v11, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 292
    if-nez v2, :cond_4

    .line 293
    new-instance v6, Landroid/content/pm/PackageParser$PackageParserException;

    const-string v7, "Empty name in uses-licensed of <uses-lic-permission>"

    invoke-direct {v6, v9, v7}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 296
    :cond_4
    iget-object v6, v3, Landroid/content/pm/LicPermissionParser$RequestedLicPermission;->usesLicenses:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 299
    .end local v4    # "tagName":Ljava/lang/String;
    :cond_5
    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->requestedLicPermissions:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    return v8
.end method


# virtual methods
.method public parse(Landroid/content/res/AssetManager;Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)V
    .locals 8
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "apkPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    const/16 v7, -0x66

    .line 425
    :try_start_0
    const-string v3, "LicensedPermissions.xml"

    invoke-virtual {p1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 427
    .local v2, "licStr":Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/LicPermissionParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 428
    iget-object v3, p0, Landroid/content/pm/LicPermissionParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 429
    iput-object p3, p0, Landroid/content/pm/LicPermissionParser;->mApkPath:Ljava/lang/String;

    .line 430
    invoke-direct {p0, p2}, Landroid/content/pm/LicPermissionParser;->parsePackageLicensed(Landroid/content/pm/PackageParser$Package;)Landroid/content/pm/PackageParser$Package;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 447
    .end local v2    # "licStr":Ljava/io/InputStream;
    :goto_0
    return-void

    .line 431
    .restart local v2    # "licStr":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 432
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v4, -0x66

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to read manifest from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 438
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2    # "licStr":Ljava/io/InputStream;
    :catch_1
    move-exception v3

    goto :goto_0

    .line 434
    .restart local v2    # "licStr":Ljava/io/InputStream;
    :catch_2
    move-exception v1

    .line 435
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v4, -0x66

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to read manifest from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 441
    .end local v1    # "ioe":Ljava/io/IOException;
    .end local v2    # "licStr":Ljava/io/InputStream;
    :catch_3
    move-exception v0

    .line 442
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "LicPermissionParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to read LicensedPermissions.xml of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 444
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read manifest from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v7, v4, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

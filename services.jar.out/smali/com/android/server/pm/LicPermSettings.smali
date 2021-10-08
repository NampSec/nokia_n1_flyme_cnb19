.class final Lcom/android/server/pm/LicPermSettings;
.super Ljava/lang/Object;
.source "LicPermSettings.java"


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"


# instance fields
.field private final mBackupLicenseFile:Ljava/io/File;

.field protected final mLicPermissions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/LicPermission;",
            ">;"
        }
    .end annotation
.end field

.field private final mLicenseFile:Ljava/io/File;

.field final mReadMessages:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "systemDir"    # Ljava/io/File;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/LicPermSettings;->mLicPermissions:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/LicPermSettings;->mReadMessages:Ljava/lang/StringBuilder;

    .line 56
    new-instance v0, Ljava/io/File;

    const-string v1, "packages_perms.xml"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/LicPermSettings;->mLicenseFile:Ljava/io/File;

    .line 57
    new-instance v0, Ljava/io/File;

    const-string v1, "packages_perms-backup.xml"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/LicPermSettings;->mBackupLicenseFile:Ljava/io/File;

    .line 58
    return-void
.end method

.method private addLicPermissionLPw(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/LicPermission;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "require"    # Ljava/lang/String;

    .prologue
    .line 192
    iget-object v1, p0, Lcom/android/server/pm/LicPermSettings;->mLicPermissions:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/LicPermission;

    .line 193
    .local v0, "licPerm":Lcom/android/server/pm/LicPermission;
    if-eqz v0, :cond_1

    .line 194
    invoke-virtual {v0}, Lcom/android/server/pm/LicPermission;->getRequire()I

    move-result v1

    invoke-virtual {v0, p2}, Lcom/android/server/pm/LicPermission;->getRequireInteger(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_0

    move-object v1, v0

    .line 203
    :goto_0
    return-object v1

    .line 197
    :cond_0
    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding duplicate licensed permission, keeping first: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 199
    const/4 v1, 0x0

    goto :goto_0

    .line 201
    :cond_1
    new-instance v0, Lcom/android/server/pm/LicPermission;

    .end local v0    # "licPerm":Lcom/android/server/pm/LicPermission;
    invoke-direct {v0, p1, p2}, Lcom/android/server/pm/LicPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "licPerm":Lcom/android/server/pm/LicPermission;
    move-object v1, v0

    .line 203
    goto :goto_0
.end method

.method private readLicPermissionLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    const/4 v8, 0x0

    const-string v9, "name"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, "name":Ljava/lang/String;
    const/4 v8, 0x0

    const-string v9, "require"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 210
    .local v5, "require":Ljava/lang/String;
    const/4 v2, 0x0

    .line 212
    .local v2, "licPerm":Lcom/android/server/pm/LicPermission;
    if-nez v3, :cond_3

    .line 213
    const/4 v8, 0x5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error in package manager licensed: <lic-permission> has no name at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 231
    :cond_0
    :goto_0
    if-eqz v2, :cond_c

    .line 232
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    .line 233
    .local v4, "outerDepth":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .line 235
    .local v7, "type":I
    :goto_1
    const/4 v8, 0x1

    if-eq v7, v8, :cond_d

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v4, :cond_d

    .line 236
    :cond_1
    const/4 v8, 0x3

    if-eq v7, v8, :cond_2

    const/4 v8, 0x4

    if-ne v7, v8, :cond_5

    .line 237
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .line 238
    goto :goto_1

    .line 216
    .end local v4    # "outerDepth":I
    .end local v7    # "type":I
    :cond_3
    const-string v8, "any"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "all"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 218
    const/4 v8, 0x5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error in package manager licensed: lic-permission"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " has bad require"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_0

    .line 223
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/android/server/pm/LicPermSettings;->addLicPermissionLPw(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/LicPermission;

    move-result-object v2

    .line 224
    if-nez v2, :cond_0

    .line 225
    const/4 v8, 0x6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Occurred while parsing lic-permission at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 241
    .restart local v4    # "outerDepth":I
    .restart local v7    # "type":I
    :cond_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 242
    .local v6, "tagName":Ljava/lang/String;
    const-string v8, "cert"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 243
    new-instance v0, Lcom/android/server/pm/CertInfo;

    invoke-direct {v0}, Lcom/android/server/pm/CertInfo;-><init>()V

    .line 244
    .local v0, "certInfo":Lcom/android/server/pm/CertInfo;
    const/4 v8, 0x0

    const-string v9, "key"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/server/pm/CertInfo;->key:Ljava/lang/String;

    .line 245
    const/4 v8, 0x0

    const-string v9, "licenseHint"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/server/pm/CertInfo;->licenseHint:Ljava/lang/String;

    .line 246
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 247
    .local v1, "innerrevlistDepth":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .line 249
    :goto_2
    const/4 v8, 0x1

    if-eq v7, v8, :cond_a

    const/4 v8, 0x3

    if-ne v7, v8, :cond_6

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v1, :cond_a

    .line 251
    :cond_6
    const/4 v8, 0x3

    if-eq v7, v8, :cond_7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_8

    .line 252
    :cond_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .line 253
    goto :goto_2

    .line 255
    :cond_8
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 256
    const-string v8, "revlist"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 257
    iget-object v8, v0, Lcom/android/server/pm/CertInfo;->revokePackagesList:Ljava/util/HashSet;

    invoke-direct {p0, p1, v8}, Lcom/android/server/pm/LicPermSettings;->readRevokePackagesLPw(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Set;)V

    .line 259
    :cond_9
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    goto :goto_2

    .line 261
    :cond_a
    iget-object v8, v2, Lcom/android/server/pm/LicPermission;->certsInfo:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    .end local v0    # "certInfo":Lcom/android/server/pm/CertInfo;
    .end local v1    # "innerrevlistDepth":I
    :goto_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .line 268
    goto/16 :goto_1

    .line 263
    :cond_b
    const/4 v8, 0x5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown element under <lic-permission>: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 265
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_3

    .line 271
    .end local v4    # "outerDepth":I
    .end local v6    # "tagName":Ljava/lang/String;
    .end local v7    # "type":I
    :cond_c
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 273
    :cond_d
    return-void
.end method

.method private readRevokePackagesLPw(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Set;)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .local p2, "outPerms":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v7, 0x5

    const/4 v6, 0x3

    .line 164
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 167
    .local v1, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    if-ne v3, v6, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_4

    .line 168
    :cond_1
    if-eq v3, v6, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 172
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, "tagName":Ljava/lang/String;
    const-string v4, "package"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 174
    const/4 v4, 0x0

    const-string v5, "name"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 176
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 186
    .end local v0    # "name":Ljava/lang/String;
    :goto_1
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 178
    .restart local v0    # "name":Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in package manager licensed: <revlist> package has no name at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_1

    .line 183
    .end local v0    # "name":Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <revlist>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_1

    .line 188
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private writeLicPermissionLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/LicPermission;)V
    .locals 7
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "licperm"    # Lcom/android/server/pm/LicPermission;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 62
    const-string v4, "lic-permission"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 63
    const-string v4, "name"

    invoke-virtual {p2}, Lcom/android/server/pm/LicPermission;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 64
    const-string v4, "require"

    invoke-virtual {p2}, Lcom/android/server/pm/LicPermission;->getRequireString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 65
    iget-object v4, p2, Lcom/android/server/pm/LicPermission;->certsInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/CertInfo;

    .line 66
    .local v2, "info":Lcom/android/server/pm/CertInfo;
    const-string v4, "cert"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 67
    const-string v4, "key"

    iget-object v5, v2, Lcom/android/server/pm/CertInfo;->key:Ljava/lang/String;

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 68
    iget-object v4, v2, Lcom/android/server/pm/CertInfo;->licenseHint:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 69
    const-string v4, "licenseHint"

    iget-object v5, v2, Lcom/android/server/pm/CertInfo;->licenseHint:Ljava/lang/String;

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 71
    :cond_0
    const-string v4, "revlist"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 72
    iget-object v4, v2, Lcom/android/server/pm/CertInfo;->revokePackagesList:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 73
    .local v3, "name":Ljava/lang/String;
    const-string v4, "package"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 74
    const-string v4, "name"

    invoke-interface {p1, v6, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 75
    const-string v4, "package"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 77
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    const-string v4, "revlist"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 78
    const-string v4, "cert"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 80
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Lcom/android/server/pm/CertInfo;
    :cond_2
    const-string v4, "lic-permission"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 81
    return-void
.end method


# virtual methods
.method protected readLicensedLPw(Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 276
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v3, 0x0

    .line 277
    .local v3, "str":Ljava/io/FileInputStream;
    iget-object v7, p0, Lcom/android/server/pm/LicPermSettings;->mBackupLicenseFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 279
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    iget-object v7, p0, Lcom/android/server/pm/LicPermSettings;->mBackupLicenseFile:Ljava/io/File;

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    .end local v3    # "str":Ljava/io/FileInputStream;
    .local v4, "str":Ljava/io/FileInputStream;
    :try_start_1
    iget-object v7, p0, Lcom/android/server/pm/LicPermSettings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v8, "Reading from backup licensed file\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    const/4 v7, 0x4

    const-string v8, "Need to read from backup licensed file"

    invoke-static {v7, v8}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 283
    iget-object v7, p0, Lcom/android/server/pm/LicPermSettings;->mLicenseFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 287
    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cleaning up licensed file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/pm/LicPermSettings;->mLicenseFile:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v7, p0, Lcom/android/server/pm/LicPermSettings;->mLicenseFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b

    .line 297
    :cond_0
    :goto_0
    if-nez v4, :cond_d

    .line 298
    :try_start_2
    iget-object v7, p0, Lcom/android/server/pm/LicPermSettings;->mLicenseFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    .line 299
    iget-object v7, p0, Lcom/android/server/pm/LicPermSettings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v8, "No licensed file found\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    const/4 v7, 0x4

    const-string v8, "No licensed file; creating initial state"

    invoke-static {v7, v8}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 302
    const/4 v7, 0x0

    .line 353
    if-eqz v4, :cond_1

    .line 355
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    :goto_1
    move-object v3, v4

    .line 365
    .end local v4    # "str":Ljava/io/FileInputStream;
    .restart local v3    # "str":Ljava/io/FileInputStream;
    :cond_2
    :goto_2
    return v7

    .line 291
    :catch_0
    move-exception v7

    :goto_3
    move-object v4, v3

    .end local v3    # "str":Ljava/io/FileInputStream;
    .restart local v4    # "str":Ljava/io/FileInputStream;
    goto :goto_0

    .line 356
    :catch_1
    move-exception v0

    .line 357
    .local v0, "e":Ljava/io/IOException;
    const-string v8, "PackageManager"

    const-string v9, "str not found"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 304
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_4
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v7, p0, Lcom/android/server/pm/LicPermSettings;->mLicenseFile:Ljava/io/File;

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 306
    .end local v4    # "str":Ljava/io/FileInputStream;
    .restart local v3    # "str":Ljava/io/FileInputStream;
    :goto_4
    :try_start_5
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 307
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v7, 0x0

    invoke-interface {v2, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 309
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .line 311
    .local v6, "type":I
    :goto_5
    const/4 v7, 0x2

    if-eq v6, v7, :cond_4

    const/4 v7, 0x1

    if-eq v6, v7, :cond_4

    .line 312
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    goto :goto_5

    .line 315
    :cond_4
    const/4 v7, 0x2

    if-eq v6, v7, :cond_5

    .line 316
    iget-object v7, p0, Lcom/android/server/pm/LicPermSettings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v8, "No start tag found in licensed file\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    const/4 v7, 0x5

    const-string v8, "No start tag found in package manager licensed"

    invoke-static {v7, v8}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 319
    const-string v7, "PackageManager"

    const-string v8, "No start tag found in package manager licensed"

    invoke-static {v7, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 321
    const/4 v7, 0x0

    .line 353
    if-eqz v3, :cond_2

    .line 355
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 356
    :catch_2
    move-exception v0

    .line 357
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v8, "PackageManager"

    const-string v9, "str not found"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 324
    .end local v0    # "e":Ljava/io/IOException;
    :cond_5
    :try_start_7
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 325
    .local v1, "outerDepth":I
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .line 327
    :goto_6
    const/4 v7, 0x1

    if-eq v6, v7, :cond_b

    const/4 v7, 0x3

    if-ne v6, v7, :cond_6

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v1, :cond_b

    .line 328
    :cond_6
    const/4 v7, 0x3

    if-eq v6, v7, :cond_7

    const/4 v7, 0x4

    if-ne v6, v7, :cond_8

    .line 329
    :cond_7
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .line 330
    goto :goto_6

    .line 333
    :cond_8
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 334
    .local v5, "tagName":Ljava/lang/String;
    const-string v7, "lic-permission"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 335
    invoke-direct {p0, v2}, Lcom/android/server/pm/LicPermSettings;->readLicPermissionLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 341
    :goto_7
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .line 342
    goto :goto_6

    .line 337
    :cond_9
    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown element under <permissions>: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_7

    .line 343
    .end local v1    # "outerDepth":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "tagName":Ljava/lang/String;
    .end local v6    # "type":I
    :catch_3
    move-exception v0

    .line 344
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_8
    :try_start_8
    iget-object v7, p0, Lcom/android/server/pm/LicPermSettings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v8, "Error reading: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    const/4 v7, 0x6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error reading licensed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 346
    const-string v7, "PackageManager"

    const-string v8, "Error reading package manager licensed"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 353
    if-eqz v3, :cond_a

    .line 355
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 362
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_a
    :goto_9
    iget-object v7, p0, Lcom/android/server/pm/LicPermSettings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Read completed successfully: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/pm/LicPermSettings;->mLicPermissions:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " licensedPermissions\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    const/4 v7, 0x1

    goto/16 :goto_2

    .line 353
    .restart local v1    # "outerDepth":I
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "type":I
    :cond_b
    if-eqz v3, :cond_a

    .line 355
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_9

    .line 356
    :catch_4
    move-exception v0

    .line 357
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "PackageManager"

    const-string v8, "str not found"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 356
    .end local v1    # "outerDepth":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "type":I
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_5
    move-exception v0

    .line 357
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "PackageManager"

    const-string v8, "str not found"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 348
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "str":Ljava/io/FileInputStream;
    .restart local v4    # "str":Ljava/io/FileInputStream;
    :catch_6
    move-exception v0

    move-object v3, v4

    .line 349
    .end local v4    # "str":Ljava/io/FileInputStream;
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "str":Ljava/io/FileInputStream;
    :goto_a
    :try_start_b
    iget-object v7, p0, Lcom/android/server/pm/LicPermSettings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v8, "Error reading: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    const/4 v7, 0x6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error reading licensed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 351
    const-string v7, "PackageManager"

    const-string v8, "Error reading package manager licensed"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 353
    if-eqz v3, :cond_a

    .line 355
    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_9

    .line 356
    :catch_7
    move-exception v0

    .line 357
    const-string v7, "PackageManager"

    const-string v8, "str not found"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 353
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "str":Ljava/io/FileInputStream;
    .restart local v4    # "str":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v7

    move-object v3, v4

    .end local v4    # "str":Ljava/io/FileInputStream;
    .restart local v3    # "str":Ljava/io/FileInputStream;
    :goto_b
    if-eqz v3, :cond_c

    .line 355
    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 358
    :cond_c
    :goto_c
    throw v7

    .line 356
    :catch_8
    move-exception v0

    .line 357
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v8, "PackageManager"

    const-string v9, "str not found"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 353
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v7

    goto :goto_b

    .line 348
    :catch_9
    move-exception v0

    goto :goto_a

    .line 343
    .end local v3    # "str":Ljava/io/FileInputStream;
    .restart local v4    # "str":Ljava/io/FileInputStream;
    :catch_a
    move-exception v0

    move-object v3, v4

    .end local v4    # "str":Ljava/io/FileInputStream;
    .restart local v3    # "str":Ljava/io/FileInputStream;
    goto/16 :goto_8

    .line 291
    .end local v3    # "str":Ljava/io/FileInputStream;
    .restart local v4    # "str":Ljava/io/FileInputStream;
    :catch_b
    move-exception v7

    move-object v3, v4

    .end local v4    # "str":Ljava/io/FileInputStream;
    .restart local v3    # "str":Ljava/io/FileInputStream;
    goto/16 :goto_3

    .end local v3    # "str":Ljava/io/FileInputStream;
    .restart local v4    # "str":Ljava/io/FileInputStream;
    :cond_d
    move-object v3, v4

    .end local v4    # "str":Ljava/io/FileInputStream;
    .restart local v3    # "str":Ljava/io/FileInputStream;
    goto/16 :goto_4

    :cond_e
    move-object v4, v3

    .end local v3    # "str":Ljava/io/FileInputStream;
    .restart local v4    # "str":Ljava/io/FileInputStream;
    goto/16 :goto_0
.end method

.method writeLicensedLPr()V
    .locals 12

    .prologue
    .line 86
    iget-object v8, p0, Lcom/android/server/pm/LicPermSettings;->mLicenseFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 91
    iget-object v8, p0, Lcom/android/server/pm/LicPermSettings;->mBackupLicenseFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 92
    iget-object v8, p0, Lcom/android/server/pm/LicPermSettings;->mLicenseFile:Ljava/io/File;

    iget-object v9, p0, Lcom/android/server/pm/LicPermSettings;->mBackupLicenseFile:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 93
    const-string v8, "PackageManager"

    const-string v9, "Unable to backup package manager licensed,  current changes will be lost at reboot"

    invoke-static {v8, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v8, p0, Lcom/android/server/pm/LicPermSettings;->mLicenseFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 99
    const-string v8, "PackageManager"

    const-string v9, "Preserving older licensed backup"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_2
    const/4 v1, 0x0

    .line 103
    .local v1, "fstr":Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .line 105
    .local v6, "str":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v8, p0, Lcom/android/server/pm/LicPermSettings;->mLicenseFile:Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .end local v1    # "fstr":Ljava/io/FileOutputStream;
    .local v2, "fstr":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-direct {v7, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 108
    .end local v6    # "str":Ljava/io/BufferedOutputStream;
    .local v7, "str":Ljava/io/BufferedOutputStream;
    :try_start_2
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 109
    .local v5, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string v8, "utf-8"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 110
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 111
    const-string v8, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v9, 0x1

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 113
    const/4 v8, 0x0

    const-string v9, "permissions"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 114
    iget-object v8, p0, Lcom/android/server/pm/LicPermSettings;->mLicPermissions:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/LicPermission;

    .line 115
    .local v4, "licperm":Lcom/android/server/pm/LicPermission;
    invoke-direct {p0, v5, v4}, Lcom/android/server/pm/LicPermSettings;->writeLicPermissionLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/LicPermission;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 133
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "licperm":Lcom/android/server/pm/LicPermission;
    .end local v5    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v0

    move-object v6, v7

    .end local v7    # "str":Ljava/io/BufferedOutputStream;
    .restart local v6    # "str":Ljava/io/BufferedOutputStream;
    move-object v1, v2

    .line 134
    .end local v2    # "fstr":Ljava/io/FileOutputStream;
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1    # "fstr":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_3
    const-string v8, "PackageManager"

    const-string v9, "Unable to write package manager license, current changes will be lost at reboot"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 140
    if-eqz v6, :cond_3

    .line 142
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 147
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_3
    :goto_3
    if-eqz v1, :cond_4

    .line 149
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 156
    :cond_4
    :goto_4
    iget-object v8, p0, Lcom/android/server/pm/LicPermSettings;->mLicenseFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/pm/LicPermSettings;->mLicenseFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_0

    .line 157
    const-string v8, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to clean up mangled file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/pm/LicPermSettings;->mLicenseFile:Ljava/io/File;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 118
    .end local v1    # "fstr":Ljava/io/FileOutputStream;
    .end local v6    # "str":Ljava/io/BufferedOutputStream;
    .restart local v2    # "fstr":Ljava/io/FileOutputStream;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v7    # "str":Ljava/io/BufferedOutputStream;
    :cond_5
    const/4 v8, 0x0

    :try_start_6
    const-string v9, "permissions"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 120
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 122
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->flush()V

    .line 123
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 126
    iget-object v8, p0, Lcom/android/server/pm/LicPermSettings;->mBackupLicenseFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 127
    iget-object v8, p0, Lcom/android/server/pm/LicPermSettings;->mLicenseFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1b0

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-static {v8, v9, v10, v11}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 140
    if-eqz v7, :cond_6

    .line 142
    :try_start_7
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 147
    :cond_6
    :goto_5
    if-eqz v2, :cond_0

    .line 149
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_0

    .line 150
    :catch_1
    move-exception v0

    .line 151
    .local v0, "e":Ljava/io/IOException;
    const-string v8, "PackageManager"

    const-string v9, "fstr not found"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 143
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 144
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v8, "PackageManager"

    const-string v9, "str not found"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 143
    .end local v2    # "fstr":Ljava/io/FileOutputStream;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v7    # "str":Ljava/io/BufferedOutputStream;
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1    # "fstr":Ljava/io/FileOutputStream;
    .restart local v6    # "str":Ljava/io/BufferedOutputStream;
    :catch_3
    move-exception v0

    .line 144
    .local v0, "e":Ljava/io/IOException;
    const-string v8, "PackageManager"

    const-string v9, "str not found"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 150
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 151
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v8, "PackageManager"

    const-string v9, "fstr not found"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 136
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 137
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_6
    :try_start_9
    const-string v8, "PackageManager"

    const-string v9, "Unable to write package manager license, current changes will be lost at reboot"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 140
    if-eqz v6, :cond_7

    .line 142
    :try_start_a
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 147
    :cond_7
    :goto_7
    if-eqz v1, :cond_4

    .line 149
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto/16 :goto_4

    .line 150
    :catch_6
    move-exception v0

    .line 151
    const-string v8, "PackageManager"

    const-string v9, "fstr not found"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 143
    :catch_7
    move-exception v0

    .line 144
    const-string v8, "PackageManager"

    const-string v9, "str not found"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 140
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_8
    if-eqz v6, :cond_8

    .line 142
    :try_start_c
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 147
    :cond_8
    :goto_9
    if-eqz v1, :cond_9

    .line 149
    :try_start_d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 152
    :cond_9
    :goto_a
    throw v8

    .line 143
    :catch_8
    move-exception v0

    .line 144
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v9, "PackageManager"

    const-string v10, "str not found"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 150
    .end local v0    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v0

    .line 151
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v9, "PackageManager"

    const-string v10, "fstr not found"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 140
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fstr":Ljava/io/FileOutputStream;
    .restart local v2    # "fstr":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v8

    move-object v1, v2

    .end local v2    # "fstr":Ljava/io/FileOutputStream;
    .restart local v1    # "fstr":Ljava/io/FileOutputStream;
    goto :goto_8

    .end local v1    # "fstr":Ljava/io/FileOutputStream;
    .end local v6    # "str":Ljava/io/BufferedOutputStream;
    .restart local v2    # "fstr":Ljava/io/FileOutputStream;
    .restart local v7    # "str":Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v8

    move-object v6, v7

    .end local v7    # "str":Ljava/io/BufferedOutputStream;
    .restart local v6    # "str":Ljava/io/BufferedOutputStream;
    move-object v1, v2

    .end local v2    # "fstr":Ljava/io/FileOutputStream;
    .restart local v1    # "fstr":Ljava/io/FileOutputStream;
    goto :goto_8

    .line 136
    .end local v1    # "fstr":Ljava/io/FileOutputStream;
    .restart local v2    # "fstr":Ljava/io/FileOutputStream;
    :catch_a
    move-exception v0

    move-object v1, v2

    .end local v2    # "fstr":Ljava/io/FileOutputStream;
    .restart local v1    # "fstr":Ljava/io/FileOutputStream;
    goto :goto_6

    .end local v1    # "fstr":Ljava/io/FileOutputStream;
    .end local v6    # "str":Ljava/io/BufferedOutputStream;
    .restart local v2    # "fstr":Ljava/io/FileOutputStream;
    .restart local v7    # "str":Ljava/io/BufferedOutputStream;
    :catch_b
    move-exception v0

    move-object v6, v7

    .end local v7    # "str":Ljava/io/BufferedOutputStream;
    .restart local v6    # "str":Ljava/io/BufferedOutputStream;
    move-object v1, v2

    .end local v2    # "fstr":Ljava/io/FileOutputStream;
    .restart local v1    # "fstr":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 133
    :catch_c
    move-exception v0

    goto/16 :goto_2

    .end local v1    # "fstr":Ljava/io/FileOutputStream;
    .restart local v2    # "fstr":Ljava/io/FileOutputStream;
    :catch_d
    move-exception v0

    move-object v1, v2

    .end local v2    # "fstr":Ljava/io/FileOutputStream;
    .restart local v1    # "fstr":Ljava/io/FileOutputStream;
    goto/16 :goto_2
.end method

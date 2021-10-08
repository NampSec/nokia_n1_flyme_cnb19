.class public final Landroid/content/pm/LicPermVerifier;
.super Ljava/lang/Object;
.source "LicPermVerifier.java"


# static fields
.field private static final CERT_BY_SIGNED_KEY:I = 0x1

.field private static final CERT_INVALID:I = -0x1

.field private static final CERT_WITH_SIGNED_KEY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LicPermVerifier"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method private static verifyCertIssuer(Ljava/security/cert/Certificate;Ljava/security/PublicKey;)Z
    .locals 4
    .param p0, "cert"    # Ljava/security/cert/Certificate;
    .param p1, "pubKey"    # Ljava/security/PublicKey;

    .prologue
    const/4 v1, 0x0

    .line 69
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_4

    .line 86
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/security/cert/CertificateException;
    const-string v2, "LicPermVerifier"

    const-string v3, "cert verification failed from CertificateException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 73
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :catch_1
    move-exception v0

    .line 74
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v2, "LicPermVerifier"

    const-string v3, "cert verification failed from NoSuchAlgorithmException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 76
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v0

    .line 77
    .local v0, "e":Ljava/security/InvalidKeyException;
    const-string v2, "LicPermVerifier"

    const-string v3, "cert verification failed from InvalidKeyException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 79
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v0

    .line 80
    .local v0, "e":Ljava/security/NoSuchProviderException;
    const-string v2, "LicPermVerifier"

    const-string v3, "cert verification failed from NoSuchProviderException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 82
    .end local v0    # "e":Ljava/security/NoSuchProviderException;
    :catch_4
    move-exception v0

    .line 83
    .local v0, "e":Ljava/security/SignatureException;
    const-string v2, "LicPermVerifier"

    const-string v3, "cert verification failed from SignatureException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static verifyCertPackage(Landroid/content/pm/PackageParser$Package;)Z
    .locals 11
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 131
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->licenses:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 132
    .local v3, "item":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/LicPermissionParser$License;>;"
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 133
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->licPermissions:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/LicPermissionParser$LicPermission;

    .line 134
    .local v5, "perm":Landroid/content/pm/LicPermissionParser$LicPermission;
    iget-object v9, v5, Landroid/content/pm/LicPermissionParser$LicPermission;->info:Landroid/content/pm/LicPermissionInfo;

    iget-object v9, v9, Landroid/content/pm/LicPermissionInfo;->certsInfoList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/CertInfo;

    .line 135
    .local v0, "certInfo":Lcom/android/server/pm/CertInfo;
    invoke-virtual {v0}, Lcom/android/server/pm/CertInfo;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, p0}, Landroid/content/pm/LicPermVerifier;->verifyCertValid(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1

    .line 150
    .end local v0    # "certInfo":Lcom/android/server/pm/CertInfo;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "perm":Landroid/content/pm/LicPermissionParser$LicPermission;
    :goto_0
    return v7

    .line 141
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 142
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/LicPermissionParser$License;

    .line 143
    .local v4, "lic":Landroid/content/pm/LicPermissionParser$License;
    iget-object v9, v4, Landroid/content/pm/LicPermissionParser$License;->key:Ljava/lang/String;

    invoke-static {v9, p0}, Landroid/content/pm/LicPermVerifier;->verifyCertValid(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)I

    move-result v6

    .line 144
    .local v6, "verifyCertValid":I
    if-eqz v6, :cond_2

    if-eq v6, v8, :cond_2

    goto :goto_0

    .end local v4    # "lic":Landroid/content/pm/LicPermissionParser$License;
    .end local v6    # "verifyCertValid":I
    :cond_3
    move v7, v8

    .line 150
    goto :goto_0
.end method

.method private static verifyCertValid(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)I
    .locals 10
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    const/4 v7, -0x1

    .line 98
    :try_start_0
    const-string v8, "X.509"

    invoke-static {v8}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 99
    .local v2, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 100
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v2, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    .line 102
    .local v1, "cert":Ljava/security/cert/Certificate;
    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    .line 104
    .local v5, "pubKey":Ljava/security/PublicKey;
    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    invoke-virtual {v8, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v7, 0x0

    .line 119
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v1    # "cert":Ljava/security/cert/Certificate;
    .end local v2    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v5    # "pubKey":Ljava/security/PublicKey;
    :cond_0
    :goto_0
    return v7

    .line 107
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "cert":Ljava/security/cert/Certificate;
    .restart local v2    # "certFactory":Ljava/security/cert/CertificateFactory;
    .restart local v5    # "pubKey":Ljava/security/PublicKey;
    :cond_1
    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    invoke-virtual {v8}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/PublicKey;

    .line 108
    .local v6, "signKey":Ljava/security/PublicKey;
    invoke-static {v1, v6}, Landroid/content/pm/LicPermVerifier;->verifyCertIssuer(Ljava/security/cert/Certificate;Ljava/security/PublicKey;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    if-eqz v8, :cond_2

    .line 109
    const/4 v7, 0x1

    goto :goto_0

    .line 112
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v1    # "cert":Ljava/security/cert/Certificate;
    .end local v2    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "pubKey":Ljava/security/PublicKey;
    .end local v6    # "signKey":Ljava/security/PublicKey;
    :catch_0
    move-exception v3

    .line 113
    .local v3, "e":Ljava/security/cert/CertificateException;
    const-string v8, "LicPermVerifier"

    const-string v9, "cert generate failed from CertificateException"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 115
    .end local v3    # "e":Ljava/security/cert/CertificateException;
    :catch_1
    move-exception v3

    .line 116
    .local v3, "e":Ljava/lang/RuntimeException;
    const-string v8, "LicPermVerifier"

    const-string v9, "cert generate failed from RuntimeException"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

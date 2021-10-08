.class public final Lcom/android/server/pm/LicPermUtil;
.super Ljava/lang/Object;
.source "LicPermUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LicPermUtil"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method private static verifyCertificate(Ljava/security/cert/Certificate;Ljava/security/cert/Certificate;)Z
    .locals 5
    .param p0, "provider"    # Ljava/security/cert/Certificate;
    .param p1, "requester"    # Ljava/security/cert/Certificate;

    .prologue
    const/4 v2, 0x0

    .line 50
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    .line 53
    .local v1, "pubKey":Ljava/security/PublicKey;
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_4

    .line 70
    const/4 v2, 0x1

    .line 72
    .end local v1    # "pubKey":Ljava/security/PublicKey;
    :cond_0
    :goto_0
    return v2

    .line 54
    .restart local v1    # "pubKey":Ljava/security/PublicKey;
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/security/cert/CertificateException;
    const-string v3, "LicPermUtil"

    const-string v4, "cert verification failed from CertificateException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 57
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :catch_1
    move-exception v0

    .line 58
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v3, "LicPermUtil"

    const-string v4, "cert verification failed from NoSuchAlgorithmException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 60
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v0

    .line 61
    .local v0, "e":Ljava/security/InvalidKeyException;
    const-string v3, "LicPermUtil"

    const-string v4, "cert verification failed from InvalidKeyException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 63
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v0

    .line 64
    .local v0, "e":Ljava/security/NoSuchProviderException;
    const-string v3, "LicPermUtil"

    const-string v4, "cert verification failed from NoSuchProviderException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 66
    .end local v0    # "e":Ljava/security/NoSuchProviderException;
    :catch_4
    move-exception v0

    .line 67
    .local v0, "e":Ljava/security/SignatureException;
    const-string v3, "LicPermUtil"

    const-string v4, "cert verification failed from SignatureException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static verifyLicPermissionCert(Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/CertInfo;Landroid/content/pm/LicPermissionParser$RequestedLicPermission;Ljava/util/List;)Z
    .locals 16
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "certInfo"    # Lcom/android/server/pm/CertInfo;
    .param p2, "rlp"    # Landroid/content/pm/LicPermissionParser$RequestedLicPermission;
    .param p3, "matchedLicenses"    # Ljava/util/List;

    .prologue
    .line 78
    const/4 v12, 0x0

    .line 81
    .local v12, "validated":Z
    :try_start_0
    const-string v13, "X.509"

    invoke-static {v13}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    .line 82
    .local v3, "certFactory":Ljava/security/cert/CertificateFactory;
    const/4 v5, 0x0

    .line 83
    .local v5, "certRequester":Ljava/security/cert/Certificate;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/CertInfo;->getKey()Ljava/lang/String;

    move-result-object v11

    .line 84
    .local v11, "providerKey":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/pm/CertInfo;->licenseHint:Ljava/lang/String;

    .line 86
    .local v9, "licenseHint":Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 87
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/content/pm/LicPermissionParser$RequestedLicPermission;->usesLicenses:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 88
    .local v10, "licenseName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/content/pm/PackageParser$Package;->licenses:Ljava/util/HashMap;

    invoke-virtual {v13, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/LicPermissionParser$License;

    .line 89
    .local v8, "lic":Landroid/content/pm/LicPermissionParser$License;
    if-eqz v8, :cond_0

    iget-object v13, v8, Landroid/content/pm/LicPermissionParser$License;->licenseHint:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 90
    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v13, v8, Landroid/content/pm/LicPermissionParser$License;->key:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-direct {v2, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 92
    .local v2, "baisRequester":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v3, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    .line 97
    .end local v2    # "baisRequester":Ljava/io/ByteArrayInputStream;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "lic":Landroid/content/pm/LicPermissionParser$License;
    .end local v10    # "licenseName":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/server/pm/CertInfo;->revertCert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-direct {v1, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 99
    .local v1, "baisProvider":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v3, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 104
    .local v4, "certProvider":Ljava/security/cert/Certificate;
    if-eqz v4, :cond_2

    .line 106
    :try_start_1
    move-object v0, v4

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->checkValidity()V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 114
    :cond_2
    if-eqz v5, :cond_4

    .line 121
    :try_start_2
    move-object v0, v5

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->checkValidity()V
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 127
    if-eqz v5, :cond_3

    if-eqz v4, :cond_3

    .line 128
    :try_start_3
    invoke-static {v4, v5}, Lcom/android/server/pm/LicPermUtil;->verifyCertificate(Ljava/security/cert/Certificate;Ljava/security/cert/Certificate;)Z

    move-result v12

    :cond_3
    :goto_0
    move v13, v12

    .line 162
    .end local v1    # "baisProvider":Ljava/io/ByteArrayInputStream;
    .end local v3    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v4    # "certProvider":Ljava/security/cert/Certificate;
    .end local v5    # "certRequester":Ljava/security/cert/Certificate;
    .end local v9    # "licenseHint":Ljava/lang/String;
    .end local v11    # "providerKey":Ljava/lang/String;
    :goto_1
    return v13

    .line 107
    .restart local v1    # "baisProvider":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "certFactory":Ljava/security/cert/CertificateFactory;
    .restart local v4    # "certProvider":Ljava/security/cert/Certificate;
    .restart local v5    # "certRequester":Ljava/security/cert/Certificate;
    .restart local v9    # "licenseHint":Ljava/lang/String;
    .restart local v11    # "providerKey":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 108
    .local v6, "e":Ljava/security/cert/CertificateException;
    const-string v13, "LicPermUtil"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Provider Cert expired on :: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    check-cast v4, Ljava/security/cert/X509Certificate;

    .end local v4    # "certProvider":Ljava/security/cert/Certificate;
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v13, 0x0

    goto :goto_1

    .line 122
    .end local v6    # "e":Ljava/security/cert/CertificateException;
    .restart local v4    # "certProvider":Ljava/security/cert/Certificate;
    :catch_1
    move-exception v6

    .line 123
    .restart local v6    # "e":Ljava/security/cert/CertificateException;
    const-string v13, "LicPermUtil"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Requester Cert expired on :: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    check-cast v5, Ljava/security/cert/X509Certificate;

    .end local v5    # "certRequester":Ljava/security/cert/Certificate;
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v13, 0x0

    goto :goto_1

    .line 131
    .end local v6    # "e":Ljava/security/cert/CertificateException;
    .restart local v5    # "certRequester":Ljava/security/cert/Certificate;
    :cond_4
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/content/pm/LicPermissionParser$RequestedLicPermission;->usesLicenses:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 132
    .restart local v10    # "licenseName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/content/pm/PackageParser$Package;->licenses:Ljava/util/HashMap;

    invoke-virtual {v13, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/LicPermissionParser$License;

    .line 133
    .restart local v8    # "lic":Landroid/content/pm/LicPermissionParser$License;
    if-eqz v8, :cond_5

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 134
    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v13, v8, Landroid/content/pm/LicPermissionParser$License;->key:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-direct {v2, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 136
    .restart local v2    # "baisRequester":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v3, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v5

    .line 141
    if-eqz v5, :cond_6

    .line 143
    :try_start_4
    move-object v0, v5

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->checkValidity()V
    :try_end_4
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_3

    .line 150
    :cond_6
    :try_start_5
    invoke-static {v4, v5}, Lcom/android/server/pm/LicPermUtil;->verifyCertificate(Ljava/security/cert/Certificate;Ljava/security/cert/Certificate;)Z

    move-result v12

    .line 151
    if-eqz v12, :cond_5

    .line 152
    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 158
    .end local v1    # "baisProvider":Ljava/io/ByteArrayInputStream;
    .end local v2    # "baisRequester":Ljava/io/ByteArrayInputStream;
    .end local v3    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v4    # "certProvider":Ljava/security/cert/Certificate;
    .end local v5    # "certRequester":Ljava/security/cert/Certificate;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "lic":Landroid/content/pm/LicPermissionParser$License;
    .end local v9    # "licenseHint":Ljava/lang/String;
    .end local v10    # "licenseName":Ljava/lang/String;
    .end local v11    # "providerKey":Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 159
    .restart local v6    # "e":Ljava/security/cert/CertificateException;
    const-string v13, "LicPermUtil"

    const-string v14, "cert generate failed from CertificateException"

    invoke-static {v13, v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 144
    .end local v6    # "e":Ljava/security/cert/CertificateException;
    .restart local v1    # "baisProvider":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "baisRequester":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "certFactory":Ljava/security/cert/CertificateFactory;
    .restart local v4    # "certProvider":Ljava/security/cert/Certificate;
    .restart local v5    # "certRequester":Ljava/security/cert/Certificate;
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v8    # "lic":Landroid/content/pm/LicPermissionParser$License;
    .restart local v9    # "licenseHint":Ljava/lang/String;
    .restart local v10    # "licenseName":Ljava/lang/String;
    .restart local v11    # "providerKey":Ljava/lang/String;
    :catch_3
    move-exception v6

    .line 145
    .restart local v6    # "e":Ljava/security/cert/CertificateException;
    :try_start_6
    const-string v13, "LicPermUtil"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Requestor Cert expired on :: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    check-cast v5, Ljava/security/cert/X509Certificate;

    .end local v5    # "certRequester":Ljava/security/cert/Certificate;
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_6} :catch_2

    .line 147
    const/4 v13, 0x0

    goto/16 :goto_1
.end method

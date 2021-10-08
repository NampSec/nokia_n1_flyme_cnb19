.class public final Lcom/android/server/pm/CertInfo;
.super Ljava/lang/Object;
.source "CertInfo.java"


# instance fields
.field public key:Ljava/lang/String;

.field public licenseHint:Ljava/lang/String;

.field public revokePackagesList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
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
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/CertInfo;->revokePackagesList:Ljava/util/HashSet;

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/CertInfo;)V
    .locals 1
    .param p1, "origInfo"    # Lcom/android/server/pm/CertInfo;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/CertInfo;->revokePackagesList:Ljava/util/HashSet;

    .line 29
    iget-object v0, p1, Lcom/android/server/pm/CertInfo;->key:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/CertInfo;->key:Ljava/lang/String;

    .line 30
    iget-object v0, p1, Lcom/android/server/pm/CertInfo;->licenseHint:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/CertInfo;->licenseHint:Ljava/lang/String;

    .line 31
    iget-object v0, p1, Lcom/android/server/pm/CertInfo;->revokePackagesList:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/android/server/pm/CertInfo;->revokePackagesList:Ljava/util/HashSet;

    .line 32
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/server/pm/CertInfo;->key:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/CertInfo;->revertCert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public revertCert(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 47
    const-string v3, "-----BEGIN CERTIFICATE-----"

    .line 48
    .local v3, "startStr":Ljava/lang/String;
    const-string v1, "-----END CERTIFICATE-----"

    .line 49
    .local v1, "endStr":Ljava/lang/String;
    const-string v5, "-----BEGIN CERTIFICATE-----"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const-string v6, "-----BEGIN CERTIFICATE-----"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int v2, v5, v6

    .line 50
    .local v2, "startIdx":I
    const-string v5, "-----END CERTIFICATE-----"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 51
    .local v0, "endIdx":I
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, "subKey":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-----BEGIN CERTIFICATE-----"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    const-string v7, "\n"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-----END CERTIFICATE-----"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 53
    return-object p1
.end method

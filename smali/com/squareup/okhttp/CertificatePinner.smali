.class public final Lcom/squareup/okhttp/CertificatePinner;
.super Ljava/lang/Object;
.source "CertificatePinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/CertificatePinner$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lcom/squareup/okhttp/CertificatePinner;


# instance fields
.field private final hostnameToPins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lokio/ByteString;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 133
    new-instance v0, Lcom/squareup/okhttp/CertificatePinner$Builder;

    invoke-direct {v0}, Lcom/squareup/okhttp/CertificatePinner$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/squareup/okhttp/CertificatePinner$Builder;->build()Lcom/squareup/okhttp/CertificatePinner;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/CertificatePinner;->DEFAULT:Lcom/squareup/okhttp/CertificatePinner;

    return-void
.end method

.method private constructor <init>(Lcom/squareup/okhttp/CertificatePinner$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/squareup/okhttp/CertificatePinner$Builder;

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    invoke-static {p1}, Lcom/squareup/okhttp/CertificatePinner$Builder;->access$000(Lcom/squareup/okhttp/CertificatePinner$Builder;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/Util;->immutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/CertificatePinner;->hostnameToPins:Ljava/util/Map;

    .line 139
    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/CertificatePinner$Builder;Lcom/squareup/okhttp/CertificatePinner$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/squareup/okhttp/CertificatePinner$Builder;
    .param p2, "x1"    # Lcom/squareup/okhttp/CertificatePinner$1;

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/CertificatePinner;-><init>(Lcom/squareup/okhttp/CertificatePinner$Builder;)V

    return-void
.end method

.method public static pin(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 2
    .param p0, "certificate"    # Ljava/security/cert/Certificate;

    .prologue
    .line 223
    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_0

    .line 224
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Certificate pinning requires X509 certificates"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sha1/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p0, Ljava/security/cert/X509Certificate;

    .end local p0    # "certificate":Ljava/security/cert/Certificate;
    invoke-static {p0}, Lcom/squareup/okhttp/CertificatePinner;->sha1(Ljava/security/cert/X509Certificate;)Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static sha1(Ljava/security/cert/X509Certificate;)Lokio/ByteString;
    .locals 1
    .param p0, "x509Certificate"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 230
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/Util;->sha1(Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public check(Ljava/lang/String;Ljava/util/List;)V
    .locals 9
    .param p1, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 153
    .local p2, "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/CertificatePinner;->findMatchingPins(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    .line 155
    .local v3, "pins":Ljava/util/Set;, "Ljava/util/Set<Lokio/ByteString;>;"
    if-nez v3, :cond_1

    .line 159
    :cond_0
    return-void

    .line 157
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v0, v4, :cond_2

    .line 158
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 159
    .local v5, "x509Certificate":Ljava/security/cert/X509Certificate;
    invoke-static {v5}, Lcom/squareup/okhttp/CertificatePinner;->sha1(Ljava/security/cert/X509Certificate;)Lokio/ByteString;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    .end local v5    # "x509Certificate":Ljava/security/cert/X509Certificate;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Certificate pinning failure!"

    .line 164
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n  Peer certificate chain:"

    .line 165
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 166
    .local v1, "message":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    :goto_1
    if-ge v0, v4, :cond_3

    .line 167
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 168
    .restart local v5    # "x509Certificate":Ljava/security/cert/X509Certificate;
    const-string/jumbo v6, "\n    "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Lcom/squareup/okhttp/CertificatePinner;->pin(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": "

    .line 169
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v7

    invoke-interface {v7}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 171
    .end local v5    # "x509Certificate":Ljava/security/cert/X509Certificate;
    :cond_3
    const-string/jumbo v6, "\n  Pinned certificates for "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/ByteString;

    .line 173
    .local v2, "pin":Lokio/ByteString;
    const-string/jumbo v7, "\n    sha1/"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 175
    .end local v2    # "pin":Lokio/ByteString;
    :cond_4
    new-instance v6, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public varargs check(Ljava/lang/String;[Ljava/security/cert/Certificate;)V
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "peerCertificates"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 181
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/squareup/okhttp/CertificatePinner;->check(Ljava/lang/String;Ljava/util/List;)V

    .line 182
    return-void
.end method

.method findMatchingPins(Ljava/lang/String;)Ljava/util/Set;
    .locals 8
    .param p1, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v6, 0x2e

    .line 189
    iget-object v5, p0, Lcom/squareup/okhttp/CertificatePinner;->hostnameToPins:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 190
    .local v0, "directPins":Ljava/util/Set;, "Ljava/util/Set<Lokio/ByteString;>;"
    const/4 v4, 0x0

    .line 192
    .local v4, "wildcardPins":Ljava/util/Set;, "Ljava/util/Set<Lokio/ByteString;>;"
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 193
    .local v1, "indexOfFirstDot":I
    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 198
    .local v2, "indexOfLastDot":I
    if-eq v1, v2, :cond_0

    .line 200
    iget-object v5, p0, Lcom/squareup/okhttp/CertificatePinner;->hostnameToPins:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "*."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "wildcardPins":Ljava/util/Set;, "Ljava/util/Set<Lokio/ByteString;>;"
    check-cast v4, Ljava/util/Set;

    .line 203
    .restart local v4    # "wildcardPins":Ljava/util/Set;, "Ljava/util/Set<Lokio/ByteString;>;"
    :cond_0
    if-nez v0, :cond_1

    if-nez v4, :cond_1

    const/4 v3, 0x0

    .line 214
    :goto_0
    return-object v3

    .line 205
    :cond_1
    if-eqz v0, :cond_2

    if-eqz v4, :cond_2

    .line 206
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 207
    .local v3, "pins":Ljava/util/Set;, "Ljava/util/Set<Lokio/ByteString;>;"
    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 208
    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 212
    .end local v3    # "pins":Ljava/util/Set;, "Ljava/util/Set<Lokio/ByteString;>;"
    :cond_2
    if-eqz v0, :cond_3

    move-object v3, v0

    goto :goto_0

    :cond_3
    move-object v3, v4

    .line 214
    goto :goto_0
.end method

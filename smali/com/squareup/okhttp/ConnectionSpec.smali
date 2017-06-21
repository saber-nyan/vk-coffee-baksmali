.class public final Lcom/squareup/okhttp/ConnectionSpec;
.super Ljava/lang/Object;
.source "ConnectionSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/ConnectionSpec$Builder;
    }
.end annotation


# static fields
.field private static final APPROVED_CIPHER_SUITES:[Lcom/squareup/okhttp/CipherSuite;

.field public static final CLEARTEXT:Lcom/squareup/okhttp/ConnectionSpec;

.field public static final COMPATIBLE_TLS:Lcom/squareup/okhttp/ConnectionSpec;

.field public static final MODERN_TLS:Lcom/squareup/okhttp/ConnectionSpec;


# instance fields
.field private final cipherSuites:[Ljava/lang/String;

.field final supportsTlsExtensions:Z

.field final tls:Z

.field private final tlsVersions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 33
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/squareup/okhttp/CipherSuite;

    sget-object v1, Lcom/squareup/okhttp/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:Lcom/squareup/okhttp/CipherSuite;

    aput-object v1, v0, v4

    sget-object v1, Lcom/squareup/okhttp/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256:Lcom/squareup/okhttp/CipherSuite;

    aput-object v1, v0, v3

    sget-object v1, Lcom/squareup/okhttp/CipherSuite;->TLS_DHE_RSA_WITH_AES_128_GCM_SHA256:Lcom/squareup/okhttp/CipherSuite;

    aput-object v1, v0, v5

    sget-object v1, Lcom/squareup/okhttp/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    aput-object v1, v0, v6

    const/4 v1, 0x4

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_DHE_RSA_WITH_AES_128_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_DHE_DSS_WITH_AES_128_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_DHE_RSA_WITH_AES_256_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_RSA_WITH_AES_128_GCM_SHA256:Lcom/squareup/okhttp/CipherSuite;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_RSA_WITH_AES_128_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_RSA_WITH_AES_256_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_RSA_WITH_3DES_EDE_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    aput-object v2, v0, v1

    sput-object v0, Lcom/squareup/okhttp/ConnectionSpec;->APPROVED_CIPHER_SUITES:[Lcom/squareup/okhttp/CipherSuite;

    .line 55
    new-instance v0, Lcom/squareup/okhttp/ConnectionSpec$Builder;

    invoke-direct {v0, v3}, Lcom/squareup/okhttp/ConnectionSpec$Builder;-><init>(Z)V

    sget-object v1, Lcom/squareup/okhttp/ConnectionSpec;->APPROVED_CIPHER_SUITES:[Lcom/squareup/okhttp/CipherSuite;

    .line 56
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/ConnectionSpec$Builder;->cipherSuites([Lcom/squareup/okhttp/CipherSuite;)Lcom/squareup/okhttp/ConnectionSpec$Builder;

    move-result-object v0

    new-array v1, v6, [Lcom/squareup/okhttp/TlsVersion;

    sget-object v2, Lcom/squareup/okhttp/TlsVersion;->TLS_1_2:Lcom/squareup/okhttp/TlsVersion;

    aput-object v2, v1, v4

    sget-object v2, Lcom/squareup/okhttp/TlsVersion;->TLS_1_1:Lcom/squareup/okhttp/TlsVersion;

    aput-object v2, v1, v3

    sget-object v2, Lcom/squareup/okhttp/TlsVersion;->TLS_1_0:Lcom/squareup/okhttp/TlsVersion;

    aput-object v2, v1, v5

    .line 57
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/ConnectionSpec$Builder;->tlsVersions([Lcom/squareup/okhttp/TlsVersion;)Lcom/squareup/okhttp/ConnectionSpec$Builder;

    move-result-object v0

    .line 58
    invoke-virtual {v0, v3}, Lcom/squareup/okhttp/ConnectionSpec$Builder;->supportsTlsExtensions(Z)Lcom/squareup/okhttp/ConnectionSpec$Builder;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/squareup/okhttp/ConnectionSpec$Builder;->build()Lcom/squareup/okhttp/ConnectionSpec;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/ConnectionSpec;->MODERN_TLS:Lcom/squareup/okhttp/ConnectionSpec;

    .line 62
    new-instance v0, Lcom/squareup/okhttp/ConnectionSpec$Builder;

    sget-object v1, Lcom/squareup/okhttp/ConnectionSpec;->MODERN_TLS:Lcom/squareup/okhttp/ConnectionSpec;

    invoke-direct {v0, v1}, Lcom/squareup/okhttp/ConnectionSpec$Builder;-><init>(Lcom/squareup/okhttp/ConnectionSpec;)V

    new-array v1, v3, [Lcom/squareup/okhttp/TlsVersion;

    sget-object v2, Lcom/squareup/okhttp/TlsVersion;->TLS_1_0:Lcom/squareup/okhttp/TlsVersion;

    aput-object v2, v1, v4

    .line 63
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/ConnectionSpec$Builder;->tlsVersions([Lcom/squareup/okhttp/TlsVersion;)Lcom/squareup/okhttp/ConnectionSpec$Builder;

    move-result-object v0

    .line 64
    invoke-virtual {v0, v3}, Lcom/squareup/okhttp/ConnectionSpec$Builder;->supportsTlsExtensions(Z)Lcom/squareup/okhttp/ConnectionSpec$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/squareup/okhttp/ConnectionSpec$Builder;->build()Lcom/squareup/okhttp/ConnectionSpec;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/ConnectionSpec;->COMPATIBLE_TLS:Lcom/squareup/okhttp/ConnectionSpec;

    .line 68
    new-instance v0, Lcom/squareup/okhttp/ConnectionSpec$Builder;

    invoke-direct {v0, v4}, Lcom/squareup/okhttp/ConnectionSpec$Builder;-><init>(Z)V

    invoke-virtual {v0}, Lcom/squareup/okhttp/ConnectionSpec$Builder;->build()Lcom/squareup/okhttp/ConnectionSpec;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/ConnectionSpec;->CLEARTEXT:Lcom/squareup/okhttp/ConnectionSpec;

    return-void
.end method

.method private constructor <init>(Lcom/squareup/okhttp/ConnectionSpec$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/squareup/okhttp/ConnectionSpec$Builder;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {p1}, Lcom/squareup/okhttp/ConnectionSpec$Builder;->access$000(Lcom/squareup/okhttp/ConnectionSpec$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/squareup/okhttp/ConnectionSpec;->tls:Z

    .line 85
    invoke-static {p1}, Lcom/squareup/okhttp/ConnectionSpec$Builder;->access$100(Lcom/squareup/okhttp/ConnectionSpec$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    .line 86
    invoke-static {p1}, Lcom/squareup/okhttp/ConnectionSpec$Builder;->access$200(Lcom/squareup/okhttp/ConnectionSpec$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    .line 87
    invoke-static {p1}, Lcom/squareup/okhttp/ConnectionSpec$Builder;->access$300(Lcom/squareup/okhttp/ConnectionSpec$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/squareup/okhttp/ConnectionSpec;->supportsTlsExtensions:Z

    .line 88
    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/ConnectionSpec$Builder;Lcom/squareup/okhttp/ConnectionSpec$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/squareup/okhttp/ConnectionSpec$Builder;
    .param p2, "x1"    # Lcom/squareup/okhttp/ConnectionSpec$1;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/ConnectionSpec;-><init>(Lcom/squareup/okhttp/ConnectionSpec$Builder;)V

    return-void
.end method

.method static synthetic access$400(Lcom/squareup/okhttp/ConnectionSpec;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/ConnectionSpec;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/squareup/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/squareup/okhttp/ConnectionSpec;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/ConnectionSpec;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/squareup/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    return-object v0
.end method

.method private static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    .line 224
    array-length v3, p0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p0, v2

    .line 225
    .local v0, "arrayValue":Ljava/lang/Object;, "TT;"
    invoke-static {p1, v0}, Lcom/squareup/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 226
    const/4 v1, 0x1

    .line 229
    .end local v0    # "arrayValue":Ljava/lang/Object;, "TT;"
    :cond_0
    return v1

    .line 224
    .restart local v0    # "arrayValue":Ljava/lang/Object;, "TT;"
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static nonEmptyIntersection([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p0, "a"    # [Ljava/lang/String;
    .param p1, "b"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 212
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v2, p0

    if-eqz v2, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    .line 220
    :cond_0
    :goto_0
    return v1

    .line 215
    :cond_1
    array-length v3, p0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v0, p0, v2

    .line 216
    .local v0, "toFind":Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/squareup/okhttp/ConnectionSpec;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 217
    const/4 v1, 0x1

    goto :goto_0

    .line 215
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private supportedSpec(Ljavax/net/ssl/SSLSocket;Z)Lcom/squareup/okhttp/ConnectionSpec;
    .locals 11
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "isFallback"    # Z

    .prologue
    const/4 v10, 0x0

    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, "cipherSuitesToEnable":[Ljava/lang/String;
    iget-object v8, p0, Lcom/squareup/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 141
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "cipherSuitesToSelectFrom":[Ljava/lang/String;
    const-class v8, Ljava/lang/String;

    iget-object v9, p0, Lcom/squareup/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    .line 143
    invoke-static {v8, v9, v1}, Lcom/squareup/okhttp/internal/Util;->intersect(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cipherSuitesToEnable":[Ljava/lang/String;
    check-cast v0, [Ljava/lang/String;

    .line 146
    .end local v1    # "cipherSuitesToSelectFrom":[Ljava/lang/String;
    .restart local v0    # "cipherSuitesToEnable":[Ljava/lang/String;
    :cond_0
    if-eqz p2, :cond_1

    .line 149
    const-string/jumbo v2, "TLS_FALLBACK_SCSV"

    .line 151
    .local v2, "fallbackScsv":Ljava/lang/String;
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const-string/jumbo v9, "TLS_FALLBACK_SCSV"

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 153
    .local v7, "socketSupportsFallbackScsv":Z
    if-eqz v7, :cond_1

    .line 155
    if-eqz v0, :cond_2

    move-object v4, v0

    .line 158
    .local v4, "oldEnabledCipherSuites":[Ljava/lang/String;
    :goto_0
    array-length v8, v4

    add-int/lit8 v8, v8, 0x1

    new-array v3, v8, [Ljava/lang/String;

    .line 159
    .local v3, "newEnabledCipherSuites":[Ljava/lang/String;
    array-length v8, v4

    invoke-static {v4, v10, v3, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    array-length v8, v3

    add-int/lit8 v8, v8, -0x1

    const-string/jumbo v9, "TLS_FALLBACK_SCSV"

    aput-object v9, v3, v8

    .line 162
    move-object v0, v3

    .line 166
    .end local v2    # "fallbackScsv":Ljava/lang/String;
    .end local v3    # "newEnabledCipherSuites":[Ljava/lang/String;
    .end local v4    # "oldEnabledCipherSuites":[Ljava/lang/String;
    .end local v7    # "socketSupportsFallbackScsv":Z
    :cond_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v6

    .line 167
    .local v6, "protocolsToSelectFrom":[Ljava/lang/String;
    const-class v8, Ljava/lang/String;

    iget-object v9, p0, Lcom/squareup/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-static {v8, v9, v6}, Lcom/squareup/okhttp/internal/Util;->intersect(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 168
    .local v5, "protocolsToEnable":[Ljava/lang/String;
    new-instance v8, Lcom/squareup/okhttp/ConnectionSpec$Builder;

    invoke-direct {v8, p0}, Lcom/squareup/okhttp/ConnectionSpec$Builder;-><init>(Lcom/squareup/okhttp/ConnectionSpec;)V

    .line 169
    invoke-virtual {v8, v0}, Lcom/squareup/okhttp/ConnectionSpec$Builder;->cipherSuites([Ljava/lang/String;)Lcom/squareup/okhttp/ConnectionSpec$Builder;

    move-result-object v8

    .line 170
    invoke-virtual {v8, v5}, Lcom/squareup/okhttp/ConnectionSpec$Builder;->tlsVersions([Ljava/lang/String;)Lcom/squareup/okhttp/ConnectionSpec$Builder;

    move-result-object v8

    .line 171
    invoke-virtual {v8}, Lcom/squareup/okhttp/ConnectionSpec$Builder;->build()Lcom/squareup/okhttp/ConnectionSpec;

    move-result-object v8

    return-object v8

    .line 157
    .end local v5    # "protocolsToEnable":[Ljava/lang/String;
    .end local v6    # "protocolsToSelectFrom":[Ljava/lang/String;
    .restart local v2    # "fallbackScsv":Ljava/lang/String;
    .restart local v7    # "socketSupportsFallbackScsv":Z
    :cond_2
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method


# virtual methods
.method apply(Ljavax/net/ssl/SSLSocket;Z)V
    .locals 3
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "isFallback"    # Z

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/ConnectionSpec;->supportedSpec(Ljavax/net/ssl/SSLSocket;Z)Lcom/squareup/okhttp/ConnectionSpec;

    move-result-object v1

    .line 125
    .local v1, "specToApply":Lcom/squareup/okhttp/ConnectionSpec;
    iget-object v2, v1, Lcom/squareup/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 127
    iget-object v0, v1, Lcom/squareup/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    .line 129
    .local v0, "cipherSuitesToEnable":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 132
    :cond_0
    return-void
.end method

.method public cipherSuites()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/CipherSuite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v2, p0, Lcom/squareup/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 100
    const/4 v2, 0x0

    .line 106
    :goto_0
    return-object v2

    .line 102
    :cond_0
    iget-object v2, p0, Lcom/squareup/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    array-length v2, v2

    new-array v1, v2, [Lcom/squareup/okhttp/CipherSuite;

    .line 103
    .local v1, "result":[Lcom/squareup/okhttp/CipherSuite;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/squareup/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 104
    iget-object v2, p0, Lcom/squareup/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/squareup/okhttp/CipherSuite;->forJavaName(Ljava/lang/String;)Lcom/squareup/okhttp/CipherSuite;

    move-result-object v2

    aput-object v2, v1, v0

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 106
    :cond_1
    invoke-static {v1}, Lcom/squareup/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 233
    instance-of v3, p1, Lcom/squareup/okhttp/ConnectionSpec;

    if-nez v3, :cond_1

    .line 245
    :cond_0
    :goto_0
    return v1

    .line 234
    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 236
    check-cast v0, Lcom/squareup/okhttp/ConnectionSpec;

    .line 237
    .local v0, "that":Lcom/squareup/okhttp/ConnectionSpec;
    iget-boolean v3, p0, Lcom/squareup/okhttp/ConnectionSpec;->tls:Z

    iget-boolean v4, v0, Lcom/squareup/okhttp/ConnectionSpec;->tls:Z

    if-ne v3, v4, :cond_0

    .line 239
    iget-boolean v3, p0, Lcom/squareup/okhttp/ConnectionSpec;->tls:Z

    if-eqz v3, :cond_3

    .line 240
    iget-object v3, p0, Lcom/squareup/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    iget-object v4, v0, Lcom/squareup/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 241
    iget-object v3, p0, Lcom/squareup/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    iget-object v4, v0, Lcom/squareup/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 242
    iget-boolean v3, p0, Lcom/squareup/okhttp/ConnectionSpec;->supportsTlsExtensions:Z

    iget-boolean v4, v0, Lcom/squareup/okhttp/ConnectionSpec;->supportsTlsExtensions:Z

    if-ne v3, v4, :cond_0

    :cond_3
    move v1, v2

    .line 245
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 249
    const/16 v0, 0x11

    .line 250
    .local v0, "result":I
    iget-boolean v1, p0, Lcom/squareup/okhttp/ConnectionSpec;->tls:Z

    if-eqz v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/squareup/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 252
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/squareup/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 253
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lcom/squareup/okhttp/ConnectionSpec;->supportsTlsExtensions:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    add-int v0, v2, v1

    .line 255
    :cond_0
    return v0

    .line 253
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isCompatible(Ljavax/net/ssl/SSLSocket;)Z
    .locals 5
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;

    .prologue
    const/4 v2, 0x0

    .line 186
    iget-boolean v4, p0, Lcom/squareup/okhttp/ConnectionSpec;->tls:Z

    if-nez v4, :cond_1

    .line 203
    :cond_0
    :goto_0
    return v2

    .line 190
    :cond_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "enabledProtocols":[Ljava/lang/String;
    iget-object v4, p0, Lcom/squareup/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/squareup/okhttp/ConnectionSpec;->nonEmptyIntersection([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    .line 192
    .local v3, "requiredProtocolsEnabled":Z
    if-eqz v3, :cond_0

    .line 197
    iget-object v4, p0, Lcom/squareup/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-nez v4, :cond_3

    .line 198
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_2

    const/4 v2, 0x1

    .local v2, "requiredCiphersEnabled":Z
    :cond_2
    goto :goto_0

    .line 200
    .end local v2    # "requiredCiphersEnabled":Z
    :cond_3
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "enabledCipherSuites":[Ljava/lang/String;
    iget-object v4, p0, Lcom/squareup/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/squareup/okhttp/ConnectionSpec;->nonEmptyIntersection([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    .restart local v2    # "requiredCiphersEnabled":Z
    goto :goto_0
.end method

.method public isTls()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/squareup/okhttp/ConnectionSpec;->tls:Z

    return v0
.end method

.method public supportsTlsExtensions()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/squareup/okhttp/ConnectionSpec;->supportsTlsExtensions:Z

    return v0
.end method

.method public tlsVersions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/TlsVersion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v2, p0, Lcom/squareup/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    array-length v2, v2

    new-array v1, v2, [Lcom/squareup/okhttp/TlsVersion;

    .line 111
    .local v1, "result":[Lcom/squareup/okhttp/TlsVersion;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/squareup/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 112
    iget-object v2, p0, Lcom/squareup/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/squareup/okhttp/TlsVersion;->forJavaName(Ljava/lang/String;)Lcom/squareup/okhttp/TlsVersion;

    move-result-object v2

    aput-object v2, v1, v0

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_0
    invoke-static {v1}, Lcom/squareup/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 259
    iget-boolean v2, p0, Lcom/squareup/okhttp/ConnectionSpec;->tls:Z

    if-eqz v2, :cond_1

    .line 260
    invoke-virtual {p0}, Lcom/squareup/okhttp/ConnectionSpec;->cipherSuites()Ljava/util/List;

    move-result-object v0

    .line 261
    .local v0, "cipherSuites":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/CipherSuite;>;"
    if-nez v0, :cond_0

    const-string/jumbo v1, "[use default]"

    .line 262
    .local v1, "cipherSuitesString":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ConnectionSpec(cipherSuites="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", tlsVersions="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 263
    invoke-virtual {p0}, Lcom/squareup/okhttp/ConnectionSpec;->tlsVersions()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", supportsTlsExtensions="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/squareup/okhttp/ConnectionSpec;->supportsTlsExtensions:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 267
    .end local v0    # "cipherSuites":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/CipherSuite;>;"
    .end local v1    # "cipherSuitesString":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 261
    .restart local v0    # "cipherSuites":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/CipherSuite;>;"
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 267
    .end local v0    # "cipherSuites":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/CipherSuite;>;"
    :cond_1
    const-string/jumbo v2, "ConnectionSpec()"

    goto :goto_1
.end method

.class public final Lcom/squareup/okhttp/CertificatePinner$Builder;
.super Ljava/lang/Object;
.source "CertificatePinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/CertificatePinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


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
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/CertificatePinner$Builder;->hostnameToPins:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/squareup/okhttp/CertificatePinner$Builder;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/CertificatePinner$Builder;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/squareup/okhttp/CertificatePinner$Builder;->hostnameToPins:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public varargs add(Ljava/lang/String;[Ljava/lang/String;)Lcom/squareup/okhttp/CertificatePinner$Builder;
    .locals 7
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "pins"    # [Ljava/lang/String;

    .prologue
    .line 246
    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "hostname == null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 248
    :cond_0
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 249
    .local v1, "hostPins":Ljava/util/Set;, "Ljava/util/Set<Lokio/ByteString;>;"
    iget-object v4, p0, Lcom/squareup/okhttp/CertificatePinner$Builder;->hostnameToPins:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v4, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 250
    .local v3, "previousPins":Ljava/util/Set;, "Ljava/util/Set<Lokio/ByteString;>;"
    if-eqz v3, :cond_1

    .line 251
    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 254
    :cond_1
    array-length v5, p2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_4

    aget-object v2, p2, v4

    .line 255
    .local v2, "pin":Ljava/lang/String;
    const-string/jumbo v6, "sha1/"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 256
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pins must start with \'sha1/\': "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 258
    :cond_2
    const-string/jumbo v6, "sha1/"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lokio/ByteString;->decodeBase64(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    .line 259
    .local v0, "decodedPin":Lokio/ByteString;
    if-nez v0, :cond_3

    .line 260
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pins must be base64: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 262
    :cond_3
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 254
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 265
    .end local v0    # "decodedPin":Lokio/ByteString;
    .end local v2    # "pin":Ljava/lang/String;
    :cond_4
    return-object p0
.end method

.method public build()Lcom/squareup/okhttp/CertificatePinner;
    .locals 2

    .prologue
    .line 269
    new-instance v0, Lcom/squareup/okhttp/CertificatePinner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/CertificatePinner;-><init>(Lcom/squareup/okhttp/CertificatePinner$Builder;Lcom/squareup/okhttp/CertificatePinner$1;)V

    return-object v0
.end method

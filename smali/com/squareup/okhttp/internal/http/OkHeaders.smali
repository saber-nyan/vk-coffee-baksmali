.class public final Lcom/squareup/okhttp/internal/http/OkHeaders;
.super Ljava/lang/Object;
.source "OkHeaders.java"


# static fields
.field private static final FIELD_NAME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final PREFIX:Ljava/lang/String;

.field public static final RECEIVED_MILLIS:Ljava/lang/String;

.field public static final SELECTED_PROTOCOL:Ljava/lang/String;

.field public static final SENT_MILLIS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lcom/squareup/okhttp/internal/http/OkHeaders$1;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/http/OkHeaders$1;-><init>()V

    sput-object v0, Lcom/squareup/okhttp/internal/http/OkHeaders;->FIELD_NAME_COMPARATOR:Ljava/util/Comparator;

    .line 40
    invoke-static {}, Lcom/squareup/okhttp/internal/Platform;->get()Lcom/squareup/okhttp/internal/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/Platform;->getPrefix()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/http/OkHeaders;->PREFIX:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/squareup/okhttp/internal/http/OkHeaders;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-Sent-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/http/OkHeaders;->SENT_MILLIS:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/squareup/okhttp/internal/http/OkHeaders;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-Received-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/http/OkHeaders;->RECEIVED_MILLIS:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/squareup/okhttp/internal/http/OkHeaders;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-Selected-Protocol"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/http/OkHeaders;->SELECTED_PROTOCOL:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method public static addCookies(Lcom/squareup/okhttp/Request$Builder;Ljava/util/Map;)V
    .locals 4
    .param p0, "builder"    # Lcom/squareup/okhttp/Request$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/okhttp/Request$Builder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "cookieHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 110
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 111
    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v2, "Cookie"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "Cookie2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/http/OkHeaders;->buildCookieHeader(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/squareup/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    goto :goto_0

    .line 116
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static buildCookieHeader(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 129
    :goto_0
    return-object v3

    .line 124
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 126
    if-lez v0, :cond_1

    const-string/jumbo v3, "; "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :cond_1
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 129
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static contentLength(Lcom/squareup/okhttp/Headers;)J
    .locals 2
    .param p0, "headers"    # Lcom/squareup/okhttp/Headers;

    .prologue
    .line 70
    const-string/jumbo v0, "Content-Length"

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/OkHeaders;->stringToLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static contentLength(Lcom/squareup/okhttp/Request;)J
    .locals 2
    .param p0, "request"    # Lcom/squareup/okhttp/Request;

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/squareup/okhttp/Request;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/OkHeaders;->contentLength(Lcom/squareup/okhttp/Headers;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static contentLength(Lcom/squareup/okhttp/Response;)J
    .locals 2
    .param p0, "response"    # Lcom/squareup/okhttp/Response;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/OkHeaders;->contentLength(Lcom/squareup/okhttp/Headers;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static hasVaryAll(Lcom/squareup/okhttp/Headers;)Z
    .locals 2
    .param p0, "responseHeaders"    # Lcom/squareup/okhttp/Headers;

    .prologue
    .line 157
    invoke-static {p0}, Lcom/squareup/okhttp/internal/http/OkHeaders;->varyFields(Lcom/squareup/okhttp/Headers;)Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "*"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static hasVaryAll(Lcom/squareup/okhttp/Response;)Z
    .locals 1
    .param p0, "response"    # Lcom/squareup/okhttp/Response;

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/OkHeaders;->hasVaryAll(Lcom/squareup/okhttp/Headers;)Z

    move-result v0

    return v0
.end method

.method static isEndToEnd(Ljava/lang/String;)Z
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 220
    const-string/jumbo v0, "Connection"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Keep-Alive"

    .line 221
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Proxy-Authenticate"

    .line 222
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Proxy-Authorization"

    .line 223
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "TE"

    .line 224
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Trailers"

    .line 225
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Transfer-Encoding"

    .line 226
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Upgrade"

    .line 227
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseChallenges(Lcom/squareup/okhttp/Headers;Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .param p0, "responseHeaders"    # Lcom/squareup/okhttp/Headers;
    .param p1, "challengeHeader"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/okhttp/Headers;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/Challenge;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/Challenge;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-virtual {p0}, Lcom/squareup/okhttp/Headers;->size()I

    move-result v11

    .local v11, "size":I
    :goto_0
    if-ge v6, v11, :cond_2

    .line 242
    invoke-virtual {p0, v6}, Lcom/squareup/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 241
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 245
    :cond_1
    invoke-virtual {p0, v6}, Lcom/squareup/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "value":Ljava/lang/String;
    const/4 v2, 0x0

    .line 247
    .local v2, "pos":I
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 248
    move v12, v2

    .line 249
    .local v12, "tokenStart":I
    const-string/jumbo v1, " "

    invoke-static {v0, v2, v1}, Lcom/squareup/okhttp/internal/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    .line 251
    invoke-virtual {v0, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 252
    .local v10, "scheme":Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/squareup/okhttp/internal/http/HeaderParser;->skipWhitespace(Ljava/lang/String;I)I

    move-result v2

    .line 258
    const/4 v1, 0x1

    const-string/jumbo v3, "realm=\""

    const/4 v4, 0x0

    const-string/jumbo v5, "realm=\""

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    const-string/jumbo v1, "realm=\""

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v2, v1

    .line 263
    move v8, v2

    .line 264
    .local v8, "realmStart":I
    const-string/jumbo v1, "\""

    invoke-static {v0, v2, v1}, Lcom/squareup/okhttp/internal/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    .line 265
    invoke-virtual {v0, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 266
    .local v7, "realm":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 267
    const-string/jumbo v1, ","

    invoke-static {v0, v2, v1}, Lcom/squareup/okhttp/internal/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    .line 268
    add-int/lit8 v2, v2, 0x1

    .line 269
    invoke-static {v0, v2}, Lcom/squareup/okhttp/internal/http/HeaderParser;->skipWhitespace(Ljava/lang/String;I)I

    move-result v2

    .line 270
    new-instance v1, Lcom/squareup/okhttp/Challenge;

    invoke-direct {v1, v10, v7}, Lcom/squareup/okhttp/Challenge;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 273
    .end local v0    # "value":Ljava/lang/String;
    .end local v2    # "pos":I
    .end local v7    # "realm":Ljava/lang/String;
    .end local v8    # "realmStart":I
    .end local v10    # "scheme":Ljava/lang/String;
    .end local v12    # "tokenStart":I
    :cond_2
    return-object v9
.end method

.method public static processAuthHeader(Lcom/squareup/okhttp/Authenticator;Lcom/squareup/okhttp/Response;Ljava/net/Proxy;)Lcom/squareup/okhttp/Request;
    .locals 2
    .param p0, "authenticator"    # Lcom/squareup/okhttp/Authenticator;
    .param p1, "response"    # Lcom/squareup/okhttp/Response;
    .param p2, "proxy"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->code()I

    move-result v0

    const/16 v1, 0x197

    if-ne v0, v1, :cond_0

    .line 284
    invoke-interface {p0, p2, p1}, Lcom/squareup/okhttp/Authenticator;->authenticateProxy(Ljava/net/Proxy;Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Request;

    move-result-object v0

    .line 285
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0, p2, p1}, Lcom/squareup/okhttp/Authenticator;->authenticate(Ljava/net/Proxy;Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Request;

    move-result-object v0

    goto :goto_0
.end method

.method private static stringToLong(Ljava/lang/String;)J
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, -0x1

    .line 74
    if-nez p0, :cond_0

    .line 78
    :goto_0
    return-wide v2

    .line 76
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static toMultimap(Lcom/squareup/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .param p0, "headers"    # Lcom/squareup/okhttp/Headers;
    .param p1, "valueForNullKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/okhttp/Headers;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v4, Ljava/util/TreeMap;

    sget-object v7, Lcom/squareup/okhttp/internal/http/OkHeaders;->FIELD_NAME_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v4, v7}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 90
    .local v4, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Lcom/squareup/okhttp/Headers;->size()I

    move-result v5

    .local v5, "size":I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 91
    invoke-virtual {p0, v2}, Lcom/squareup/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "fieldName":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/squareup/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v6

    .line 94
    .local v6, "value":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v0, "allValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 96
    .local v3, "otherValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 97
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 99
    :cond_0
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v4, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    .end local v0    # "allValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "fieldName":Ljava/lang/String;
    .end local v3    # "otherValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "value":Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_2

    .line 103
    const/4 v7, 0x0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_2
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    return-object v7
.end method

.method public static varyFields(Lcom/squareup/okhttp/Headers;)Ljava/util/Set;
    .locals 9
    .param p0, "responseHeaders"    # Lcom/squareup/okhttp/Headers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/okhttp/Headers;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    .line 170
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Lcom/squareup/okhttp/Headers;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 171
    const-string/jumbo v5, "Vary"

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 170
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_1
    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "value":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 175
    new-instance v1, Ljava/util/TreeSet;

    .end local v1    # "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v5, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 177
    .restart local v1    # "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    const-string/jumbo v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v7, :cond_0

    aget-object v4, v6, v5

    .line 178
    .local v4, "varyField":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 177
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 181
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "varyField":Ljava/lang/String;
    :cond_3
    return-object v1
.end method

.method private static varyFields(Lcom/squareup/okhttp/Response;)Ljava/util/Set;
    .locals 1
    .param p0, "response"    # Lcom/squareup/okhttp/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/okhttp/Response;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/OkHeaders;->varyFields(Lcom/squareup/okhttp/Headers;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static varyHeaders(Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/Headers;)Lcom/squareup/okhttp/Headers;
    .locals 6
    .param p0, "requestHeaders"    # Lcom/squareup/okhttp/Headers;
    .param p1, "responseHeaders"    # Lcom/squareup/okhttp/Headers;

    .prologue
    .line 202
    invoke-static {p1}, Lcom/squareup/okhttp/internal/http/OkHeaders;->varyFields(Lcom/squareup/okhttp/Headers;)Ljava/util/Set;

    move-result-object v4

    .line 203
    .local v4, "varyFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Lcom/squareup/okhttp/Headers$Builder;

    invoke-direct {v5}, Lcom/squareup/okhttp/Headers$Builder;-><init>()V

    invoke-virtual {v5}, Lcom/squareup/okhttp/Headers$Builder;->build()Lcom/squareup/okhttp/Headers;

    move-result-object v5

    .line 212
    :goto_0
    return-object v5

    .line 205
    :cond_0
    new-instance v2, Lcom/squareup/okhttp/Headers$Builder;

    invoke-direct {v2}, Lcom/squareup/okhttp/Headers$Builder;-><init>()V

    .line 206
    .local v2, "result":Lcom/squareup/okhttp/Headers$Builder;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lcom/squareup/okhttp/Headers;->size()I

    move-result v3

    .local v3, "size":I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 207
    invoke-virtual {p0, v1}, Lcom/squareup/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "fieldName":Ljava/lang/String;
    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 209
    invoke-virtual {p0, v1}, Lcom/squareup/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lcom/squareup/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Headers$Builder;

    .line 206
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 212
    .end local v0    # "fieldName":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Lcom/squareup/okhttp/Headers$Builder;->build()Lcom/squareup/okhttp/Headers;

    move-result-object v5

    goto :goto_0
.end method

.method public static varyHeaders(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Headers;
    .locals 3
    .param p0, "response"    # Lcom/squareup/okhttp/Response;

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->networkResponse()Lcom/squareup/okhttp/Response;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/Response;->request()Lcom/squareup/okhttp/Request;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/Request;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v0

    .line 193
    .local v0, "requestHeaders":Lcom/squareup/okhttp/Headers;
    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v1

    .line 194
    .local v1, "responseHeaders":Lcom/squareup/okhttp/Headers;
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/OkHeaders;->varyHeaders(Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/Headers;)Lcom/squareup/okhttp/Headers;

    move-result-object v2

    return-object v2
.end method

.method public static varyMatches(Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/Request;)Z
    .locals 4
    .param p0, "cachedResponse"    # Lcom/squareup/okhttp/Response;
    .param p1, "cachedRequest"    # Lcom/squareup/okhttp/Headers;
    .param p2, "newRequest"    # Lcom/squareup/okhttp/Request;

    .prologue
    .line 138
    invoke-static {p0}, Lcom/squareup/okhttp/internal/http/OkHeaders;->varyFields(Lcom/squareup/okhttp/Response;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 139
    .local v0, "field":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2, v0}, Lcom/squareup/okhttp/Request;->headers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 141
    .end local v0    # "field":Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

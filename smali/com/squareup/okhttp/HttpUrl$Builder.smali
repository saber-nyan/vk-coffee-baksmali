.class public final Lcom/squareup/okhttp/HttpUrl$Builder;
.super Ljava/lang/Object;
.source "HttpUrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/HttpUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field encodedFragment:Ljava/lang/String;

.field encodedPassword:Ljava/lang/String;

.field final encodedPathSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field encodedQueryNamesAndValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field encodedUsername:Ljava/lang/String;

.field host:Ljava/lang/String;

.field port:I

.field scheme:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 614
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 615
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 617
    const/4 v0, -0x1

    iput v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->port:I

    .line 618
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    .line 623
    iget-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 624
    return-void
.end method

.method private static canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;
    .locals 7
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .prologue
    const/4 v4, 0x0

    .line 1186
    invoke-static {p0, p1, p2}, Lcom/squareup/okhttp/HttpUrl;->percentDecode(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    .line 1189
    .local v3, "percentDecoded":Ljava/lang/String;
    const-string/jumbo v5, "["

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1190
    const/4 v5, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v3, v5, v6}, Lcom/squareup/okhttp/HttpUrl$Builder;->decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v1

    .line 1191
    .local v1, "inetAddress":Ljava/net/InetAddress;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 1204
    .end local v1    # "inetAddress":Ljava/net/InetAddress;
    :cond_0
    :goto_0
    return-object v4

    .line 1195
    :cond_1
    invoke-static {v3}, Lcom/squareup/okhttp/HttpUrl$Builder;->domainToAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1196
    .local v0, "idnDecoded":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1199
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1200
    .local v2, "length":I
    const/4 v5, 0x0

    const-string/jumbo v6, "\u0000\t\n\r #%/:?@[\\]"

    invoke-static {v0, v5, v2, v6}, Lcom/squareup/okhttp/HttpUrl;->access$200(Ljava/lang/String;IILjava/lang/String;)I

    move-result v5

    if-ne v5, v2, :cond_0

    move-object v4, v0

    .line 1204
    goto :goto_0
.end method

.method private static decodeIpv4Suffix(Ljava/lang/String;II[BI)Z
    .locals 10
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .param p3, "address"    # [B
    .param p4, "addressOffset"    # I

    .prologue
    const/4 v7, 0x0

    .line 1281
    move v0, p4

    .line 1283
    .local v0, "b":I
    move v5, p1

    .local v5, "i":I
    move v1, v0

    .end local v0    # "b":I
    .local v1, "b":I
    :goto_0
    if-ge v5, p2, :cond_6

    .line 1284
    array-length v8, p3

    if-ne v1, v8, :cond_1

    .line 1310
    :cond_0
    :goto_1
    return v7

    .line 1287
    :cond_1
    if-eq v1, p4, :cond_2

    .line 1288
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2e

    if-ne v8, v9, :cond_0

    .line 1289
    add-int/lit8 v5, v5, 0x1

    .line 1293
    :cond_2
    const/4 v6, 0x0

    .line 1294
    .local v6, "value":I
    move v4, v5

    .line 1295
    .local v4, "groupOffset":I
    :goto_2
    if-ge v5, p2, :cond_3

    .line 1296
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1297
    .local v2, "c":C
    const/16 v8, 0x30

    if-lt v2, v8, :cond_3

    const/16 v8, 0x39

    if-le v2, v8, :cond_4

    .line 1302
    .end local v2    # "c":C
    :cond_3
    sub-int v3, v5, v4

    .line 1303
    .local v3, "groupLength":I
    if-eqz v3, :cond_0

    .line 1306
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "b":I
    .restart local v0    # "b":I
    int-to-byte v8, v6

    aput-byte v8, p3, v1

    move v1, v0

    .line 1307
    .end local v0    # "b":I
    .restart local v1    # "b":I
    goto :goto_0

    .line 1298
    .end local v3    # "groupLength":I
    .restart local v2    # "c":C
    :cond_4
    if-nez v6, :cond_5

    if-ne v4, v5, :cond_0

    .line 1299
    :cond_5
    mul-int/lit8 v8, v6, 0xa

    add-int/2addr v8, v2

    add-int/lit8 v6, v8, -0x30

    .line 1300
    const/16 v8, 0xff

    if-gt v6, v8, :cond_0

    .line 1295
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1309
    .end local v2    # "c":C
    .end local v4    # "groupOffset":I
    .end local v6    # "value":I
    :cond_6
    add-int/lit8 v8, p4, 0x4

    if-ne v1, v8, :cond_0

    .line 1310
    const/4 v7, 0x1

    goto :goto_1
.end method

.method private static decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;
    .locals 15
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .prologue
    .line 1209
    const/16 v12, 0x10

    new-array v1, v12, [B

    .line 1210
    .local v1, "address":[B
    const/4 v2, 0x0

    .line 1211
    .local v2, "b":I
    const/4 v5, -0x1

    .line 1212
    .local v5, "compress":I
    const/4 v8, -0x1

    .line 1214
    .local v8, "groupOffset":I
    move/from16 v10, p1

    .local v10, "i":I
    :goto_0
    move/from16 v0, p2

    if-ge v10, v0, :cond_2

    .line 1215
    array-length v12, v1

    if-ne v2, v12, :cond_0

    const/4 v12, 0x0

    .line 1272
    :goto_1
    return-object v12

    .line 1218
    :cond_0
    add-int/lit8 v12, v10, 0x2

    move/from16 v0, p2

    if-gt v12, v0, :cond_3

    const-string/jumbo v12, "::"

    const/4 v13, 0x0

    const/4 v14, 0x2

    invoke-virtual {p0, v10, v12, v13, v14}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1220
    const/4 v12, -0x1

    if-eq v5, v12, :cond_1

    const/4 v12, 0x0

    goto :goto_1

    .line 1221
    :cond_1
    add-int/lit8 v10, v10, 0x2

    .line 1222
    add-int/lit8 v2, v2, 0x2

    .line 1223
    move v5, v2

    .line 1224
    move/from16 v0, p2

    if-ne v10, v0, :cond_4

    .line 1265
    :cond_2
    :goto_2
    array-length v12, v1

    if-eq v2, v12, :cond_d

    .line 1266
    const/4 v12, -0x1

    if-ne v5, v12, :cond_c

    const/4 v12, 0x0

    goto :goto_1

    .line 1225
    :cond_3
    if-eqz v2, :cond_4

    .line 1227
    const-string/jumbo v12, ":"

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {p0, v10, v12, v13, v14}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1228
    add-int/lit8 v10, v10, 0x1

    .line 1240
    :cond_4
    const/4 v11, 0x0

    .line 1241
    .local v11, "value":I
    move v8, v10

    .line 1242
    :goto_3
    move/from16 v0, p2

    if-ge v10, v0, :cond_5

    .line 1243
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1244
    .local v4, "c":C
    invoke-static {v4}, Lcom/squareup/okhttp/HttpUrl;->decodeHexDigit(C)I

    move-result v9

    .line 1245
    .local v9, "hexDigit":I
    const/4 v12, -0x1

    if-ne v9, v12, :cond_a

    .line 1248
    .end local v4    # "c":C
    .end local v9    # "hexDigit":I
    :cond_5
    sub-int v7, v10, v8

    .line 1249
    .local v7, "groupLength":I
    if-eqz v7, :cond_6

    const/4 v12, 0x4

    if-le v7, v12, :cond_b

    :cond_6
    const/4 v12, 0x0

    goto :goto_1

    .line 1229
    .end local v7    # "groupLength":I
    .end local v11    # "value":I
    :cond_7
    const-string/jumbo v12, "."

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {p0, v10, v12, v13, v14}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 1231
    add-int/lit8 v12, v2, -0x2

    move/from16 v0, p2

    invoke-static {p0, v8, v0, v1, v12}, Lcom/squareup/okhttp/HttpUrl$Builder;->decodeIpv4Suffix(Ljava/lang/String;II[BI)Z

    move-result v12

    if-nez v12, :cond_8

    const/4 v12, 0x0

    goto :goto_1

    .line 1232
    :cond_8
    add-int/lit8 v2, v2, 0x2

    .line 1233
    goto :goto_2

    .line 1235
    :cond_9
    const/4 v12, 0x0

    goto :goto_1

    .line 1246
    .restart local v4    # "c":C
    .restart local v9    # "hexDigit":I
    .restart local v11    # "value":I
    :cond_a
    shl-int/lit8 v12, v11, 0x4

    add-int v11, v12, v9

    .line 1242
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1252
    .end local v4    # "c":C
    .end local v9    # "hexDigit":I
    .restart local v7    # "groupLength":I
    :cond_b
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "b":I
    .local v3, "b":I
    ushr-int/lit8 v12, v11, 0x8

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v1, v2

    .line 1253
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "b":I
    .restart local v2    # "b":I
    and-int/lit16 v12, v11, 0xff

    int-to-byte v12, v12

    aput-byte v12, v1, v3

    goto/16 :goto_0

    .line 1267
    .end local v7    # "groupLength":I
    .end local v11    # "value":I
    :cond_c
    array-length v12, v1

    sub-int v13, v2, v5

    sub-int/2addr v12, v13

    sub-int v13, v2, v5

    invoke-static {v1, v5, v1, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1268
    array-length v12, v1

    sub-int/2addr v12, v2

    add-int/2addr v12, v5

    const/4 v13, 0x0

    invoke-static {v1, v5, v12, v13}, Ljava/util/Arrays;->fill([BIIB)V

    .line 1272
    :cond_d
    :try_start_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    goto/16 :goto_1

    .line 1273
    :catch_0
    move-exception v6

    .line 1274
    .local v6, "e":Ljava/net/UnknownHostException;
    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12
.end method

.method private static domainToAscii(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1315
    :try_start_0
    invoke-static {p0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 1316
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 1320
    .end local v1    # "result":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 1319
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    move-object v1, v2

    .line 1320
    goto :goto_0
.end method

.method private isDot(Ljava/lang/String;)Z
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 1052
    const-string/jumbo v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "%2e"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDotDot(Ljava/lang/String;)Z
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 1056
    const-string/jumbo v0, ".."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "%2e."

    .line 1057
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ".%2e"

    .line 1058
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "%2e%2e"

    .line 1059
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parsePort(Ljava/lang/String;II)I
    .locals 10
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .prologue
    const/4 v9, -0x1

    .line 1327
    :try_start_0
    const-string/jumbo v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/squareup/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v8

    .line 1328
    .local v8, "portString":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 1329
    .local v7, "i":I
    if-lez v7, :cond_0

    const v0, 0xffff

    if-gt v7, v0, :cond_0

    .line 1332
    .end local v7    # "i":I
    .end local v8    # "portString":Ljava/lang/String;
    :goto_0
    return v7

    .restart local v7    # "i":I
    .restart local v8    # "portString":Ljava/lang/String;
    :cond_0
    move v7, v9

    .line 1330
    goto :goto_0

    .line 1331
    .end local v7    # "i":I
    .end local v8    # "portString":Ljava/lang/String;
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/NumberFormatException;
    move v7, v9

    .line 1332
    goto :goto_0
.end method

.method private pop()V
    .locals 4

    .prologue
    .line 1073
    iget-object v1, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v2, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1076
    .local v0, "removed":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1077
    iget-object v1, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v2, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1081
    :goto_0
    return-void

    .line 1079
    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string/jumbo v2, ""

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static portColonOffset(Ljava/lang/String;II)I
    .locals 3
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .prologue
    .line 1169
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 1170
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1169
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1172
    :cond_1
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    if-ge v0, p2, :cond_0

    .line 1173
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_2
    move v0, p2

    .line 1180
    .end local v0    # "i":I
    :sswitch_1
    return v0

    .line 1170
    :sswitch_data_0
    .sparse-switch
        0x3a -> :sswitch_1
        0x5b -> :sswitch_0
    .end sparse-switch
.end method

.method private push(Ljava/lang/String;IIZZ)V
    .locals 7
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I
    .param p4, "addTrailingSlash"    # Z
    .param p5, "alreadyEncoded"    # Z

    .prologue
    .line 1032
    const-string/jumbo v3, " \"<>^`{}|/\\?#"

    const/4 v5, 0x0

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v4, p5

    invoke-static/range {v0 .. v5}, Lcom/squareup/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v6

    .line 1034
    .local v6, "segment":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/squareup/okhttp/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1049
    :cond_0
    :goto_0
    return-void

    .line 1037
    :cond_1
    invoke-direct {p0, v6}, Lcom/squareup/okhttp/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1038
    invoke-direct {p0}, Lcom/squareup/okhttp/HttpUrl$Builder;->pop()V

    goto :goto_0

    .line 1041
    :cond_2
    iget-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v1, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1042
    iget-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v1, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1046
    :goto_1
    if-eqz p4, :cond_0

    .line 1047
    iget-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1044
    :cond_3
    iget-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private removeAllCanonicalQueryParameters(Ljava/lang/String;)V
    .locals 3
    .param p1, "canonicalName"    # Ljava/lang/String;

    .prologue
    .line 806
    iget-object v1, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 807
    iget-object v1, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 808
    iget-object v1, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 809
    iget-object v1, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 810
    iget-object v1, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 811
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 816
    :cond_0
    return-void

    .line 806
    :cond_1
    add-int/lit8 v0, v0, -0x2

    goto :goto_0
.end method

.method private resolvePath(Ljava/lang/String;II)V
    .locals 8
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    .prologue
    const/4 v5, 0x1

    .line 1004
    if-ne p2, p3, :cond_1

    .line 1027
    :cond_0
    return-void

    .line 1008
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1009
    .local v6, "c":C
    const/16 v0, 0x2f

    if-eq v6, v0, :cond_2

    const/16 v0, 0x5c

    if-ne v6, v0, :cond_4

    .line 1011
    :cond_2
    iget-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1012
    iget-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1013
    add-int/lit8 p2, p2, 0x1

    .line 1020
    :goto_0
    move v2, p2

    .local v2, "i":I
    :cond_3
    :goto_1
    if-ge v2, p3, :cond_0

    .line 1021
    const-string/jumbo v0, "/\\"

    invoke-static {p1, v2, p3, v0}, Lcom/squareup/okhttp/HttpUrl;->access$200(Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    .line 1022
    .local v3, "pathSegmentDelimiterOffset":I
    if-ge v3, p3, :cond_5

    move v4, v5

    .local v4, "segmentHasTrailingSlash":Z
    :goto_2
    move-object v0, p0

    move-object v1, p1

    .line 1023
    invoke-direct/range {v0 .. v5}, Lcom/squareup/okhttp/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 1024
    move v2, v3

    .line 1025
    if-eqz v4, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1016
    .end local v2    # "i":I
    .end local v3    # "pathSegmentDelimiterOffset":I
    .end local v4    # "segmentHasTrailingSlash":Z
    :cond_4
    iget-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v1, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-string/jumbo v7, ""

    invoke-interface {v0, v1, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1022
    .restart local v2    # "i":I
    .restart local v3    # "pathSegmentDelimiterOffset":I
    :cond_5
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private static schemeDelimiterOffset(Ljava/lang/String;II)I
    .locals 10
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .prologue
    const/16 v9, 0x7a

    const/16 v8, 0x61

    const/16 v7, 0x5a

    const/16 v6, 0x41

    const/4 v3, -0x1

    .line 1128
    sub-int v4, p2, p1

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    move v2, v3

    .line 1149
    :cond_0
    :goto_0
    return v2

    .line 1130
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1131
    .local v1, "c0":C
    if-lt v1, v8, :cond_2

    if-le v1, v9, :cond_4

    :cond_2
    if-lt v1, v6, :cond_3

    if-le v1, v7, :cond_4

    :cond_3
    move v2, v3

    goto :goto_0

    .line 1133
    :cond_4
    add-int/lit8 v2, p1, 0x1

    .local v2, "i":I
    :goto_1
    if-ge v2, p2, :cond_9

    .line 1134
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1136
    .local v0, "c":C
    if-lt v0, v8, :cond_5

    if-le v0, v9, :cond_7

    :cond_5
    if-lt v0, v6, :cond_6

    if-le v0, v7, :cond_7

    :cond_6
    const/16 v4, 0x2b

    if-eq v0, v4, :cond_7

    const/16 v4, 0x2d

    if-eq v0, v4, :cond_7

    const/16 v4, 0x2e

    if-ne v0, v4, :cond_8

    .line 1133
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1142
    :cond_8
    const/16 v4, 0x3a

    if-eq v0, v4, :cond_0

    move v2, v3

    .line 1145
    goto :goto_0

    .end local v0    # "c":C
    :cond_9
    move v2, v3

    .line 1149
    goto :goto_0
.end method

.method private skipLeadingAsciiWhitespace(Ljava/lang/String;II)I
    .locals 2
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    .prologue
    .line 1088
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 1089
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1100
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 1088
    .restart local v0    # "i":I
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p3

    .line 1100
    goto :goto_1

    .line 1089
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private skipTrailingAsciiWhitespace(Ljava/lang/String;II)I
    .locals 2
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    .prologue
    .line 1108
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 1109
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1117
    add-int/lit8 p2, v0, 0x1

    .line 1120
    .end local p2    # "pos":I
    :cond_0
    return p2

    .line 1108
    .restart local p2    # "pos":I
    :sswitch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1109
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private static slashCount(Ljava/lang/String;II)I
    .locals 3
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .prologue
    .line 1154
    const/4 v1, 0x0

    .line 1155
    .local v1, "slashCount":I
    :goto_0
    if-ge p1, p2, :cond_1

    .line 1156
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1157
    .local v0, "c":C
    const/16 v2, 0x5c

    if-eq v0, v2, :cond_0

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_1

    .line 1158
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 1159
    add-int/lit8 p1, p1, 0x1

    .line 1163
    goto :goto_0

    .line 1164
    .end local v0    # "c":C
    :cond_1
    return v1
.end method


# virtual methods
.method public addEncodedPathSegment(Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;
    .locals 6
    .param p1, "encodedPathSegment"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 692
    if-nez p1, :cond_0

    .line 693
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "encodedPathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 695
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/squareup/okhttp/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 696
    return-object p0
.end method

.method public addEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;
    .locals 3
    .param p1, "encodedName"    # Ljava/lang/String;
    .param p2, "encodedValue"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 767
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "encodedName == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 768
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 769
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    const-string/jumbo v1, " \"\'<>#&="

    .line 770
    invoke-static {p1, v1, v2, v2}, Lcom/squareup/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 769
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 771
    iget-object v1, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz p2, :cond_2

    const-string/jumbo v0, " \"\'<>#&="

    .line 772
    invoke-static {p2, v0, v2, v2}, Lcom/squareup/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 771
    :goto_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 774
    return-object p0

    .line 772
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addPathSegment(Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;
    .locals 6
    .param p1, "pathSegment"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 686
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "pathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 687
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/squareup/okhttp/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 688
    return-object p0
.end method

.method public addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 756
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 757
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 758
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    const-string/jumbo v1, " \"\'<>#&="

    invoke-static {p1, v1, v2, v3}, Lcom/squareup/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 759
    iget-object v1, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz p2, :cond_2

    const-string/jumbo v0, " \"\'<>#&="

    .line 760
    invoke-static {p2, v0, v2, v3}, Lcom/squareup/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 759
    :goto_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 762
    return-object p0

    .line 760
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public build()Lcom/squareup/okhttp/HttpUrl;
    .locals 2

    .prologue
    .line 831
    iget-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 832
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 833
    :cond_1
    new-instance v0, Lcom/squareup/okhttp/HttpUrl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/HttpUrl;-><init>(Lcom/squareup/okhttp/HttpUrl$Builder;Lcom/squareup/okhttp/HttpUrl$1;)V

    return-object v0
.end method

.method effectivePort()I
    .locals 2

    .prologue
    .line 682
    iget v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->port:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->port:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-static {v0}, Lcom/squareup/okhttp/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public encodedFragment(Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;
    .locals 3
    .param p1, "encodedFragment"    # Ljava/lang/String;

    .prologue
    .line 825
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "encodedFragment == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 826
    :cond_0
    const-string/jumbo v0, ""

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/squareup/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 827
    return-object p0
.end method

.method public encodedPassword(Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;
    .locals 3
    .param p1, "encodedPassword"    # Ljava/lang/String;

    .prologue
    .line 658
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "encodedPassword == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 659
    :cond_0
    const-string/jumbo v0, " \"\':;<=>@[]\\^`{}|/\\?#"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/squareup/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 660
    return-object p0
.end method

.method public encodedPath(Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;
    .locals 3
    .param p1, "encodedPath"    # Ljava/lang/String;

    .prologue
    .line 732
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "encodedPath == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 733
    :cond_0
    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 734
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected encodedPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 736
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/squareup/okhttp/HttpUrl$Builder;->resolvePath(Ljava/lang/String;II)V

    .line 737
    return-object p0
.end method

.method public encodedQuery(Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;
    .locals 2
    .param p1, "encodedQuery"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 748
    if-eqz p1, :cond_0

    const-string/jumbo v0, " \"\'<>#"

    .line 749
    invoke-static {p1, v0, v1, v1}, Lcom/squareup/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/HttpUrl;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 751
    return-object p0

    .line 749
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public encodedUsername(Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;
    .locals 3
    .param p1, "encodedUsername"    # Ljava/lang/String;

    .prologue
    .line 646
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "encodedUsername == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 647
    :cond_0
    const-string/jumbo v0, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/squareup/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 648
    return-object p0
.end method

.method public fragment(Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;
    .locals 2
    .param p1, "fragment"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 819
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "fragment == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 820
    :cond_0
    const-string/jumbo v0, ""

    invoke-static {p1, v0, v1, v1}, Lcom/squareup/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 821
    return-object p0
.end method

.method public host(Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;
    .locals 4
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 668
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "host == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 669
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/squareup/okhttp/HttpUrl$Builder;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 670
    .local v0, "encoded":Ljava/lang/String;
    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 671
    :cond_1
    iput-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 672
    return-object p0
.end method

.method parse(Lcom/squareup/okhttp/HttpUrl;Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl;
    .locals 26
    .param p1, "base"    # Lcom/squareup/okhttp/HttpUrl;
    .param p2, "input"    # Ljava/lang/String;

    .prologue
    .line 881
    const/4 v3, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v3, v4}, Lcom/squareup/okhttp/HttpUrl$Builder;->skipLeadingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v5

    .line 882
    .local v5, "pos":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v5, v3}, Lcom/squareup/okhttp/HttpUrl$Builder;->skipTrailingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v21

    .line 885
    .local v21, "limit":I
    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-static {v0, v5, v1}, Lcom/squareup/okhttp/HttpUrl$Builder;->schemeDelimiterOffset(Ljava/lang/String;II)I

    move-result v24

    .line 886
    .local v24, "schemeDelimiterOffset":I
    const/4 v3, -0x1

    move/from16 v0, v24

    if-eq v0, v3, :cond_3

    .line 887
    const/4 v4, 0x1

    const-string/jumbo v6, "https:"

    const/4 v7, 0x0

    const/4 v8, 0x6

    move-object/from16 v3, p2

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 888
    const-string/jumbo v3, "https"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/squareup/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 889
    const-string/jumbo v3, "https:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v5, v3

    .line 903
    :goto_0
    const/16 v20, 0x0

    .line 904
    .local v20, "hasUsername":Z
    const/16 v19, 0x0

    .line 905
    .local v19, "hasPassword":Z
    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-static {v0, v5, v1}, Lcom/squareup/okhttp/HttpUrl$Builder;->slashCount(Ljava/lang/String;II)I

    move-result v25

    .line 906
    .local v25, "slashCount":I
    const/4 v3, 0x2

    move/from16 v0, v25

    if-ge v0, v3, :cond_0

    if-eqz p1, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/HttpUrl;->access$100(Lcom/squareup/okhttp/HttpUrl;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/squareup/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 916
    :cond_0
    add-int v5, v5, v25

    .line 919
    :goto_1
    const-string/jumbo v3, "@/\\?#"

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-static {v0, v5, v1, v3}, Lcom/squareup/okhttp/HttpUrl;->access$200(Ljava/lang/String;IILjava/lang/String;)I

    move-result v18

    .line 920
    .local v18, "componentDelimiterOffset":I
    move/from16 v0, v18

    move/from16 v1, v21

    if-eq v0, v1, :cond_5

    .line 921
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v16

    .line 923
    .local v16, "c":I
    :goto_2
    sparse-switch v16, :sswitch_data_0

    goto :goto_1

    .line 953
    :sswitch_0
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-static {v0, v5, v1}, Lcom/squareup/okhttp/HttpUrl$Builder;->portColonOffset(Ljava/lang/String;II)I

    move-result v23

    .line 954
    .local v23, "portColonOffset":I
    add-int/lit8 v3, v23, 0x1

    move/from16 v0, v18

    if-ge v3, v0, :cond_9

    .line 955
    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-static {v0, v5, v1}, Lcom/squareup/okhttp/HttpUrl$Builder;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/squareup/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 956
    add-int/lit8 v3, v23, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-static {v0, v3, v1}, Lcom/squareup/okhttp/HttpUrl$Builder;->parsePort(Ljava/lang/String;II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/squareup/okhttp/HttpUrl$Builder;->port:I

    .line 957
    move-object/from16 v0, p0

    iget v3, v0, Lcom/squareup/okhttp/HttpUrl$Builder;->port:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_a

    const/4 v3, 0x0

    .line 999
    .end local v16    # "c":I
    .end local v18    # "componentDelimiterOffset":I
    .end local v19    # "hasPassword":Z
    .end local v20    # "hasUsername":Z
    .end local v23    # "portColonOffset":I
    .end local v25    # "slashCount":I
    :goto_3
    return-object v3

    .line 890
    :cond_1
    const/4 v4, 0x1

    const-string/jumbo v6, "http:"

    const/4 v7, 0x0

    const/4 v8, 0x5

    move-object/from16 v3, p2

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 891
    const-string/jumbo v3, "http"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/squareup/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 892
    const-string/jumbo v3, "http:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v5, v3

    goto/16 :goto_0

    .line 894
    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    .line 896
    :cond_3
    if-eqz p1, :cond_4

    .line 897
    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/HttpUrl;->access$100(Lcom/squareup/okhttp/HttpUrl;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/squareup/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    goto/16 :goto_0

    .line 899
    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    .line 921
    .restart local v18    # "componentDelimiterOffset":I
    .restart local v19    # "hasPassword":Z
    .restart local v20    # "hasUsername":Z
    .restart local v25    # "slashCount":I
    :cond_5
    const/16 v16, -0x1

    goto :goto_2

    .line 926
    .restart local v16    # "c":I
    :sswitch_1
    if-nez v19, :cond_8

    .line 927
    const-string/jumbo v3, ":"

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-static {v0, v5, v1, v3}, Lcom/squareup/okhttp/HttpUrl;->access$200(Ljava/lang/String;IILjava/lang/String;)I

    move-result v6

    .line 929
    .local v6, "passwordColonOffset":I
    const-string/jumbo v7, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v4, p2

    invoke-static/range {v4 .. v9}, Lcom/squareup/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v17

    .line 931
    .local v17, "canonicalUsername":Ljava/lang/String;
    if-eqz v20, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "%40"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .end local v17    # "canonicalUsername":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 934
    move/from16 v0, v18

    if-eq v6, v0, :cond_7

    .line 935
    const/16 v19, 0x1

    .line 936
    add-int/lit8 v8, v6, 0x1

    const-string/jumbo v10, " \"\':;<=>@[]\\^`{}|/\\?#"

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v7, p2

    move/from16 v9, v18

    invoke-static/range {v7 .. v12}, Lcom/squareup/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 939
    :cond_7
    const/16 v20, 0x1

    .line 944
    .end local v6    # "passwordColonOffset":I
    :goto_4
    add-int/lit8 v5, v18, 0x1

    .line 945
    goto/16 :goto_1

    .line 941
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "%40"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v10, " \"\':;<=>@[]\\^`{}|/\\?#"

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v7, p2

    move v8, v5

    move/from16 v9, v18

    invoke-static/range {v7 .. v12}, Lcom/squareup/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    goto :goto_4

    .line 959
    .restart local v23    # "portColonOffset":I
    :cond_9
    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-static {v0, v5, v1}, Lcom/squareup/okhttp/HttpUrl$Builder;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/squareup/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 960
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/squareup/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/okhttp/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/squareup/okhttp/HttpUrl$Builder;->port:I

    .line 962
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/squareup/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    if-nez v3, :cond_b

    const/4 v3, 0x0

    goto/16 :goto_3

    .line 963
    :cond_b
    move/from16 v5, v18

    .line 981
    .end local v16    # "c":I
    .end local v18    # "componentDelimiterOffset":I
    .end local v23    # "portColonOffset":I
    :cond_c
    :goto_5
    const-string/jumbo v3, "?#"

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-static {v0, v5, v1, v3}, Lcom/squareup/okhttp/HttpUrl;->access$200(Ljava/lang/String;IILjava/lang/String;)I

    move-result v22

    .line 982
    .local v22, "pathDelimiterOffset":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v22

    invoke-direct {v0, v1, v5, v2}, Lcom/squareup/okhttp/HttpUrl$Builder;->resolvePath(Ljava/lang/String;II)V

    .line 983
    move/from16 v5, v22

    .line 986
    move/from16 v0, v21

    if-ge v5, v0, :cond_d

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3f

    if-ne v3, v4, :cond_d

    .line 987
    const-string/jumbo v3, "#"

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-static {v0, v5, v1, v3}, Lcom/squareup/okhttp/HttpUrl;->access$200(Ljava/lang/String;IILjava/lang/String;)I

    move-result v9

    .line 988
    .local v9, "queryDelimiterOffset":I
    add-int/lit8 v8, v5, 0x1

    const-string/jumbo v10, " \"\'<>#"

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object/from16 v7, p2

    invoke-static/range {v7 .. v12}, Lcom/squareup/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/squareup/okhttp/HttpUrl;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 990
    move v5, v9

    .line 994
    .end local v9    # "queryDelimiterOffset":I
    :cond_d
    move/from16 v0, v21

    if-ge v5, v0, :cond_e

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x23

    if-ne v3, v4, :cond_e

    .line 995
    add-int/lit8 v11, v5, 0x1

    const-string/jumbo v13, ""

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v10, p2

    move/from16 v12, v21

    invoke-static/range {v10 .. v15}, Lcom/squareup/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 999
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/squareup/okhttp/HttpUrl$Builder;->build()Lcom/squareup/okhttp/HttpUrl;

    move-result-object v3

    goto/16 :goto_3

    .line 969
    .end local v22    # "pathDelimiterOffset":I
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/okhttp/HttpUrl;->encodedUsername()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 970
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/okhttp/HttpUrl;->encodedPassword()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 971
    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/HttpUrl;->access$300(Lcom/squareup/okhttp/HttpUrl;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/squareup/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 972
    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/HttpUrl;->access$400(Lcom/squareup/okhttp/HttpUrl;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/squareup/okhttp/HttpUrl$Builder;->port:I

    .line 973
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 974
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/squareup/okhttp/HttpUrl;->encodedPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 975
    move/from16 v0, v21

    if-eq v5, v0, :cond_10

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x23

    if-ne v3, v4, :cond_c

    .line 976
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/okhttp/HttpUrl;->encodedQuery()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedQuery(Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;

    goto/16 :goto_5

    .line 923
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x23 -> :sswitch_0
        0x2f -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_1
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method public password(Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 652
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "password == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 653
    :cond_0
    const-string/jumbo v0, " \"\':;<=>@[]\\^`{}|/\\?#"

    invoke-static {p1, v0, v1, v1}, Lcom/squareup/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 654
    return-object p0
.end method

.method public port(I)Lcom/squareup/okhttp/HttpUrl$Builder;
    .locals 3
    .param p1, "port"    # I

    .prologue
    .line 676
    if-lez p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 677
    :cond_1
    iput p1, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->port:I

    .line 678
    return-object p0
.end method

.method public query(Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 741
    if-eqz p1, :cond_0

    const-string/jumbo v0, " \"\'<>#"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 742
    invoke-static {p1, v0, v1, v2}, Lcom/squareup/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/HttpUrl;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 744
    return-object p0

    .line 742
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAllEncodedQueryParameters(Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;
    .locals 2
    .param p1, "encodedName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 798
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "encodedName == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_1

    .line 802
    :goto_0
    return-object p0

    .line 800
    :cond_1
    const-string/jumbo v0, " \"\'<>#&="

    .line 801
    invoke-static {p1, v0, v1, v1}, Lcom/squareup/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 800
    invoke-direct {p0, v0}, Lcom/squareup/okhttp/HttpUrl$Builder;->removeAllCanonicalQueryParameters(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeAllQueryParameters(Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 790
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "name == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 791
    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v1, :cond_1

    .line 794
    :goto_0
    return-object p0

    .line 792
    :cond_1
    const-string/jumbo v1, " \"\'<>#&="

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v1, v2, v3}, Lcom/squareup/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 793
    .local v0, "nameToRemove":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/squareup/okhttp/HttpUrl$Builder;->removeAllCanonicalQueryParameters(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removePathSegment(I)Lcom/squareup/okhttp/HttpUrl$Builder;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 724
    iget-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 725
    iget-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 728
    :cond_0
    return-object p0
.end method

.method public scheme(Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;
    .locals 3
    .param p1, "scheme"    # Ljava/lang/String;

    .prologue
    .line 627
    if-nez p1, :cond_0

    .line 628
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 629
    :cond_0
    const-string/jumbo v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 630
    const-string/jumbo v0, "http"

    iput-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 636
    :goto_0
    return-object p0

    .line 631
    :cond_1
    const-string/jumbo v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 632
    const-string/jumbo v0, "https"

    iput-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    goto :goto_0

    .line 634
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEncodedPathSegment(ILjava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;
    .locals 7
    .param p1, "index"    # I
    .param p2, "encodedPathSegment"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 711
    if-nez p2, :cond_0

    .line 712
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "encodedPathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 715
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const-string/jumbo v3, " \"<>^`{}|/\\?#"

    const/4 v4, 0x1

    move-object v0, p2

    move v5, v1

    .line 714
    invoke-static/range {v0 .. v5}, Lcom/squareup/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v6

    .line 716
    .local v6, "canonicalPathSegment":Ljava/lang/String;
    iget-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0, p1, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 717
    invoke-direct {p0, v6}, Lcom/squareup/okhttp/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, v6}, Lcom/squareup/okhttp/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 718
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected path segment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 720
    :cond_2
    return-object p0
.end method

.method public setEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;
    .locals 0
    .param p1, "encodedName"    # Ljava/lang/String;
    .param p2, "encodedValue"    # Ljava/lang/String;

    .prologue
    .line 784
    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/HttpUrl$Builder;->removeAllEncodedQueryParameters(Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;

    .line 785
    invoke-virtual {p0, p1, p2}, Lcom/squareup/okhttp/HttpUrl$Builder;->addEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;

    .line 786
    return-object p0
.end method

.method public setPathSegment(ILjava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;
    .locals 7
    .param p1, "index"    # I
    .param p2, "pathSegment"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 700
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "pathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 702
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const-string/jumbo v3, " \"<>^`{}|/\\?#"

    move-object v0, p2

    move v4, v1

    move v5, v1

    .line 701
    invoke-static/range {v0 .. v5}, Lcom/squareup/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v6

    .line 703
    .local v6, "canonicalPathSegment":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/squareup/okhttp/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, v6}, Lcom/squareup/okhttp/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 704
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected path segment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 706
    :cond_2
    iget-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0, p1, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 707
    return-object p0
.end method

.method public setQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 778
    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/HttpUrl$Builder;->removeAllQueryParameters(Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;

    .line 779
    invoke-virtual {p0, p1, p2}, Lcom/squareup/okhttp/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;

    .line 780
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x3a

    .line 837
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 838
    .local v1, "result":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    const-string/jumbo v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    iget-object v2, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 842
    :cond_0
    iget-object v2, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    iget-object v2, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 844
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 845
    iget-object v2, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    :cond_1
    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 850
    :cond_2
    iget-object v2, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    .line 852
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 853
    iget-object v2, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 859
    :goto_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/HttpUrl$Builder;->effectivePort()I

    move-result v0

    .line 860
    .local v0, "effectivePort":I
    iget-object v2, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-static {v2}, Lcom/squareup/okhttp/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v2

    if-eq v0, v2, :cond_3

    .line 861
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 862
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 865
    :cond_3
    iget-object v2, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/squareup/okhttp/HttpUrl;->pathSegmentsToString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 867
    iget-object v2, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz v2, :cond_4

    .line 868
    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 869
    iget-object v2, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/squareup/okhttp/HttpUrl;->namesAndValuesToQueryString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 872
    :cond_4
    iget-object v2, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 873
    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 874
    iget-object v2, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 856
    .end local v0    # "effectivePort":I
    :cond_6
    iget-object v2, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public username(Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;
    .locals 2
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 640
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "username == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 641
    :cond_0
    const-string/jumbo v0, " \"\':;<=>@[]^`{}|/\\?#"

    invoke-static {p1, v0, v1, v1}, Lcom/squareup/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 642
    return-object p0
.end method

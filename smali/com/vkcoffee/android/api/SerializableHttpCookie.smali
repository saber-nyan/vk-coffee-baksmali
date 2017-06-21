.class public Lcom/vkcoffee/android/api/SerializableHttpCookie;
.super Ljava/lang/Object;
.source "SerializableHttpCookie.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x58765a0a7f563d0cL


# instance fields
.field private transient cookie:Ljava/net/HttpCookie;

.field private fieldHttpOnly:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/vkcoffee/android/api/SerializableHttpCookie;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/api/SerializableHttpCookie;->TAG:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method private byteArrayToHexString([B)Ljava/lang/String;
    .locals 6
    .param p1, "bytes"    # [B

    .prologue
    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v3, p1

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 138
    .local v1, "sb":Ljava/lang/StringBuilder;
    array-length v4, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-byte v0, p1, v3

    .line 139
    .local v0, "element":B
    and-int/lit16 v2, v0, 0xff

    .line 140
    .local v2, "v":I
    const/16 v5, 0x10

    if-ge v2, v5, :cond_0

    .line 141
    const/16 v5, 0x30

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 145
    .end local v0    # "element":B
    .end local v2    # "v":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getHttpOnly()Z
    .locals 3

    .prologue
    .line 69
    :try_start_0
    invoke-direct {p0}, Lcom/vkcoffee/android/api/SerializableHttpCookie;->initFieldHttpOnly()V

    .line 70
    iget-object v1, p0, Lcom/vkcoffee/android/api/SerializableHttpCookie;->fieldHttpOnly:Ljava/lang/reflect/Field;

    iget-object v2, p0, Lcom/vkcoffee/android/api/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 76
    :goto_0
    return v1

    .line 71
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/vkcoffee/android/api/SerializableHttpCookie;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7
    .param p1, "hexString"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x10

    .line 155
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 156
    .local v2, "len":I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 157
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 158
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    .line 159
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 157
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 161
    :cond_0
    return-object v0
.end method

.method private initFieldHttpOnly()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/vkcoffee/android/api/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "httpOnly"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/api/SerializableHttpCookie;->fieldHttpOnly:Ljava/lang/reflect/Field;

    .line 93
    iget-object v0, p0, Lcom/vkcoffee/android/api/SerializableHttpCookie;->fieldHttpOnly:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 94
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 6
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 114
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 115
    .local v1, "value":Ljava/lang/String;
    new-instance v2, Ljava/net/HttpCookie;

    invoke-direct {v2, v0, v1}, Ljava/net/HttpCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/vkcoffee/android/api/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    .line 116
    iget-object v3, p0, Lcom/vkcoffee/android/api/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/net/HttpCookie;->setComment(Ljava/lang/String;)V

    .line 117
    iget-object v3, p0, Lcom/vkcoffee/android/api/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/net/HttpCookie;->setCommentURL(Ljava/lang/String;)V

    .line 118
    iget-object v3, p0, Lcom/vkcoffee/android/api/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/net/HttpCookie;->setDomain(Ljava/lang/String;)V

    .line 119
    iget-object v2, p0, Lcom/vkcoffee/android/api/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/net/HttpCookie;->setMaxAge(J)V

    .line 120
    iget-object v3, p0, Lcom/vkcoffee/android/api/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/net/HttpCookie;->setPath(Ljava/lang/String;)V

    .line 121
    iget-object v3, p0, Lcom/vkcoffee/android/api/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/net/HttpCookie;->setPortlist(Ljava/lang/String;)V

    .line 122
    iget-object v2, p0, Lcom/vkcoffee/android/api/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/net/HttpCookie;->setVersion(I)V

    .line 123
    iget-object v2, p0, Lcom/vkcoffee/android/api/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/net/HttpCookie;->setSecure(Z)V

    .line 124
    iget-object v2, p0, Lcom/vkcoffee/android/api/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/net/HttpCookie;->setDiscard(Z)V

    .line 125
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/vkcoffee/android/api/SerializableHttpCookie;->setHttpOnly(Z)V

    .line 126
    return-void
.end method

.method private setHttpOnly(Z)V
    .locals 4
    .param p1, "httpOnly"    # Z

    .prologue
    .line 82
    :try_start_0
    invoke-direct {p0}, Lcom/vkcoffee/android/api/SerializableHttpCookie;->initFieldHttpOnly()V

    .line 83
    iget-object v1, p0, Lcom/vkcoffee/android/api/SerializableHttpCookie;->fieldHttpOnly:Ljava/lang/reflect/Field;

    iget-object v2, p0, Lcom/vkcoffee/android/api/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/vkcoffee/android/api/SerializableHttpCookie;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/vkcoffee/android/api/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 98
    iget-object v0, p0, Lcom/vkcoffee/android/api/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 99
    iget-object v0, p0, Lcom/vkcoffee/android/api/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 100
    iget-object v0, p0, Lcom/vkcoffee/android/api/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getCommentURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 101
    iget-object v0, p0, Lcom/vkcoffee/android/api/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lcom/vkcoffee/android/api/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getMaxAge()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 103
    iget-object v0, p0, Lcom/vkcoffee/android/api/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lcom/vkcoffee/android/api/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getPortlist()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 105
    iget-object v0, p0, Lcom/vkcoffee/android/api/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 106
    iget-object v0, p0, Lcom/vkcoffee/android/api/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getSecure()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 107
    iget-object v0, p0, Lcom/vkcoffee/android/api/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getDiscard()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 108
    invoke-direct {p0}, Lcom/vkcoffee/android/api/SerializableHttpCookie;->getHttpOnly()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 109
    return-void
.end method


# virtual methods
.method public decode(Ljava/lang/String;)Ljava/net/HttpCookie;
    .locals 7
    .param p1, "encodedCookie"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/api/SerializableHttpCookie;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 50
    .local v1, "bytes":[B
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 52
    .local v0, "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    const/4 v2, 0x0

    .line 54
    .local v2, "cookie":Ljava/net/HttpCookie;
    :try_start_0
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 56
    .local v4, "objectInputStream":Ljava/io/ObjectInputStream;
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkcoffee/android/api/SerializableHttpCookie;

    iget-object v2, v5, Lcom/vkcoffee/android/api/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 63
    .end local v4    # "objectInputStream":Ljava/io/ObjectInputStream;
    :goto_0
    return-object v2

    .line 57
    :catch_0
    move-exception v3

    .line 58
    .local v3, "e":Ljava/io/IOException;
    sget-object v5, Lcom/vkcoffee/android/api/SerializableHttpCookie;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "IOException in decodeCookie"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 59
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 60
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    sget-object v5, Lcom/vkcoffee/android/api/SerializableHttpCookie;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "ClassNotFoundException in decodeCookie"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public encode(Ljava/net/HttpCookie;)Ljava/lang/String;
    .locals 5
    .param p1, "cookie"    # Ljava/net/HttpCookie;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/vkcoffee/android/api/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    .line 36
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 38
    .local v1, "os":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 39
    .local v2, "outputStream":Ljava/io/ObjectOutputStream;
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/vkcoffee/android/api/SerializableHttpCookie;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v3

    .end local v2    # "outputStream":Ljava/io/ObjectOutputStream;
    :goto_0
    return-object v3

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/vkcoffee/android/api/SerializableHttpCookie;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "IOException in encodeCookie"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    const/4 v3, 0x0

    goto :goto_0
.end method

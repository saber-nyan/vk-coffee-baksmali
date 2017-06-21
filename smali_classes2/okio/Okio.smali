.class public final Lokio/Okio;
.super Ljava/lang/Object;
.source "Okio.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lokio/Okio;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lokio/Okio;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lokio/Okio;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static appendingSink(Ljava/io/File;)Lokio/Sink;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 179
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-static {v0}, Lokio/Okio;->sink(Ljava/io/OutputStream;)Lokio/Sink;

    move-result-object v0

    return-object v0
.end method

.method public static buffer(Lokio/Sink;)Lokio/BufferedSink;
    .locals 2
    .param p0, "sink"    # Lokio/Sink;

    .prologue
    .line 58
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    new-instance v0, Lokio/RealBufferedSink;

    invoke-direct {v0, p0}, Lokio/RealBufferedSink;-><init>(Lokio/Sink;)V

    return-object v0
.end method

.method public static buffer(Lokio/Source;)Lokio/BufferedSource;
    .locals 2
    .param p0, "source"    # Lokio/Source;

    .prologue
    .line 48
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    new-instance v0, Lokio/RealBufferedSource;

    invoke-direct {v0, p0}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    return-object v0
.end method

.method public static sink(Ljava/io/File;)Lokio/Sink;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 173
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lokio/Okio;->sink(Ljava/io/OutputStream;)Lokio/Sink;

    move-result-object v0

    return-object v0
.end method

.method public static sink(Ljava/io/OutputStream;)Lokio/Sink;
    .locals 1
    .param p0, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 64
    new-instance v0, Lokio/Timeout;

    invoke-direct {v0}, Lokio/Timeout;-><init>()V

    invoke-static {p0, v0}, Lokio/Okio;->sink(Ljava/io/OutputStream;Lokio/Timeout;)Lokio/Sink;

    move-result-object v0

    return-object v0
.end method

.method private static sink(Ljava/io/OutputStream;Lokio/Timeout;)Lokio/Sink;
    .locals 2
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "timeout"    # Lokio/Timeout;

    .prologue
    .line 68
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeout == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    new-instance v0, Lokio/Okio$1;

    invoke-direct {v0, p1, p0}, Lokio/Okio$1;-><init>(Lokio/Timeout;Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public static sink(Ljava/net/Socket;)Lokio/Sink;
    .locals 4
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "socket == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 116
    :cond_0
    invoke-static {p0}, Lokio/Okio;->timeout(Ljava/net/Socket;)Lokio/AsyncTimeout;

    move-result-object v1

    .line 117
    .local v1, "timeout":Lokio/AsyncTimeout;
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-static {v2, v1}, Lokio/Okio;->sink(Ljava/io/OutputStream;Lokio/Timeout;)Lokio/Sink;

    move-result-object v0

    .line 118
    .local v0, "sink":Lokio/Sink;
    invoke-virtual {v1, v0}, Lokio/AsyncTimeout;->sink(Lokio/Sink;)Lokio/Sink;

    move-result-object v2

    return-object v2
.end method

.method public static varargs sink(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lokio/Sink;
    .locals 2
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    .prologue
    .line 186
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "path == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_0
    invoke-static {p0, p1}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->sink(Ljava/io/OutputStream;)Lokio/Sink;

    move-result-object v0

    return-object v0
.end method

.method public static source(Ljava/io/File;)Lokio/Source;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 160
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v0

    return-object v0
.end method

.method public static source(Ljava/io/InputStream;)Lokio/Source;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    .line 123
    new-instance v0, Lokio/Timeout;

    invoke-direct {v0}, Lokio/Timeout;-><init>()V

    invoke-static {p0, v0}, Lokio/Okio;->source(Ljava/io/InputStream;Lokio/Timeout;)Lokio/Source;

    move-result-object v0

    return-object v0
.end method

.method private static source(Ljava/io/InputStream;Lokio/Timeout;)Lokio/Source;
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "timeout"    # Lokio/Timeout;

    .prologue
    .line 127
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeout == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_1
    new-instance v0, Lokio/Okio$2;

    invoke-direct {v0, p1, p0}, Lokio/Okio$2;-><init>(Lokio/Timeout;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static source(Ljava/net/Socket;)Lokio/Source;
    .locals 4
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "socket == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 197
    :cond_0
    invoke-static {p0}, Lokio/Okio;->timeout(Ljava/net/Socket;)Lokio/AsyncTimeout;

    move-result-object v1

    .line 198
    .local v1, "timeout":Lokio/AsyncTimeout;
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2, v1}, Lokio/Okio;->source(Ljava/io/InputStream;Lokio/Timeout;)Lokio/Source;

    move-result-object v0

    .line 199
    .local v0, "source":Lokio/Source;
    invoke-virtual {v1, v0}, Lokio/AsyncTimeout;->source(Lokio/Source;)Lokio/Source;

    move-result-object v2

    return-object v2
.end method

.method public static varargs source(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lokio/Source;
    .locals 2
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    .prologue
    .line 167
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "path == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_0
    invoke-static {p0, p1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v0

    return-object v0
.end method

.method private static timeout(Ljava/net/Socket;)Lokio/AsyncTimeout;
    .locals 1
    .param p0, "socket"    # Ljava/net/Socket;

    .prologue
    .line 203
    new-instance v0, Lokio/Okio$3;

    invoke-direct {v0, p0}, Lokio/Okio$3;-><init>(Ljava/net/Socket;)V

    return-object v0
.end method

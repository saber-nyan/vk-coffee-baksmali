.class public abstract LDecoder/CharacterDecoder;
.super Ljava/lang/Object;
.source "CharacterDecoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract bytesPerAtom()I
.end method

.method protected abstract bytesPerLine()I
.end method

.method protected decodeAtom(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V
    .locals 1
    .param p1, "aStream"    # Ljava/io/PushbackInputStream;
    .param p2, "bStream"    # Ljava/io/OutputStream;
    .param p3, "l"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    new-instance v0, LDecoder/CEStreamExhausted;

    invoke-direct {v0}, LDecoder/CEStreamExhausted;-><init>()V

    throw v0
.end method

.method public decodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "aStream"    # Ljava/io/InputStream;
    .param p2, "bStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    const/4 v3, 0x0

    .line 167
    .local v3, "totalBytes":I
    new-instance v2, Ljava/io/PushbackInputStream;

    invoke-direct {v2, p1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    .line 168
    .local v2, "ps":Ljava/io/PushbackInputStream;
    invoke-virtual {p0, v2, p2}, LDecoder/CharacterDecoder;->decodeBufferPrefix(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V

    .line 175
    :goto_0
    :try_start_0
    invoke-virtual {p0, v2, p2}, LDecoder/CharacterDecoder;->decodeLinePrefix(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)I

    move-result v1

    .line 176
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, LDecoder/CharacterDecoder;->bytesPerAtom()I

    move-result v4

    add-int/2addr v4, v0

    if-lt v4, v1, :cond_0

    .line 181
    invoke-virtual {p0}, LDecoder/CharacterDecoder;->bytesPerAtom()I

    move-result v4

    add-int/2addr v4, v0

    if-ne v4, v1, :cond_1

    .line 183
    invoke-virtual {p0}, LDecoder/CharacterDecoder;->bytesPerAtom()I

    move-result v4

    invoke-virtual {p0, v2, p2, v4}, LDecoder/CharacterDecoder;->decodeAtom(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V

    .line 184
    invoke-virtual {p0}, LDecoder/CharacterDecoder;->bytesPerAtom()I

    move-result v4

    add-int/2addr v3, v4

    .line 190
    :goto_2
    invoke-virtual {p0, v2, p2}, LDecoder/CharacterDecoder;->decodeLineSuffix(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch LDecoder/CEStreamExhausted; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 191
    .end local v0    # "i":I
    .end local v1    # "length":I
    :catch_0
    move-exception v4

    .line 196
    invoke-virtual {p0, v2, p2}, LDecoder/CharacterDecoder;->decodeBufferSuffix(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V

    .line 197
    return-void

    .line 178
    .restart local v0    # "i":I
    .restart local v1    # "length":I
    :cond_0
    :try_start_1
    invoke-virtual {p0}, LDecoder/CharacterDecoder;->bytesPerAtom()I

    move-result v4

    invoke-virtual {p0, v2, p2, v4}, LDecoder/CharacterDecoder;->decodeAtom(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V

    .line 179
    invoke-virtual {p0}, LDecoder/CharacterDecoder;->bytesPerAtom()I

    move-result v4

    add-int/2addr v3, v4

    .line 176
    invoke-virtual {p0}, LDecoder/CharacterDecoder;->bytesPerAtom()I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1

    .line 187
    :cond_1
    sub-int v4, v1, v0

    invoke-virtual {p0, v2, p2, v4}, LDecoder/CharacterDecoder;->decodeAtom(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V
    :try_end_1
    .catch LDecoder/CEStreamExhausted; {:try_start_1 .. :try_end_1} :catch_0

    .line 188
    sub-int v4, v1, v0

    add-int/2addr v3, v4

    goto :goto_2
.end method

.method public decodeBuffer(Ljava/io/InputStream;)[B
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 223
    .local v0, "outStream":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, p1, v0}, LDecoder/CharacterDecoder;->decodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 224
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public decodeBuffer(Ljava/lang/String;)[B
    .locals 5
    .param p1, "inputString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 206
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    new-array v1, v3, [B

    .line 210
    .local v1, "inputBuffer":[B
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v4, v3, v1, v4}, Ljava/lang/String;->getBytes(II[BI)V

    .line 211
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 212
    .local v0, "inStream":Ljava/io/ByteArrayInputStream;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 213
    .local v2, "outStream":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, v0, v2}, LDecoder/CharacterDecoder;->decodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 214
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method protected decodeBufferPrefix(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "aStream"    # Ljava/io/PushbackInputStream;
    .param p2, "bStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    return-void
.end method

.method protected decodeBufferSuffix(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "aStream"    # Ljava/io/PushbackInputStream;
    .param p2, "bStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    return-void
.end method

.method public decodeBufferToByteBuffer(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    invoke-virtual {p0, p1}, LDecoder/CharacterDecoder;->decodeBuffer(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public decodeBufferToByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "inputString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    invoke-virtual {p0, p1}, LDecoder/CharacterDecoder;->decodeBuffer(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected decodeLinePrefix(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)I
    .locals 1
    .param p1, "aStream"    # Ljava/io/PushbackInputStream;
    .param p2, "bStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p0}, LDecoder/CharacterDecoder;->bytesPerLine()I

    move-result v0

    return v0
.end method

.method protected decodeLineSuffix(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "aStream"    # Ljava/io/PushbackInputStream;
    .param p2, "bStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    return-void
.end method

.method protected readFully(Ljava/io/InputStream;[BII)I
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "buffer"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 144
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p4, :cond_1

    move v0, p4

    .line 151
    .end local v0    # "i":I
    :cond_0
    :goto_1
    return v0

    .line 146
    .restart local v0    # "i":I
    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 147
    .local v1, "q":I
    if-ne v1, v2, :cond_2

    .line 148
    if-nez v0, :cond_0

    move v0, v2

    goto :goto_1

    .line 149
    :cond_2
    add-int v3, v0, p3

    int-to-byte v4, v1

    aput-byte v4, p2, v3

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

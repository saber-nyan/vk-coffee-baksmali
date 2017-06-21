.class public abstract LDecoder/CharacterEncoder;
.super Ljava/lang/Object;
.source "CharacterEncoder.java"


# instance fields
.field protected pStream:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getBytes(Ljava/nio/ByteBuffer;)[B
    .locals 4
    .param p1, "bb"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 228
    const/4 v0, 0x0

    check-cast v0, [B

    .line 234
    .local v0, "buf":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 237
    .local v1, "tmp":[B
    array-length v2, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v2, v3, :cond_0

    array-length v2, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 239
    move-object v0, v1

    .line 240
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 244
    .end local v1    # "tmp":[B
    :cond_0
    if-nez v0, :cond_1

    .line 251
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v0, v2, [B

    .line 256
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 259
    :cond_1
    return-object v0
.end method


# virtual methods
.method protected abstract bytesPerAtom()I
.end method

.method protected abstract bytesPerLine()I
.end method

.method public encode(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 2
    .param p1, "aBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 285
    invoke-direct {p0, p1}, LDecoder/CharacterEncoder;->getBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 286
    .local v0, "buf":[B
    invoke-virtual {p0, v0}, LDecoder/CharacterEncoder;->encode([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public encode([B)Ljava/lang/String;
    .locals 6
    .param p1, "aBuffer"    # [B

    .prologue
    .line 195
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 196
    .local v2, "outStream":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 197
    .local v1, "inStream":Ljava/io/ByteArrayInputStream;
    const/4 v3, 0x0

    .line 200
    .local v3, "retVal":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v1, v2}, LDecoder/CharacterEncoder;->encode(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 202
    const-string v4, "8859_1"

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 208
    return-object v3

    .line 203
    :catch_0
    move-exception v0

    .line 206
    .local v0, "IOException":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/Error;

    const-string v5, "CharacterEncoder.encode internal error"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public encode(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "inStream"    # Ljava/io/InputStream;
    .param p2, "outStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-virtual {p0}, LDecoder/CharacterEncoder;->bytesPerLine()I

    move-result v3

    new-array v2, v3, [B

    .line 147
    .local v2, "tmpbuffer":[B
    invoke-virtual {p0, p2}, LDecoder/CharacterEncoder;->encodeBufferPrefix(Ljava/io/OutputStream;)V

    .line 151
    :goto_0
    invoke-virtual {p0, p1, v2}, LDecoder/CharacterEncoder;->readFully(Ljava/io/InputStream;[B)I

    move-result v1

    .line 152
    .local v1, "numBytes":I
    if-nez v1, :cond_1

    .line 176
    :cond_0
    invoke-virtual {p0, p2}, LDecoder/CharacterEncoder;->encodeBufferSuffix(Ljava/io/OutputStream;)V

    .line 177
    return-void

    .line 156
    :cond_1
    invoke-virtual {p0, p2, v1}, LDecoder/CharacterEncoder;->encodeLinePrefix(Ljava/io/OutputStream;I)V

    .line 157
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    if-lt v0, v1, :cond_2

    .line 168
    invoke-virtual {p0}, LDecoder/CharacterEncoder;->bytesPerLine()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 173
    invoke-virtual {p0, p2}, LDecoder/CharacterEncoder;->encodeLineSuffix(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 160
    :cond_2
    invoke-virtual {p0}, LDecoder/CharacterEncoder;->bytesPerAtom()I

    move-result v3

    add-int/2addr v3, v0

    if-gt v3, v1, :cond_3

    .line 162
    invoke-virtual {p0}, LDecoder/CharacterEncoder;->bytesPerAtom()I

    move-result v3

    invoke-virtual {p0, p2, v2, v0, v3}, LDecoder/CharacterEncoder;->encodeAtom(Ljava/io/OutputStream;[BII)V

    .line 157
    :goto_2
    invoke-virtual {p0}, LDecoder/CharacterEncoder;->bytesPerAtom()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_1

    .line 165
    :cond_3
    sub-int v3, v1, v0

    invoke-virtual {p0, p2, v2, v0, v3}, LDecoder/CharacterEncoder;->encodeAtom(Ljava/io/OutputStream;[BII)V

    goto :goto_2
.end method

.method public encode(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "aBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "aStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    invoke-direct {p0, p1}, LDecoder/CharacterEncoder;->getBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 273
    .local v0, "buf":[B
    invoke-virtual {p0, v0, p2}, LDecoder/CharacterEncoder;->encode([BLjava/io/OutputStream;)V

    .line 274
    return-void
.end method

.method public encode([BLjava/io/OutputStream;)V
    .locals 1
    .param p1, "aBuffer"    # [B
    .param p2, "aStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 186
    .local v0, "inStream":Ljava/io/ByteArrayInputStream;
    invoke-virtual {p0, v0, p2}, LDecoder/CharacterEncoder;->encode(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 187
    return-void
.end method

.method protected abstract encodeAtom(Ljava/io/OutputStream;[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public encodeBuffer(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 2
    .param p1, "aBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 385
    invoke-direct {p0, p1}, LDecoder/CharacterEncoder;->getBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 386
    .local v0, "buf":[B
    invoke-virtual {p0, v0}, LDecoder/CharacterEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public encodeBuffer([B)Ljava/lang/String;
    .locals 5
    .param p1, "aBuffer"    # [B

    .prologue
    .line 349
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 350
    .local v2, "outStream":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 353
    .local v1, "inStream":Ljava/io/ByteArrayInputStream;
    :try_start_0
    invoke-virtual {p0, v1, v2}, LDecoder/CharacterEncoder;->encodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 354
    :catch_0
    move-exception v0

    .line 357
    .local v0, "IOException":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/Error;

    const-string v4, "CharacterEncoder.encodeBuffer internal error"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public encodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "inStream"    # Ljava/io/InputStream;
    .param p2, "outStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 301
    invoke-virtual {p0}, LDecoder/CharacterEncoder;->bytesPerLine()I

    move-result v3

    new-array v2, v3, [B

    .line 303
    .local v2, "tmpbuffer":[B
    invoke-virtual {p0, p2}, LDecoder/CharacterEncoder;->encodeBufferPrefix(Ljava/io/OutputStream;)V

    .line 307
    :cond_0
    invoke-virtual {p0, p1, v2}, LDecoder/CharacterEncoder;->readFully(Ljava/io/InputStream;[B)I

    move-result v1

    .line 308
    .local v1, "numBytes":I
    if-nez v1, :cond_1

    .line 329
    :goto_0
    invoke-virtual {p0, p2}, LDecoder/CharacterEncoder;->encodeBufferSuffix(Ljava/io/OutputStream;)V

    .line 330
    return-void

    .line 312
    :cond_1
    invoke-virtual {p0, p2, v1}, LDecoder/CharacterEncoder;->encodeLinePrefix(Ljava/io/OutputStream;I)V

    .line 313
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    if-lt v0, v1, :cond_2

    .line 323
    invoke-virtual {p0, p2}, LDecoder/CharacterEncoder;->encodeLineSuffix(Ljava/io/OutputStream;)V

    .line 324
    invoke-virtual {p0}, LDecoder/CharacterEncoder;->bytesPerLine()I

    move-result v3

    if-ge v1, v3, :cond_0

    goto :goto_0

    .line 315
    :cond_2
    invoke-virtual {p0}, LDecoder/CharacterEncoder;->bytesPerAtom()I

    move-result v3

    add-int/2addr v3, v0

    if-gt v3, v1, :cond_3

    .line 317
    invoke-virtual {p0}, LDecoder/CharacterEncoder;->bytesPerAtom()I

    move-result v3

    invoke-virtual {p0, p2, v2, v0, v3}, LDecoder/CharacterEncoder;->encodeAtom(Ljava/io/OutputStream;[BII)V

    .line 313
    :goto_2
    invoke-virtual {p0}, LDecoder/CharacterEncoder;->bytesPerAtom()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_1

    .line 320
    :cond_3
    sub-int v3, v1, v0

    invoke-virtual {p0, p2, v2, v0, v3}, LDecoder/CharacterEncoder;->encodeAtom(Ljava/io/OutputStream;[BII)V

    goto :goto_2
.end method

.method public encodeBuffer(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "aBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "aStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 372
    invoke-direct {p0, p1}, LDecoder/CharacterEncoder;->getBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 373
    .local v0, "buf":[B
    invoke-virtual {p0, v0, p2}, LDecoder/CharacterEncoder;->encodeBuffer([BLjava/io/OutputStream;)V

    .line 374
    return-void
.end method

.method public encodeBuffer([BLjava/io/OutputStream;)V
    .locals 1
    .param p1, "aBuffer"    # [B
    .param p2, "aStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 340
    .local v0, "inStream":Ljava/io/ByteArrayInputStream;
    invoke-virtual {p0, v0, p2}, LDecoder/CharacterEncoder;->encodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 341
    return-void
.end method

.method protected encodeBufferPrefix(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "aStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Ljava/io/PrintStream;

    invoke-direct {v0, p1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, LDecoder/CharacterEncoder;->pStream:Ljava/io/PrintStream;

    .line 87
    return-void
.end method

.method protected encodeBufferSuffix(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "aStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    return-void
.end method

.method protected encodeLinePrefix(Ljava/io/OutputStream;I)V
    .locals 0
    .param p1, "aStream"    # Ljava/io/OutputStream;
    .param p2, "aLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    return-void
.end method

.method protected encodeLineSuffix(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "aStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, LDecoder/CharacterEncoder;->pStream:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 111
    return-void
.end method

.method protected readFully(Ljava/io/InputStream;[B)I
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-lt v0, v2, :cond_1

    .line 131
    array-length v0, p2

    .end local v0    # "i":I
    :cond_0
    return v0

    .line 126
    .restart local v0    # "i":I
    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 127
    .local v1, "q":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 129
    int-to-byte v2, v1

    aput-byte v2, p2, v0

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.class public Lcom/vkcoffee/android/upload/HTTPFileUploadTask$UploadEntity;
.super Lcom/squareup/okhttp/RequestBody;
.source "HTTPFileUploadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/upload/HTTPFileUploadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "UploadEntity"
.end annotation


# instance fields
.field field:Ljava/lang/String;

.field file:Ljava/lang/String;

.field final fileHeaderTemplate:Ljava/lang/String;

.field footer:[B

.field header:[B

.field offset:I

.field final synthetic this$0:Lcom/vkcoffee/android/upload/HTTPFileUploadTask;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/upload/HTTPFileUploadTask;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "this$0"    # Lcom/vkcoffee/android/upload/HTTPFileUploadTask;
    .param p2, "_file"    # Ljava/lang/String;
    .param p3, "_field"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/upload/HTTPFileUploadTask$UploadEntity;, "Lcom/vkcoffee/android/upload/HTTPFileUploadTask<TS;>.UploadEntity;"
    const/4 v1, 0x0

    .line 120
    iput-object p1, p0, Lcom/vkcoffee/android/upload/HTTPFileUploadTask$UploadEntity;->this$0:Lcom/vkcoffee/android/upload/HTTPFileUploadTask;

    invoke-direct {p0}, Lcom/squareup/okhttp/RequestBody;-><init>()V

    .line 111
    iput v1, p0, Lcom/vkcoffee/android/upload/HTTPFileUploadTask$UploadEntity;->offset:I

    .line 113
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vkcoffee/android/upload/HTTPFileUploadTask$UploadEntity;->header:[B

    .line 114
    const-string/jumbo v1, "\r\n--VK-FILE-UPLOAD-BOUNDARY\r\nContent-Disposition: form-data; name=\"%s\"; filename=\"%s\"\r\nContent-Type: %s\r\n\r\n"

    iput-object v1, p0, Lcom/vkcoffee/android/upload/HTTPFileUploadTask$UploadEntity;->fileHeaderTemplate:Ljava/lang/String;

    .line 118
    const-string/jumbo v1, "\r\n--VK-FILE-UPLOAD-BOUNDARY--\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/upload/HTTPFileUploadTask$UploadEntity;->footer:[B

    .line 122
    :try_start_0
    const-string/jumbo v1, "%"

    const-string/jumbo v2, "%25"

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/upload/HTTPFileUploadTask$UploadEntity;->file:Ljava/lang/String;

    .line 123
    iput-object p3, p0, Lcom/vkcoffee/android/upload/HTTPFileUploadTask$UploadEntity;->field:Ljava/lang/String;

    .line 124
    iget-object v1, p0, Lcom/vkcoffee/android/upload/HTTPFileUploadTask$UploadEntity;->file:Ljava/lang/String;

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v2, "file"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/upload/HTTPFileUploadTask$UploadEntity;->file:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/upload/HTTPFileUploadTask$UploadEntity;->file:Ljava/lang/String;

    .line 127
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "\r\n--VK-FILE-UPLOAD-BOUNDARY\r\nContent-Disposition: form-data; name=\"%s\"; filename=\"%s\"\r\nContent-Type: %s\r\n\r\n"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/vkcoffee/android/upload/HTTPFileUploadTask$UploadEntity;->field:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/vkcoffee/android/upload/HTTPFileUploadTask$UploadEntity;->file:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/vkcoffee/android/upload/HTTPFileUploadTask;->access$100(Lcom/vkcoffee/android/upload/HTTPFileUploadTask;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/vkcoffee/android/upload/HTTPFileUploadTask$UploadEntity;->file:Ljava/lang/String;

    .line 128
    invoke-static {v5}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 127
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UTF-8"

    .line 128
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/upload/HTTPFileUploadTask$UploadEntity;->header:[B

    .line 129
    sget-boolean v1, Lcom/vkcoffee/android/api/APIController;->API_DEBUG:Z

    if-eqz v1, :cond_1

    .line 130
    const-string/jumbo v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Will upload "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/upload/HTTPFileUploadTask$UploadEntity;->file:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :cond_1
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "x":Ljava/lang/Exception;
    const-string/jumbo v1, "vk"

    invoke-static {v1, v0}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public contentLength()J
    .locals 8

    .prologue
    .line 200
    .local p0, "this":Lcom/vkcoffee/android/upload/HTTPFileUploadTask$UploadEntity;, "Lcom/vkcoffee/android/upload/HTTPFileUploadTask<TS;>.UploadEntity;"
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/upload/HTTPFileUploadTask$UploadEntity;->this$0:Lcom/vkcoffee/android/upload/HTTPFileUploadTask;

    iget-object v1, v1, Lcom/vkcoffee/android/upload/HTTPFileUploadTask;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v4, p0, Lcom/vkcoffee/android/upload/HTTPFileUploadTask$UploadEntity;->file:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string/jumbo v5, "r"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 201
    .local v0, "f":Landroid/content/res/AssetFileDescriptor;
    iget-object v1, p0, Lcom/vkcoffee/android/upload/HTTPFileUploadTask$UploadEntity;->header:[B

    array-length v1, v1

    iget-object v4, p0, Lcom/vkcoffee/android/upload/HTTPFileUploadTask$UploadEntity;->footer:[B

    array-length v4, v4

    add-int/2addr v1, v4

    int-to-long v4, v1

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    add-long v2, v4, v6

    .line 202
    .local v2, "l":J
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v0    # "f":Landroid/content/res/AssetFileDescriptor;
    .end local v2    # "l":J
    :goto_0
    return-wide v2

    .line 204
    :catch_0
    move-exception v1

    .line 207
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public contentType()Lcom/squareup/okhttp/MediaType;
    .locals 1

    .prologue
    .line 139
    .local p0, "this":Lcom/vkcoffee/android/upload/HTTPFileUploadTask$UploadEntity;, "Lcom/vkcoffee/android/upload/HTTPFileUploadTask<TS;>.UploadEntity;"
    const-string/jumbo v0, "multipart/form-data; boundary=VK-FILE-UPLOAD-BOUNDARY"

    invoke-static {v0}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 18
    .param p1, "bufferedSink"    # Lokio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "this":Lcom/vkcoffee/android/upload/HTTPFileUploadTask$UploadEntity;, "Lcom/vkcoffee/android/upload/HTTPFileUploadTask<TS;>.UploadEntity;"
    const/4 v6, 0x0

    .line 145
    .local v6, "is":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 146
    .local v5, "f":Landroid/content/res/AssetFileDescriptor;
    invoke-interface/range {p1 .. p1}, Lokio/BufferedSink;->outputStream()Ljava/io/OutputStream;

    move-result-object v11

    .line 148
    .local v11, "os":Ljava/io/OutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/upload/HTTPFileUploadTask$UploadEntity;->this$0:Lcom/vkcoffee/android/upload/HTTPFileUploadTask;

    iget-object v14, v14, Lcom/vkcoffee/android/upload/HTTPFileUploadTask;->context:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/upload/HTTPFileUploadTask$UploadEntity;->file:Ljava/lang/String;

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    const-string/jumbo v16, "r"

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v5

    .line 150
    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v14

    long-to-double v14, v14

    const-wide/high16 v16, 0x4090000000000000L    # 1024.0

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v12, v14

    .line 151
    .local v12, "total":I
    const/4 v7, 0x0

    .line 152
    .local v7, "loaded":I
    const-wide/16 v8, 0x0

    .line 153
    .local v8, "last":J
    const/16 v14, 0x400

    new-array v4, v14, [B

    .line 154
    .local v4, "buffer":[B
    const/4 v10, 0x0

    .line 155
    .local v10, "nread":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/upload/HTTPFileUploadTask$UploadEntity;->header:[B

    invoke-virtual {v11, v14}, Ljava/io/OutputStream;->write([B)V

    .line 157
    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v6

    .line 159
    :goto_0
    invoke-virtual {v6}, Ljava/io/FileInputStream;->available()I

    move-result v14

    if-lez v14, :cond_0

    .line 160
    invoke-virtual {v6, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v10

    .line 161
    const/4 v14, -0x1

    if-ne v10, v14, :cond_3

    .line 176
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/upload/HTTPFileUploadTask$UploadEntity;->this$0:Lcom/vkcoffee/android/upload/HTTPFileUploadTask;

    const/16 v15, 0xa

    const/16 v16, 0xa

    const/16 v17, 0x1

    invoke-virtual/range {v14 .. v17}, Lcom/vkcoffee/android/upload/HTTPFileUploadTask;->onProgress(IIZ)V

    .line 178
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/upload/HTTPFileUploadTask$UploadEntity;->footer:[B

    invoke-virtual {v11, v14}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    if-eqz v6, :cond_1

    .line 187
    :try_start_1
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 191
    :cond_1
    :goto_1
    if-eqz v5, :cond_2

    .line 192
    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 195
    .end local v4    # "buffer":[B
    .end local v7    # "loaded":I
    .end local v8    # "last":J
    .end local v10    # "nread":I
    .end local v12    # "total":I
    :cond_2
    :goto_2
    return-void

    .line 164
    .restart local v4    # "buffer":[B
    .restart local v7    # "loaded":I
    .restart local v8    # "last":J
    .restart local v10    # "nread":I
    .restart local v12    # "total":I
    :cond_3
    const/4 v14, 0x0

    :try_start_2
    invoke-virtual {v11, v4, v14, v10}, Ljava/io/OutputStream;->write([BII)V

    .line 165
    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v8

    const-wide/16 v16, 0x96

    cmp-long v14, v14, v16

    if-ltz v14, :cond_4

    .line 167
    move v3, v12

    .line 168
    .local v3, "_total":I
    move v2, v7

    .line 169
    .local v2, "_loaded":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/upload/HTTPFileUploadTask$UploadEntity;->this$0:Lcom/vkcoffee/android/upload/HTTPFileUploadTask;

    const/4 v15, 0x0

    invoke-virtual {v14, v2, v3, v15}, Lcom/vkcoffee/android/upload/HTTPFileUploadTask;->onProgress(IIZ)V

    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 172
    .end local v2    # "_loaded":I
    .end local v3    # "_total":I
    :cond_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkcoffee/android/upload/HTTPFileUploadTask$UploadEntity;->offset:I

    add-int/lit16 v14, v14, 0x400

    move-object/from16 v0, p0

    iput v14, v0, Lcom/vkcoffee/android/upload/HTTPFileUploadTask$UploadEntity;->offset:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 179
    .end local v4    # "buffer":[B
    .end local v7    # "loaded":I
    .end local v8    # "last":J
    .end local v10    # "nread":I
    .end local v12    # "total":I
    :catch_0
    move-exception v13

    .line 180
    .local v13, "x":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v14, "vk"

    invoke-static {v14, v13}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 181
    throw v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 185
    .end local v13    # "x":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    if-eqz v6, :cond_5

    .line 187
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 191
    :cond_5
    :goto_3
    if-eqz v5, :cond_6

    .line 192
    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_6
    throw v14

    .line 182
    :catch_1
    move-exception v13

    .line 183
    .local v13, "x":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v14, "vk"

    invoke-static {v14, v13}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 185
    if-eqz v6, :cond_7

    .line 187
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 191
    :cond_7
    :goto_4
    if-eqz v5, :cond_2

    .line 192
    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_2

    .line 188
    .end local v13    # "x":Ljava/lang/Exception;
    .restart local v4    # "buffer":[B
    .restart local v7    # "loaded":I
    .restart local v8    # "last":J
    .restart local v10    # "nread":I
    .restart local v12    # "total":I
    :catch_2
    move-exception v14

    goto :goto_1

    .end local v4    # "buffer":[B
    .end local v7    # "loaded":I
    .end local v8    # "last":J
    .end local v10    # "nread":I
    .end local v12    # "total":I
    .restart local v13    # "x":Ljava/lang/Exception;
    :catch_3
    move-exception v14

    goto :goto_4

    .end local v13    # "x":Ljava/lang/Exception;
    :catch_4
    move-exception v15

    goto :goto_3
.end method

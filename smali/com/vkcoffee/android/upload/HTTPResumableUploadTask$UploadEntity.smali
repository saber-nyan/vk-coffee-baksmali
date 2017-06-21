.class Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$UploadEntity;
.super Lcom/squareup/okhttp/RequestBody;
.source "HTTPResumableUploadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadEntity"
.end annotation


# instance fields
.field private file:Ljava/lang/String;

.field private range:Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;

.field final synthetic this$0:Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;

.field private uploadedLength:J


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;Ljava/lang/String;)V
    .locals 2
    .param p2, "file"    # Ljava/lang/String;

    .prologue
    .line 271
    .local p0, "this":Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$UploadEntity;, "Lcom/vkcoffee/android/upload/HTTPResumableUploadTask<TS;>.UploadEntity;"
    iput-object p1, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$UploadEntity;->this$0:Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;

    invoke-direct {p0}, Lcom/squareup/okhttp/RequestBody;-><init>()V

    .line 272
    const-string/jumbo v0, "%"

    const-string/jumbo v1, "%25"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$UploadEntity;->file:Ljava/lang/String;

    .line 273
    iget-object v0, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$UploadEntity;->file:Ljava/lang/String;

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$UploadEntity;->file:Ljava/lang/String;

    .line 276
    :cond_0
    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .prologue
    .line 321
    .local p0, "this":Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$UploadEntity;, "Lcom/vkcoffee/android/upload/HTTPResumableUploadTask<TS;>.UploadEntity;"
    iget-object v0, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$UploadEntity;->range:Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;

    invoke-static {v0}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;->access$500(Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;)J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lcom/squareup/okhttp/MediaType;
    .locals 1

    .prologue
    .line 288
    .local p0, "this":Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$UploadEntity;, "Lcom/vkcoffee/android/upload/HTTPResumableUploadTask<TS;>.UploadEntity;"
    const-string/jumbo v0, "application/octet-stream"

    invoke-static {v0}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public getFileLength()J
    .locals 9

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$UploadEntity;, "Lcom/vkcoffee/android/upload/HTTPResumableUploadTask<TS;>.UploadEntity;"
    const-wide/16 v4, 0x0

    .line 326
    :try_start_0
    iget-object v6, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$UploadEntity;->this$0:Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;

    iget-object v6, v6, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$UploadEntity;->file:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const-string/jumbo v8, "r"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 327
    .local v1, "f":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v2

    .line 328
    .local v2, "fileLength":J
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 329
    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 330
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$UploadEntity;->file:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 334
    .end local v1    # "f":Landroid/content/res/AssetFileDescriptor;
    .end local v2    # "fileLength":J
    :cond_0
    :goto_0
    return-wide v2

    .line 333
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-wide v2, v4

    .line 334
    goto :goto_0
.end method

.method public setRange(Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;)V
    .locals 0
    .param p1, "range"    # Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;

    .prologue
    .line 283
    .local p0, "this":Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$UploadEntity;, "Lcom/vkcoffee/android/upload/HTTPResumableUploadTask<TS;>.UploadEntity;"
    iput-object p1, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$UploadEntity;->range:Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;

    .line 284
    return-void
.end method

.method public setUploadedLength(J)V
    .locals 1
    .param p1, "uploadedLength"    # J

    .prologue
    .line 279
    .local p0, "this":Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$UploadEntity;, "Lcom/vkcoffee/android/upload/HTTPResumableUploadTask<TS;>.UploadEntity;"
    iput-wide p1, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$UploadEntity;->uploadedLength:J

    .line 280
    return-void
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 8
    .param p1, "bufferedSink"    # Lokio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    .local p0, "this":Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$UploadEntity;, "Lcom/vkcoffee/android/upload/HTTPResumableUploadTask<TS;>.UploadEntity;"
    const/4 v2, 0x0

    .line 294
    .local v2, "input":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 295
    .local v0, "descriptor":Landroid/content/res/AssetFileDescriptor;
    invoke-interface {p1}, Lokio/BufferedSink;->outputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 298
    .local v3, "output":Ljava/io/OutputStream;
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$UploadEntity;->this$0:Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;

    iget-object v1, v1, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v4, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$UploadEntity;->file:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string/jumbo v5, "r"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 299
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v2

    .line 300
    iget-object v6, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$UploadEntity;->this$0:Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;

    .line 301
    .local v6, "progressCallback":Lcom/vkcoffee/android/upload/UploadTask;
    iget-object v1, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$UploadEntity;->range:Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;

    iget-wide v4, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$UploadEntity;->uploadedLength:J

    invoke-virtual/range {v1 .. v6}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;JLcom/vkcoffee/android/upload/UploadTask;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    if-eqz v2, :cond_0

    .line 308
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 313
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 314
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 317
    :cond_1
    return-void

    .line 309
    :catch_0
    move-exception v7

    .line 310
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "vk"

    invoke-static {v1, v7}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 302
    .end local v6    # "progressCallback":Lcom/vkcoffee/android/upload/UploadTask;
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 303
    .local v7, "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v1, "vk"

    invoke-static {v1, v7}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 304
    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 306
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    if-eqz v2, :cond_2

    .line 308
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 313
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 314
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_3
    throw v1

    .line 309
    :catch_2
    move-exception v7

    .line 310
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "vk"

    invoke-static {v4, v7}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

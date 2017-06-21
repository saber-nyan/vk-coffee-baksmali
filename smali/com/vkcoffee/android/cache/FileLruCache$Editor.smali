.class public final Lcom/vkcoffee/android/cache/FileLruCache$Editor;
.super Ljava/lang/Object;
.source "FileLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/cache/FileLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation


# instance fields
.field public final file:Ljava/io/File;

.field public final key:Ljava/lang/String;

.field final synthetic this$0:Lcom/vkcoffee/android/cache/FileLruCache;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/cache/FileLruCache;Ljava/lang/String;)V
    .locals 2
    .param p1, "this$0"    # Lcom/vkcoffee/android/cache/FileLruCache;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    iput-object p1, p0, Lcom/vkcoffee/android/cache/FileLruCache$Editor;->this$0:Lcom/vkcoffee/android/cache/FileLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p2, p0, Lcom/vkcoffee/android/cache/FileLruCache$Editor;->key:Ljava/lang/String;

    .line 137
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/vkcoffee/android/cache/FileLruCache;->mRootPath:Ljava/io/File;

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vkcoffee/android/cache/FileLruCache$Editor;->file:Ljava/io/File;

    .line 138
    iget-object v0, p0, Lcom/vkcoffee/android/cache/FileLruCache$Editor;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/vkcoffee/android/cache/FileLruCache$Editor;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Unable to create file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    return-void
.end method


# virtual methods
.method public commit()Lcom/vkcoffee/android/cache/FileLruCache$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/vkcoffee/android/cache/FileLruCache$Editor;->this$0:Lcom/vkcoffee/android/cache/FileLruCache;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/vkcoffee/android/cache/FileLruCache;->addEntry(Lcom/vkcoffee/android/cache/FileLruCache$Editor;J)Lcom/vkcoffee/android/cache/FileLruCache$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 3

    .prologue
    .line 147
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/vkcoffee/android/cache/FileLruCache$Editor;->file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "This should never happen!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

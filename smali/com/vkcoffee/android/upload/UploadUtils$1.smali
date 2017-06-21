.class final Lcom/vkcoffee/android/upload/UploadUtils$1;
.super Ljava/lang/Object;
.source "UploadUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/upload/UploadUtils;->doCopyFromRestrictedProviderAsync(Ljava/util/ArrayList;Lcom/vkcoffee/android/upload/UploadUtils$CopiesListener;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$copiesListener:Lcom/vkcoffee/android/upload/UploadUtils$CopiesListener;

.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$uris:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/vkcoffee/android/upload/UploadUtils$CopiesListener;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/vkcoffee/android/upload/UploadUtils$1;->val$ctx:Landroid/content/Context;

    iput-object p2, p0, Lcom/vkcoffee/android/upload/UploadUtils$1;->val$uris:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/vkcoffee/android/upload/UploadUtils$1;->val$copiesListener:Lcom/vkcoffee/android/upload/UploadUtils$CopiesListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 70
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v5, "newUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v9, p0, Lcom/vkcoffee/android/upload/UploadUtils$1;->val$ctx:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v9

    const-string/jumbo v10, "upload"

    invoke-direct {v1, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 73
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v9

    if-nez v9, :cond_0

    .line 74
    new-instance v9, Ljava/lang/RuntimeException;

    const-string/jumbo v10, "Cache dir does not exist"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v1    # "dir":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 103
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "vk"

    const-string/jumbo v10, "Error copying files from a restricted provider"

    invoke-static {v9, v10, v2}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    invoke-static {}, Lcom/vkcoffee/android/upload/UploadUtils;->access$000()Landroid/os/Handler;

    move-result-object v9

    new-instance v10, Lcom/vkcoffee/android/upload/UploadUtils$1$2;

    invoke-direct {v10, p0, v2}, Lcom/vkcoffee/android/upload/UploadUtils$1$2;-><init>(Lcom/vkcoffee/android/upload/UploadUtils$1;Ljava/lang/Exception;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 76
    .restart local v1    # "dir":Ljava/io/File;
    :cond_0
    :try_start_1
    iget-object v9, p0, Lcom/vkcoffee/android/upload/UploadUtils$1;->val$uris:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .line 77
    .local v8, "uri":Landroid/net/Uri;
    new-instance v3, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/vkcoffee/android/api/VKAPIRequest;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ".tmp"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v1, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 78
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 79
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 81
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 82
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 83
    .local v6, "out":Ljava/io/FileOutputStream;
    iget-object v10, p0, Lcom/vkcoffee/android/upload/UploadUtils$1;->val$ctx:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 84
    .local v4, "in":Ljava/io/InputStream;
    if-nez v4, :cond_2

    .line 85
    new-instance v9, Ljava/lang/RuntimeException;

    const-string/jumbo v10, "Error open stream"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 88
    :cond_2
    const/16 v10, 0x2800

    new-array v0, v10, [B

    .line 89
    .local v0, "buf":[B
    :goto_2
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, "read":I
    if-lez v7, :cond_3

    .line 90
    const/4 v10, 0x0

    invoke-virtual {v6, v0, v10, v7}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_2

    .line 92
    :cond_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 93
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 94
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "file://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 96
    .end local v0    # "buf":[B
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .end local v7    # "read":I
    .end local v8    # "uri":Landroid/net/Uri;
    :cond_4
    invoke-static {}, Lcom/vkcoffee/android/upload/UploadUtils;->access$000()Landroid/os/Handler;

    move-result-object v9

    new-instance v10, Lcom/vkcoffee/android/upload/UploadUtils$1$1;

    invoke-direct {v10, p0, v5}, Lcom/vkcoffee/android/upload/UploadUtils$1$1;-><init>(Lcom/vkcoffee/android/upload/UploadUtils$1;Ljava/util/ArrayList;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

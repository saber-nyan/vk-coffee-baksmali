.class Lcom/vkcoffee/android/ui/GifView$1;
.super Ljava/lang/Object;
.source "GifView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/GifView;->loadURL(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/GifView;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/GifView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/GifView;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/vkcoffee/android/ui/GifView$1;->this$0:Lcom/vkcoffee/android/ui/GifView;

    iput-object p2, p0, Lcom/vkcoffee/android/ui/GifView$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 110
    :try_start_0
    const-string/jumbo v14, "vk"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Loading: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/GifView$1;->val$url:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v12, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/ui/GifView$1;->val$url:Ljava/lang/String;

    invoke-direct {v12, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 112
    .local v12, "u":Ljava/net/URL;
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .line 113
    .local v3, "conn":Ljava/net/URLConnection;
    invoke-virtual {v3}, Ljava/net/URLConnection;->connect()V

    .line 114
    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v14

    const-string/jumbo v15, ".vkontakte"

    invoke-direct {v4, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 115
    .local v4, "dir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_0

    .line 116
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 118
    :cond_0
    new-instance v7, Ljava/io/File;

    const-string/jumbo v14, ".nomedia"

    invoke-direct {v7, v4, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 119
    .local v7, "nomedia":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_1

    .line 120
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 122
    :cond_1
    new-instance v5, Ljava/io/File;

    const-string/jumbo v14, "tmp.gif"

    invoke-direct {v5, v4, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 123
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 124
    invoke-virtual {v3}, Ljava/net/URLConnection;->getContentLength()I

    move-result v14

    const/high16 v15, 0x3200000

    if-le v14, v15, :cond_3

    .line 125
    new-instance v14, Ljava/io/IOException;

    const-string/jumbo v15, "too big"

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v3    # "conn":Ljava/net/URLConnection;
    .end local v4    # "dir":Ljava/io/File;
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "nomedia":Ljava/io/File;
    .end local v12    # "u":Ljava/net/URL;
    :catch_0
    move-exception v13

    .line 155
    .local v13, "x":Ljava/lang/Exception;
    const-string/jumbo v14, "vk"

    invoke-static {v14, v13}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/ui/GifView$1;->this$0:Lcom/vkcoffee/android/ui/GifView;

    const/4 v15, 0x1

    invoke-static {v14, v15}, Lcom/vkcoffee/android/ui/GifView;->access$502(Lcom/vkcoffee/android/ui/GifView;Z)Z

    .line 157
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/ui/GifView$1;->this$0:Lcom/vkcoffee/android/ui/GifView;

    invoke-virtual {v14}, Lcom/vkcoffee/android/ui/GifView;->postInvalidate()V

    .line 158
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/ui/GifView$1;->this$0:Lcom/vkcoffee/android/ui/GifView;

    invoke-static {v14}, Lcom/vkcoffee/android/ui/GifView;->access$100(Lcom/vkcoffee/android/ui/GifView;)Lcom/vkcoffee/android/ui/GifView$ProgressCallback;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 159
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/ui/GifView$1;->this$0:Lcom/vkcoffee/android/ui/GifView;

    invoke-static {v14}, Lcom/vkcoffee/android/ui/GifView;->access$100(Lcom/vkcoffee/android/ui/GifView;)Lcom/vkcoffee/android/ui/GifView$ProgressCallback;

    move-result-object v14

    invoke-interface {v14}, Lcom/vkcoffee/android/ui/GifView$ProgressCallback;->hideProgressBar()V

    .line 162
    .end local v13    # "x":Ljava/lang/Exception;
    :cond_2
    :goto_0
    return-void

    .line 127
    .restart local v3    # "conn":Ljava/net/URLConnection;
    .restart local v4    # "dir":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "nomedia":Ljava/io/File;
    .restart local v12    # "u":Ljava/net/URL;
    :cond_3
    :try_start_1
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 128
    .local v10, "out":Ljava/io/FileOutputStream;
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 129
    .local v6, "in":Ljava/io/InputStream;
    const/16 v14, 0x2800

    new-array v2, v14, [B

    .line 130
    .local v2, "buf":[B
    const/4 v11, 0x0

    .line 131
    .local v11, "r":I
    const-wide/16 v8, 0x0

    .line 132
    .local v8, "lt":J
    :cond_4
    :goto_1
    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I

    move-result v11

    if-lez v11, :cond_6

    .line 133
    const/4 v14, 0x0

    invoke-virtual {v10, v2, v14, v11}, Ljava/io/FileOutputStream;->write([BII)V

    .line 134
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/ui/GifView$1;->this$0:Lcom/vkcoffee/android/ui/GifView;

    invoke-static {v14}, Lcom/vkcoffee/android/ui/GifView;->access$000(Lcom/vkcoffee/android/ui/GifView;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 135
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/ui/GifView$1;->this$0:Lcom/vkcoffee/android/ui/GifView;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/vkcoffee/android/ui/GifView;->load(Ljava/lang/String;)V

    .line 137
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/ui/GifView$1;->this$0:Lcom/vkcoffee/android/ui/GifView;

    invoke-static {v14}, Lcom/vkcoffee/android/ui/GifView;->access$100(Lcom/vkcoffee/android/ui/GifView;)Lcom/vkcoffee/android/ui/GifView$ProgressCallback;

    move-result-object v14

    if-eqz v14, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v8

    const-wide/16 v16, 0x3e8

    cmp-long v14, v14, v16

    if-lez v14, :cond_4

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 139
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/ui/GifView$1;->this$0:Lcom/vkcoffee/android/ui/GifView;

    invoke-static {v14}, Lcom/vkcoffee/android/ui/GifView;->access$100(Lcom/vkcoffee/android/ui/GifView;)Lcom/vkcoffee/android/ui/GifView$ProgressCallback;

    move-result-object v14

    invoke-virtual {v10}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v15

    invoke-virtual {v15}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v15, v0

    invoke-virtual {v3}, Ljava/net/URLConnection;->getContentLength()I

    move-result v16

    invoke-interface/range {v14 .. v16}, Lcom/vkcoffee/android/ui/GifView$ProgressCallback;->setProgress(II)V

    goto :goto_1

    .line 142
    :cond_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 143
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 144
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/ui/GifView$1;->this$0:Lcom/vkcoffee/android/ui/GifView;

    invoke-static {v14}, Lcom/vkcoffee/android/ui/GifView;->access$100(Lcom/vkcoffee/android/ui/GifView;)Lcom/vkcoffee/android/ui/GifView$ProgressCallback;

    move-result-object v14

    if-eqz v14, :cond_7

    .line 145
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/ui/GifView$1;->this$0:Lcom/vkcoffee/android/ui/GifView;

    invoke-static {v14}, Lcom/vkcoffee/android/ui/GifView;->access$100(Lcom/vkcoffee/android/ui/GifView;)Lcom/vkcoffee/android/ui/GifView$ProgressCallback;

    move-result-object v14

    invoke-interface {v14}, Lcom/vkcoffee/android/ui/GifView$ProgressCallback;->hideProgressBar()V

    .line 147
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/ui/GifView$1;->this$0:Lcom/vkcoffee/android/ui/GifView;

    const/4 v15, 0x1

    invoke-static {v14, v15}, Lcom/vkcoffee/android/ui/GifView;->access$202(Lcom/vkcoffee/android/ui/GifView;Z)Z

    .line 148
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/ui/GifView$1;->this$0:Lcom/vkcoffee/android/ui/GifView;

    invoke-static {v14}, Lcom/vkcoffee/android/ui/GifView;->access$300(Lcom/vkcoffee/android/ui/GifView;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 149
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/ui/GifView$1;->this$0:Lcom/vkcoffee/android/ui/GifView;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/vkcoffee/android/ui/GifView;->access$302(Lcom/vkcoffee/android/ui/GifView;Z)Z

    .line 150
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/ui/GifView$1;->this$0:Lcom/vkcoffee/android/ui/GifView;

    invoke-static {v14}, Lcom/vkcoffee/android/ui/GifView;->access$400(Lcom/vkcoffee/android/ui/GifView;)Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 151
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/ui/GifView$1;->this$0:Lcom/vkcoffee/android/ui/GifView;

    invoke-static {v14}, Lcom/vkcoffee/android/ui/GifView;->access$400(Lcom/vkcoffee/android/ui/GifView;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->notify()V

    .line 152
    monitor-exit v15

    goto/16 :goto_0

    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v14
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method

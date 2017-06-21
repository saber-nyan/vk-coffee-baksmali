.class Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;
.super Landroid/os/AsyncTask;
.source "DownloaderSNL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/DownloaderSNL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadSNL"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final YES_ACTION:Ljava/lang/String; = "YES_ACTION"


# instance fields
.field call_method:Landroid/content/BroadcastReceiver;

.field private fileName:Ljava/lang/String;

.field private idDownload:I

.field final synthetic this$0:Lcom/vkcoffee/android/DownloaderSNL;

.field private urlD:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/DownloaderSNL;)V
    .locals 1

    .prologue
    .line 104
    iput-object p1, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->this$0:Lcom/vkcoffee/android/DownloaderSNL;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->idDownload:I

    .line 107
    const-string v0, ""

    iput-object v0, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->fileName:Ljava/lang/String;

    .line 108
    const-string v0, ""

    iput-object v0, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->urlD:Ljava/lang/String;

    .line 110
    new-instance v0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL$1;-><init>(Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;)V

    iput-object v0, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->call_method:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/DownloaderSNL;Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;-><init>(Lcom/vkcoffee/android/DownloaderSNL;)V

    return-void
.end method

.method static synthetic access$3(Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;)I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->idDownload:I

    return v0
.end method

.method static synthetic access$6(Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;)Lcom/vkcoffee/android/DownloaderSNL;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->this$0:Lcom/vkcoffee/android/DownloaderSNL;

    return-object v0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 30
    .param p1, "sUrl"    # [Ljava/lang/String;

    .prologue
    .line 162
    :try_start_0
    new-instance v24, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->urlD:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 163
    .local v24, "url":Ljava/net/URL;
    invoke-virtual/range {v24 .. v24}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    .line 164
    .local v6, "connection":Ljava/net/URLConnection;
    invoke-virtual {v6}, Ljava/net/URLConnection;->connect()V

    .line 165
    invoke-virtual {v6}, Ljava/net/URLConnection;->getContentLength()I

    move-result v11

    .line 167
    .local v11, "fileLength":I
    new-instance v13, Ljava/io/BufferedInputStream;

    invoke-virtual/range {v24 .. v24}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v13, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 169
    .local v13, "input":Ljava/io/InputStream;
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->this$0:Lcom/vkcoffee/android/DownloaderSNL;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/vkcoffee/android/DownloaderSNL;->access$1(Lcom/vkcoffee/android/DownloaderSNL;)Z

    move-result v25

    if-eqz v25, :cond_3

    invoke-static {}, Lcom/vkcoffee/android/cache/AudioCache;->getCacheDir()Ljava/io/File;

    move-result-object v25

    :goto_0
    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    .local v9, "dir":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v25

    if-nez v25, :cond_0

    .line 172
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/io/File;->setWritable(Z)Z

    .line 173
    invoke-virtual {v9}, Ljava/io/File;->mkdir()Z

    .line 175
    :cond_0
    new-instance v16, Ljava/io/FileOutputStream;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->this$0:Lcom/vkcoffee/android/DownloaderSNL;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkcoffee/android/DownloaderSNL;->access$4(Lcom/vkcoffee/android/DownloaderSNL;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->idDownload:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 177
    .local v16, "output":Ljava/io/OutputStream;
    const/16 v25, 0x400

    move/from16 v0, v25

    new-array v8, v0, [B

    .line 178
    .local v8, "data":[B
    const-wide/16 v22, 0x0

    .line 180
    .local v22, "total":J
    const/16 v17, -0x1

    .line 182
    .local v17, "percentDone":I
    const-wide/16 v4, 0x0

    .line 183
    .local v4, "average":J
    const/4 v14, 0x0

    .line 184
    .local v14, "kBytes":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 185
    .local v20, "startDownload":J
    :goto_1
    invoke-virtual {v13, v8}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, "count":I
    const/16 v25, -0x1

    move/from16 v0, v25

    if-ne v7, v0, :cond_4

    .line 204
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->flush()V

    .line 205
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V

    .line 206
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->this$0:Lcom/vkcoffee/android/DownloaderSNL;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/vkcoffee/android/DownloaderSNL;->access$1(Lcom/vkcoffee/android/DownloaderSNL;)Z

    move-result v25

    if-eqz v25, :cond_7

    invoke-static {}, Lcom/vkcoffee/android/cache/AudioCache;->getCacheDir()Ljava/io/File;

    move-result-object v18

    .line 209
    .local v18, "ren":Ljava/io/File;
    :goto_2
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v25

    if-eqz v25, :cond_2

    .line 210
    new-instance v12, Ljava/io/File;

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->this$0:Lcom/vkcoffee/android/DownloaderSNL;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkcoffee/android/DownloaderSNL;->access$4(Lcom/vkcoffee/android/DownloaderSNL;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->idDownload:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-direct {v12, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 211
    .local v12, "from":Ljava/io/File;
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->fileName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 212
    .local v19, "to":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v25

    if-eqz v25, :cond_1

    .line 213
    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 215
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->this$0:Lcom/vkcoffee/android/DownloaderSNL;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/vkcoffee/android/DownloaderSNL;->access$1(Lcom/vkcoffee/android/DownloaderSNL;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v25

    if-eqz v25, :cond_2

    .line 217
    :try_start_1
    sget-object v25, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v26, "DONE"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->this$0:Lcom/vkcoffee/android/DownloaderSNL;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/vkcoffee/android/DownloaderSNL;->access$5(Lcom/vkcoffee/android/DownloaderSNL;)Landroid/content/Context;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/vkcoffee/android/cache/AudioCache;->fillIDsBlocking(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 230
    .end local v12    # "from":Ljava/io/File;
    .end local v19    # "to":Ljava/io/File;
    :cond_2
    :goto_3
    const/16 v25, 0x0

    .end local v4    # "average":J
    .end local v6    # "connection":Ljava/net/URLConnection;
    .end local v7    # "count":I
    .end local v8    # "data":[B
    .end local v9    # "dir":Ljava/io/File;
    .end local v11    # "fileLength":I
    .end local v13    # "input":Ljava/io/InputStream;
    .end local v14    # "kBytes":I
    .end local v16    # "output":Ljava/io/OutputStream;
    .end local v17    # "percentDone":I
    .end local v18    # "ren":Ljava/io/File;
    .end local v20    # "startDownload":J
    .end local v22    # "total":J
    .end local v24    # "url":Ljava/net/URL;
    :goto_4
    return-object v25

    .line 169
    .restart local v6    # "connection":Ljava/net/URLConnection;
    .restart local v11    # "fileLength":I
    .restart local v13    # "input":Ljava/io/InputStream;
    .restart local v24    # "url":Ljava/net/URL;
    :cond_3
    const/16 v25, 0x0

    :try_start_2
    invoke-static/range {v25 .. v25}, Lcom/vkcoffee/android/DirSelect;->getCustomState(I)Ljava/io/File;

    move-result-object v25

    goto/16 :goto_0

    .line 186
    .restart local v4    # "average":J
    .restart local v7    # "count":I
    .restart local v8    # "data":[B
    .restart local v9    # "dir":Ljava/io/File;
    .restart local v14    # "kBytes":I
    .restart local v16    # "output":Ljava/io/OutputStream;
    .restart local v17    # "percentDone":I
    .restart local v20    # "startDownload":J
    .restart local v22    # "total":J
    :cond_4
    add-int/lit8 v14, v14, 0x1

    .line 187
    int-to-long v0, v7

    move-wide/from16 v26, v0

    add-long v22, v22, v26

    .line 188
    const-wide/16 v26, 0x64

    mul-long v26, v26, v22

    int-to-long v0, v11

    move-wide/from16 v28, v0

    div-long v26, v26, v28

    move-wide/from16 v0, v26

    long-to-float v0, v0

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 189
    .local v15, "latestPercentDone":I
    move/from16 v0, v17

    if-eq v0, v15, :cond_5

    .line 190
    move/from16 v17, v15

    .line 191
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->publishProgress([Ljava/lang/Object;)V

    .line 195
    :cond_5
    const-wide/16 v26, 0x12c

    cmp-long v25, v4, v26

    if-ltz v25, :cond_6

    .line 196
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->idDownload:I

    move/from16 v25, v0

    int-to-long v0, v14

    move-wide/from16 v26, v0

    move/from16 v0, v25

    move-wide/from16 v1, v26

    invoke-static {v0, v4, v5, v1, v2}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->speed(IJJ)V

    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 198
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->idDownload:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2, v11}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->size(IJI)V

    .line 199
    const/4 v14, 0x0

    .line 201
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    sub-long v4, v26, v20

    .line 202
    const/16 v25, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v8, v1, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 226
    .end local v4    # "average":J
    .end local v6    # "connection":Ljava/net/URLConnection;
    .end local v7    # "count":I
    .end local v8    # "data":[B
    .end local v9    # "dir":Ljava/io/File;
    .end local v11    # "fileLength":I
    .end local v13    # "input":Ljava/io/InputStream;
    .end local v14    # "kBytes":I
    .end local v15    # "latestPercentDone":I
    .end local v16    # "output":Ljava/io/OutputStream;
    .end local v17    # "percentDone":I
    .end local v20    # "startDownload":J
    .end local v22    # "total":J
    .end local v24    # "url":Ljava/net/URL;
    :catch_0
    move-exception v10

    .line 227
    .local v10, "e":Ljava/lang/Exception;
    sget-object v25, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 228
    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_4

    .line 208
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v4    # "average":J
    .restart local v6    # "connection":Ljava/net/URLConnection;
    .restart local v7    # "count":I
    .restart local v8    # "data":[B
    .restart local v9    # "dir":Ljava/io/File;
    .restart local v11    # "fileLength":I
    .restart local v13    # "input":Ljava/io/InputStream;
    .restart local v14    # "kBytes":I
    .restart local v16    # "output":Ljava/io/OutputStream;
    .restart local v17    # "percentDone":I
    .restart local v20    # "startDownload":J
    .restart local v22    # "total":J
    .restart local v24    # "url":Ljava/net/URL;
    :cond_7
    const/16 v25, 0x0

    :try_start_3
    invoke-static/range {v25 .. v25}, Lcom/vkcoffee/android/DirSelect;->getCustomState(I)Ljava/io/File;

    move-result-object v18

    goto/16 :goto_2

    .line 220
    .restart local v12    # "from":Ljava/io/File;
    .restart local v18    # "ren":Ljava/io/File;
    .restart local v19    # "to":Ljava/io/File;
    :catch_1
    move-exception v10

    .line 221
    .restart local v10    # "e":Ljava/lang/Exception;
    sget-object v25, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "NOT DONE: "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4
    .param p1, "unused"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 245
    iget-object v0, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->this$0:Lcom/vkcoffee/android/DownloaderSNL;

    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->this$0:Lcom/vkcoffee/android/DownloaderSNL;

    invoke-static {v2}, Lcom/vkcoffee/android/DownloaderSNL;->access$5(Lcom/vkcoffee/android/DownloaderSNL;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/vkcoffee/android/DownloaderSNL;->access$8(Lcom/vkcoffee/android/DownloaderSNL;Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 246
    iget-object v0, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->this$0:Lcom/vkcoffee/android/DownloaderSNL;

    invoke-static {v0}, Lcom/vkcoffee/android/DownloaderSNL;->access$0(Lcom/vkcoffee/android/DownloaderSNL;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v0, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->this$0:Lcom/vkcoffee/android/DownloaderSNL;

    invoke-static {v0}, Lcom/vkcoffee/android/DownloaderSNL;->access$1(Lcom/vkcoffee/android/DownloaderSNL;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u0417\u0430\u0433\u0440\u0443\u0437\u043a\u0430 \u0430\u0443\u0434\u0438\u043e \u0432 \u043a\u044d\u0448"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 247
    iget-object v0, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->this$0:Lcom/vkcoffee/android/DownloaderSNL;

    invoke-static {v0}, Lcom/vkcoffee/android/DownloaderSNL;->access$0(Lcom/vkcoffee/android/DownloaderSNL;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v1, "\u0417\u0430\u0433\u0440\u0443\u0437\u043a\u0430 \u0437\u0430\u0432\u0435\u0440\u0448\u0435\u043d\u0430 :)"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 249
    iget-object v0, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->this$0:Lcom/vkcoffee/android/DownloaderSNL;

    invoke-static {v0}, Lcom/vkcoffee/android/DownloaderSNL;->access$2(Lcom/vkcoffee/android/DownloaderSNL;)Landroid/app/NotificationManager;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->idDownload:I

    iget-object v2, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->this$0:Lcom/vkcoffee/android/DownloaderSNL;

    invoke-static {v2}, Lcom/vkcoffee/android/DownloaderSNL;->access$0(Lcom/vkcoffee/android/DownloaderSNL;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 250
    iget-object v0, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->this$0:Lcom/vkcoffee/android/DownloaderSNL;

    invoke-static {v0}, Lcom/vkcoffee/android/DownloaderSNL;->access$2(Lcom/vkcoffee/android/DownloaderSNL;)Landroid/app/NotificationManager;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->idDownload:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 252
    iget-object v0, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->this$0:Lcom/vkcoffee/android/DownloaderSNL;

    invoke-static {v0}, Lcom/vkcoffee/android/DownloaderSNL;->access$9(Lcom/vkcoffee/android/DownloaderSNL;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v0, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->this$0:Lcom/vkcoffee/android/DownloaderSNL;

    invoke-static {v0}, Lcom/vkcoffee/android/DownloaderSNL;->access$1(Lcom/vkcoffee/android/DownloaderSNL;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u0417\u0430\u0433\u0440\u0443\u0437\u043a\u0430 \u0430\u0443\u0434\u0438\u043e \u0432 \u043a\u044d\u0448"

    :goto_1
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 253
    iget-object v0, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->this$0:Lcom/vkcoffee/android/DownloaderSNL;

    invoke-static {v0}, Lcom/vkcoffee/android/DownloaderSNL;->access$9(Lcom/vkcoffee/android/DownloaderSNL;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v1, "\u0417\u0430\u0433\u0440\u0443\u0437\u043a\u0430 \u0437\u0430\u0432\u0435\u0440\u0448\u0435\u043d\u0430 :)"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 254
    iget-object v0, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->this$0:Lcom/vkcoffee/android/DownloaderSNL;

    invoke-static {v0}, Lcom/vkcoffee/android/DownloaderSNL;->access$9(Lcom/vkcoffee/android/DownloaderSNL;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const v1, 0x7f02021a

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 255
    iget-object v0, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->this$0:Lcom/vkcoffee/android/DownloaderSNL;

    invoke-static {v0}, Lcom/vkcoffee/android/DownloaderSNL;->access$9(Lcom/vkcoffee/android/DownloaderSNL;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v3, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 256
    iget-object v0, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->this$0:Lcom/vkcoffee/android/DownloaderSNL;

    invoke-static {v0}, Lcom/vkcoffee/android/DownloaderSNL;->access$2(Lcom/vkcoffee/android/DownloaderSNL;)Landroid/app/NotificationManager;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->idDownload:I

    iget-object v2, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->this$0:Lcom/vkcoffee/android/DownloaderSNL;

    invoke-static {v2}, Lcom/vkcoffee/android/DownloaderSNL;->access$9(Lcom/vkcoffee/android/DownloaderSNL;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 259
    iget-object v0, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->this$0:Lcom/vkcoffee/android/DownloaderSNL;

    invoke-virtual {v0}, Lcom/vkcoffee/android/DownloaderSNL;->stop()V

    .line 260
    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->fileName:Ljava/lang/String;

    goto :goto_0

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->fileName:Ljava/lang/String;

    goto :goto_1
.end method

.method protected onPreExecute()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 130
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 131
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v3, "Downloads"

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "downloadId"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->idDownload:I

    .line 132
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v3, "Downloads"

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v5, "Downloads"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "downloadId"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->fileName:Ljava/lang/String;

    .line 133
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v3, "Downloads"

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "url"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v5, "Downloads"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "downloadId"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->urlD:Ljava/lang/String;

    .line 135
    iget-object v3, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->this$0:Lcom/vkcoffee/android/DownloaderSNL;

    iget-object v2, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->this$0:Lcom/vkcoffee/android/DownloaderSNL;

    invoke-static {v2}, Lcom/vkcoffee/android/DownloaderSNL;->access$5(Lcom/vkcoffee/android/DownloaderSNL;)Landroid/content/Context;

    move-result-object v2

    const-string v4, "notification"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    invoke-static {v3, v2}, Lcom/vkcoffee/android/DownloaderSNL;->access$6(Lcom/vkcoffee/android/DownloaderSNL;Landroid/app/NotificationManager;)V

    .line 136
    iget-object v2, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->this$0:Lcom/vkcoffee/android/DownloaderSNL;

    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v4, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->this$0:Lcom/vkcoffee/android/DownloaderSNL;

    invoke-static {v4}, Lcom/vkcoffee/android/DownloaderSNL;->access$5(Lcom/vkcoffee/android/DownloaderSNL;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/vkcoffee/android/DownloaderSNL;->access$7(Lcom/vkcoffee/android/DownloaderSNL;Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 137
    iget-object v2, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->this$0:Lcom/vkcoffee/android/DownloaderSNL;

    invoke-static {v2}, Lcom/vkcoffee/android/DownloaderSNL;->access$0(Lcom/vkcoffee/android/DownloaderSNL;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    iget-object v2, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->this$0:Lcom/vkcoffee/android/DownloaderSNL;

    invoke-static {v2}, Lcom/vkcoffee/android/DownloaderSNL;->access$1(Lcom/vkcoffee/android/DownloaderSNL;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "\u0417\u0430\u0433\u0440\u0443\u0437\u043a\u0430 \u0430\u0443\u0434\u0438\u043e \u0432 \u043a\u044d\u0448"

    :goto_0
    invoke-virtual {v3, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 138
    const-string v3, "\u041f\u043e\u0434\u0433\u043e\u0442\u043e\u0432\u043a\u0430..."

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 139
    invoke-virtual {v2, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 140
    const v3, 0x1080081

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 142
    iget-object v2, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->this$0:Lcom/vkcoffee/android/DownloaderSNL;

    invoke-static {v2}, Lcom/vkcoffee/android/DownloaderSNL;->access$5(Lcom/vkcoffee/android/DownloaderSNL;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->call_method:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "YES_ACTION"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 143
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 144
    .local v1, "yesReceive":Landroid/content/Intent;
    const-string v2, "YES_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    iget v2, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->idDownload:I

    invoke-static {v2}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->ID(I)V

    .line 148
    iget-object v2, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->this$0:Lcom/vkcoffee/android/DownloaderSNL;

    invoke-static {v2}, Lcom/vkcoffee/android/DownloaderSNL;->access$5(Lcom/vkcoffee/android/DownloaderSNL;)Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->idDownload:I

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 150
    .local v0, "pendingIntentYes":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->this$0:Lcom/vkcoffee/android/DownloaderSNL;

    invoke-static {v2}, Lcom/vkcoffee/android/DownloaderSNL;->access$0(Lcom/vkcoffee/android/DownloaderSNL;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 154
    iget-object v2, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->this$0:Lcom/vkcoffee/android/DownloaderSNL;

    invoke-static {v2}, Lcom/vkcoffee/android/DownloaderSNL;->access$0(Lcom/vkcoffee/android/DownloaderSNL;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3, v6, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 156
    iget-object v2, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->this$0:Lcom/vkcoffee/android/DownloaderSNL;

    invoke-static {v2}, Lcom/vkcoffee/android/DownloaderSNL;->access$2(Lcom/vkcoffee/android/DownloaderSNL;)Landroid/app/NotificationManager;

    move-result-object v2

    iget v3, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->idDownload:I

    iget-object v4, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->this$0:Lcom/vkcoffee/android/DownloaderSNL;

    invoke-static {v4}, Lcom/vkcoffee/android/DownloaderSNL;->access$0(Lcom/vkcoffee/android/DownloaderSNL;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 157
    return-void

    .line 137
    .end local v0    # "pendingIntentYes":Landroid/app/PendingIntent;
    .end local v1    # "yesReceive":Landroid/content/Intent;
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->fileName:Ljava/lang/String;

    goto :goto_0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 4
    .param p1, "progress"    # [Ljava/lang/Integer;

    .prologue
    const/4 v3, 0x0

    .line 234
    new-array v0, v3, [Ljava/lang/Integer;

    invoke-super {p0, v0}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 235
    iget-object v0, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->this$0:Lcom/vkcoffee/android/DownloaderSNL;

    invoke-static {v0}, Lcom/vkcoffee/android/DownloaderSNL;->access$0(Lcom/vkcoffee/android/DownloaderSNL;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v0, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->this$0:Lcom/vkcoffee/android/DownloaderSNL;

    invoke-static {v0}, Lcom/vkcoffee/android/DownloaderSNL;->access$1(Lcom/vkcoffee/android/DownloaderSNL;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u0417\u0430\u0433\u0440\u0443\u0437\u043a\u0430 \u0430\u0443\u0434\u0438\u043e \u0432 \u043a\u044d\u0448"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 236
    iget-object v0, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->this$0:Lcom/vkcoffee/android/DownloaderSNL;

    invoke-static {v0}, Lcom/vkcoffee/android/DownloaderSNL;->access$0(Lcom/vkcoffee/android/DownloaderSNL;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/16 v1, 0x64

    aget-object v2, p1, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 237
    iget-object v0, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->this$0:Lcom/vkcoffee/android/DownloaderSNL;

    invoke-static {v0}, Lcom/vkcoffee/android/DownloaderSNL;->access$0(Lcom/vkcoffee/android/DownloaderSNL;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->idDownload:I

    invoke-static {v2}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->getSize(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "; C\u043a\u043e\u0440\u043e\u0441\u0442\u044c: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->idDownload:I

    invoke-static {v2}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->getSpeed(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 238
    iget-object v0, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->this$0:Lcom/vkcoffee/android/DownloaderSNL;

    invoke-static {v0}, Lcom/vkcoffee/android/DownloaderSNL;->access$0(Lcom/vkcoffee/android/DownloaderSNL;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 240
    iget-object v0, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->this$0:Lcom/vkcoffee/android/DownloaderSNL;

    invoke-static {v0}, Lcom/vkcoffee/android/DownloaderSNL;->access$2(Lcom/vkcoffee/android/DownloaderSNL;)Landroid/app/NotificationManager;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->idDownload:I

    iget-object v2, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->this$0:Lcom/vkcoffee/android/DownloaderSNL;

    invoke-static {v2}, Lcom/vkcoffee/android/DownloaderSNL;->access$0(Lcom/vkcoffee/android/DownloaderSNL;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 241
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->fileName:Ljava/lang/String;

    goto :goto_0
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

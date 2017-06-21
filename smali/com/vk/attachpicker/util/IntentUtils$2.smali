.class final Lcom/vk/attachpicker/util/IntentUtils$2;
.super Lcom/vk/attachpicker/util/AsyncTask;
.source "IntentUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/util/IntentUtils;->downloadUri(Landroid/app/Activity;Landroid/net/Uri;Lcom/vk/attachpicker/util/IntentUtils$ResolveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vk/attachpicker/util/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Float;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private dialog:Landroid/app/ProgressDialog;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$resolveCallback:Lcom/vk/attachpicker/util/IntentUtils$ResolveCallback;

.field final synthetic val$selectedUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/vk/attachpicker/util/IntentUtils$ResolveCallback;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/vk/attachpicker/util/IntentUtils$2;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/vk/attachpicker/util/IntentUtils$2;->val$resolveCallback:Lcom/vk/attachpicker/util/IntentUtils$ResolveCallback;

    iput-object p3, p0, Lcom/vk/attachpicker/util/IntentUtils$2;->val$selectedUri:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/vk/attachpicker/util/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Ljava/io/File;
    .locals 12
    .param p1, "args"    # [Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 244
    invoke-static {}, Lcom/vk/attachpicker/util/FileUtils;->getTempFile()Ljava/io/File;

    move-result-object v3

    .line 245
    .local v3, "file":Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 246
    .local v4, "fout":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 249
    .local v5, "in":Ljava/io/InputStream;
    :try_start_0
    iget-object v7, p0, Lcom/vk/attachpicker/util/IntentUtils$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/vk/attachpicker/util/IntentUtils$2;->val$selectedUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 251
    const/16 v7, 0x400

    new-array v1, v7, [B

    .line 253
    .local v1, "data":[B
    :goto_0
    const/4 v7, 0x0

    const/16 v8, 0x400

    invoke-virtual {v5, v1, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .local v0, "count":I
    const/4 v7, -0x1

    if-eq v0, v7, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/vk/attachpicker/util/IntentUtils$2;->isCanceled()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 260
    :cond_0
    invoke-static {v3}, Lcom/vk/attachpicker/util/IntentUtils;->access$000(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v3}, Lcom/vk/attachpicker/util/IntentUtils;->access$100(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    const/4 v6, 0x1

    .line 262
    .local v6, "success":Z
    :cond_2
    if-nez v6, :cond_8

    .line 263
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Not an media"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    .end local v0    # "count":I
    .end local v1    # "data":[B
    .end local v6    # "success":Z
    :catch_0
    move-exception v2

    .line 266
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {v3}, Lcom/vk/attachpicker/util/FileUtils;->deleteFile(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    const/4 v6, 0x0

    .line 269
    .restart local v6    # "success":Z
    if-eqz v5, :cond_3

    .line 271
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 276
    :cond_3
    :goto_1
    if-eqz v4, :cond_4

    .line 278
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 287
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_4
    :goto_2
    if-eqz v6, :cond_a

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_a

    .line 290
    .end local v3    # "file":Ljava/io/File;
    :goto_3
    return-object v3

    .line 257
    .end local v6    # "success":Z
    .restart local v0    # "count":I
    .restart local v1    # "data":[B
    .restart local v3    # "file":Ljava/io/File;
    :cond_5
    const/4 v7, 0x0

    :try_start_4
    invoke-virtual {v4, v1, v7, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 269
    .end local v0    # "count":I
    .end local v1    # "data":[B
    :catchall_0
    move-exception v7

    if-eqz v5, :cond_6

    .line 271
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 276
    :cond_6
    :goto_4
    if-eqz v4, :cond_7

    .line 278
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 281
    :cond_7
    :goto_5
    throw v7

    .line 269
    .restart local v0    # "count":I
    .restart local v1    # "data":[B
    .restart local v6    # "success":Z
    :cond_8
    if-eqz v5, :cond_9

    .line 271
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 276
    :cond_9
    :goto_6
    if-eqz v4, :cond_4

    .line 278
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_2

    .line 279
    :catch_1
    move-exception v7

    goto :goto_2

    .line 290
    .end local v0    # "count":I
    .end local v1    # "data":[B
    :cond_a
    const/4 v3, 0x0

    goto :goto_3

    .line 272
    .restart local v0    # "count":I
    .restart local v1    # "data":[B
    :catch_2
    move-exception v7

    goto :goto_6

    .end local v0    # "count":I
    .end local v1    # "data":[B
    .restart local v2    # "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v7

    goto :goto_1

    .line 279
    :catch_4
    move-exception v7

    goto :goto_2

    .line 272
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v6    # "success":Z
    :catch_5
    move-exception v8

    goto :goto_4

    .line 279
    :catch_6
    move-exception v8

    goto :goto_5
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 219
    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/vk/attachpicker/util/IntentUtils$2;->doInBackground([Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$onPreExecute$160(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog1"    # Landroid/content/DialogInterface;

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/vk/attachpicker/util/IntentUtils$2;->cancel()V

    return-void
.end method

.method protected onPostExecute(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/vk/attachpicker/util/IntentUtils$2;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 234
    if-eqz p1, :cond_0

    .line 235
    iget-object v0, p0, Lcom/vk/attachpicker/util/IntentUtils$2;->val$resolveCallback:Lcom/vk/attachpicker/util/IntentUtils$ResolveCallback;

    invoke-interface {v0, p1}, Lcom/vk/attachpicker/util/IntentUtils$ResolveCallback;->onResolved(Ljava/io/File;)V

    .line 239
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/util/IntentUtils$2;->val$resolveCallback:Lcom/vk/attachpicker/util/IntentUtils$ResolveCallback;

    invoke-interface {v0}, Lcom/vk/attachpicker/util/IntentUtils$ResolveCallback;->onError()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 219
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/vk/attachpicker/util/IntentUtils$2;->onPostExecute(Ljava/io/File;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/vk/attachpicker/util/IntentUtils$2;->val$activity:Landroid/app/Activity;

    const v1, 0x7f0805c8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vk/attachpicker/widget/LoadingDialog;->getInstance(Landroid/content/Context;Ljava/lang/Integer;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/util/IntentUtils$2;->dialog:Landroid/app/ProgressDialog;

    .line 226
    iget-object v0, p0, Lcom/vk/attachpicker/util/IntentUtils$2;->dialog:Landroid/app/ProgressDialog;

    invoke-static {p0}, Lcom/vk/attachpicker/util/IntentUtils$2$$Lambda$1;->lambdaFactory$(Lcom/vk/attachpicker/util/IntentUtils$2;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 227
    iget-object v0, p0, Lcom/vk/attachpicker/util/IntentUtils$2;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 228
    return-void
.end method

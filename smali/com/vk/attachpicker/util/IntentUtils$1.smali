.class final Lcom/vk/attachpicker/util/IntentUtils$1;
.super Lcom/vk/attachpicker/util/AsyncTask;
.source "IntentUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/util/IntentUtils;->checkIsMedia(Landroid/app/Activity;Ljava/io/File;Lcom/vk/attachpicker/util/IntentUtils$ResolveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vk/attachpicker/util/AsyncTask",
        "<",
        "Ljava/io/File;",
        "Ljava/lang/Float;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private dialog:Landroid/app/ProgressDialog;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$resolveCallback:Lcom/vk/attachpicker/util/IntentUtils$ResolveCallback;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/vk/attachpicker/util/IntentUtils$ResolveCallback;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/vk/attachpicker/util/IntentUtils$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/vk/attachpicker/util/IntentUtils$1;->val$resolveCallback:Lcom/vk/attachpicker/util/IntentUtils$ResolveCallback;

    iput-object p3, p0, Lcom/vk/attachpicker/util/IntentUtils$1;->val$file:Ljava/io/File;

    invoke-direct {p0}, Lcom/vk/attachpicker/util/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/io/File;)Ljava/io/File;
    .locals 6
    .param p1, "args"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 208
    iget-object v1, p0, Lcom/vk/attachpicker/util/IntentUtils$1;->val$file:Ljava/io/File;

    invoke-static {v1}, Lcom/vk/attachpicker/util/IntentUtils;->access$000(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/vk/attachpicker/util/IntentUtils$1;->val$file:Ljava/io/File;

    invoke-static {v1}, Lcom/vk/attachpicker/util/IntentUtils;->access$100(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 209
    .local v0, "success":Z
    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/vk/attachpicker/util/IntentUtils$1;->val$file:Ljava/io/File;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/vk/attachpicker/util/IntentUtils$1;->val$file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 210
    iget-object v1, p0, Lcom/vk/attachpicker/util/IntentUtils$1;->val$file:Ljava/io/File;

    .line 212
    :goto_1
    return-object v1

    .line 208
    .end local v0    # "success":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 212
    .restart local v0    # "success":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 184
    check-cast p1, [Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/vk/attachpicker/util/IntentUtils$1;->doInBackground([Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$onPreExecute$159(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog1"    # Landroid/content/DialogInterface;

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/vk/attachpicker/util/IntentUtils$1;->cancel()V

    return-void
.end method

.method protected onPostExecute(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/vk/attachpicker/util/IntentUtils$1;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 199
    if-eqz p1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/vk/attachpicker/util/IntentUtils$1;->val$resolveCallback:Lcom/vk/attachpicker/util/IntentUtils$ResolveCallback;

    invoke-interface {v0, p1}, Lcom/vk/attachpicker/util/IntentUtils$ResolveCallback;->onResolved(Ljava/io/File;)V

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/util/IntentUtils$1;->val$resolveCallback:Lcom/vk/attachpicker/util/IntentUtils$ResolveCallback;

    invoke-interface {v0}, Lcom/vk/attachpicker/util/IntentUtils$ResolveCallback;->onError()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 184
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/vk/attachpicker/util/IntentUtils$1;->onPostExecute(Ljava/io/File;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/vk/attachpicker/util/IntentUtils$1;->val$activity:Landroid/app/Activity;

    const v1, 0x7f0805c8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vk/attachpicker/widget/LoadingDialog;->getInstance(Landroid/content/Context;Ljava/lang/Integer;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/util/IntentUtils$1;->dialog:Landroid/app/ProgressDialog;

    .line 191
    iget-object v0, p0, Lcom/vk/attachpicker/util/IntentUtils$1;->dialog:Landroid/app/ProgressDialog;

    invoke-static {p0}, Lcom/vk/attachpicker/util/IntentUtils$1$$Lambda$1;->lambdaFactory$(Lcom/vk/attachpicker/util/IntentUtils$1;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 192
    iget-object v0, p0, Lcom/vk/attachpicker/util/IntentUtils$1;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 193
    return-void
.end method

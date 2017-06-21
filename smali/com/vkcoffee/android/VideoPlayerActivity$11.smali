.class Lcom/vkcoffee/android/VideoPlayerActivity$11;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/VideoPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vkcoffee/android/api/Callback",
        "<",
        "Lcom/vkcoffee/android/api/VideoFile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/VideoPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/VideoPlayerActivity;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/vkcoffee/android/VideoPlayerActivity$11;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 2
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$11;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VideoPlayerActivity;->onError(I)V

    .line 290
    return-void
.end method

.method public success(Lcom/vkcoffee/android/api/VideoFile;)V
    .locals 3
    .param p1, "video"    # Lcom/vkcoffee/android/api/VideoFile;

    .prologue
    .line 272
    if-nez p1, :cond_0

    .line 273
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$11;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    const v1, 0x7f0803aa

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 274
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$11;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-virtual {v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->finish()V

    .line 285
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-boolean v0, p1, Lcom/vkcoffee/android/api/VideoFile;->processing:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/vkcoffee/android/api/VideoFile;->url240:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$11;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VideoPlayerActivity;->onError(I)V

    goto :goto_0

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$11;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v0, p1}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$002(Lcom/vkcoffee/android/VideoPlayerActivity;Lcom/vkcoffee/android/api/VideoFile;)Lcom/vkcoffee/android/api/VideoFile;

    .line 282
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$11;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    iget-object v1, p0, Lcom/vkcoffee/android/VideoPlayerActivity$11;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v1}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$000(Lcom/vkcoffee/android/VideoPlayerActivity;)Lcom/vkcoffee/android/api/VideoFile;

    move-result-object v1

    iget-object v1, v1, Lcom/vkcoffee/android/api/VideoFile;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VideoPlayerActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$11;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$500(Lcom/vkcoffee/android/VideoPlayerActivity;Z)V

    .line 284
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$11;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$1900(Lcom/vkcoffee/android/VideoPlayerActivity;)V

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 268
    check-cast p1, Lcom/vkcoffee/android/api/VideoFile;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/VideoPlayerActivity$11;->success(Lcom/vkcoffee/android/api/VideoFile;)V

    return-void
.end method

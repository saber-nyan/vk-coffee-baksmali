.class Lcom/vkcoffee/android/attachments/VideoAttachment$2;
.super Ljava/lang/Object;
.source "VideoAttachment.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/attachments/VideoAttachment;->lambda$getView$220(Landroid/view/View;)V
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
.field final synthetic this$0:Lcom/vkcoffee/android/attachments/VideoAttachment;

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/attachments/VideoAttachment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/attachments/VideoAttachment$2;->this$0:Lcom/vkcoffee/android/attachments/VideoAttachment;

    iput-object p2, p0, Lcom/vkcoffee/android/attachments/VideoAttachment$2;->val$view:Landroid/view/View;

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 3

    .prologue
    .line 284
    .local p1, "error":Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;, "Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;"
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/VideoAttachment$2;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "API req ERR"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 285
    return-void
.end method

.method public success(Lcom/vkcoffee/android/api/VideoFile;)V
    .locals 3
    .param p1, "video"    # Lcom/vkcoffee/android/api/VideoFile;

    .prologue
    const/4 v2, 0x0

    .line 270
    if-nez p1, :cond_0

    .line 271
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/VideoAttachment$2;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0803aa

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 281
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-boolean v0, p1, Lcom/vkcoffee/android/api/VideoFile;->processing:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/vkcoffee/android/api/VideoFile;->url240:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/VideoAttachment$2;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ERR 4"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/VideoAttachment$2;->this$0:Lcom/vkcoffee/android/attachments/VideoAttachment;

    iput-object p1, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;->vfile:Lcom/vkcoffee/android/api/VideoFile;

    .line 278
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/VideoAttachment$2;->this$0:Lcom/vkcoffee/android/attachments/VideoAttachment;

    iget-object v1, p0, Lcom/vkcoffee/android/attachments/VideoAttachment$2;->val$view:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/attachments/VideoAttachment;->access$0(Lcom/vkcoffee/android/attachments/VideoAttachment;Landroid/view/View;)V

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/api/VideoFile;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/attachments/VideoAttachment$2;->success(Lcom/vkcoffee/android/api/VideoFile;)V

    return-void
.end method

.class Lcom/vkcoffee/android/fragments/news/PollEditorFragment$2;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "PollEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->onDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Lcom/vkcoffee/android/attachments/PollAttachment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/news/PollEditorFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/news/PollEditorFragment;Landroid/app/Fragment;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/app/Fragment;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment$2;->this$0:Lcom/vkcoffee/android/fragments/news/PollEditorFragment;

    .line 357
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public success(Lcom/vkcoffee/android/attachments/PollAttachment;)V
    .locals 3
    .param p1, "poll"    # Lcom/vkcoffee/android/attachments/PollAttachment;

    .prologue
    .line 359
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 360
    .local v0, "result":Landroid/content/Intent;
    const-string v1, "poll"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 361
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment$2;->this$0:Lcom/vkcoffee/android/fragments/news/PollEditorFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 362
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment$2;->this$0:Lcom/vkcoffee/android/fragments/news/PollEditorFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 363
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/attachments/PollAttachment;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment$2;->success(Lcom/vkcoffee/android/attachments/PollAttachment;)V

    return-void
.end method

.class Lcom/vkcoffee/android/fragments/news/PollEditorFragment$3;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "PollEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->onDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/news/PollEditorFragment;

.field private final synthetic val$question:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/news/PollEditorFragment;Landroid/app/Fragment;Ljava/lang/String;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/app/Fragment;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment$3;->this$0:Lcom/vkcoffee/android/fragments/news/PollEditorFragment;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment$3;->val$question:Ljava/lang/String;

    .line 389
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 3

    .prologue
    .line 391
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment$3;->this$0:Lcom/vkcoffee/android/fragments/news/PollEditorFragment;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mPoll:Lcom/vkcoffee/android/attachments/PollAttachment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment$3;->val$question:Ljava/lang/String;

    iput-object v2, v1, Lcom/vkcoffee/android/attachments/PollAttachment;->question:Ljava/lang/String;

    .line 392
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 393
    .local v0, "result":Landroid/content/Intent;
    const-string v1, "poll"

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment$3;->this$0:Lcom/vkcoffee/android/fragments/news/PollEditorFragment;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mPoll:Lcom/vkcoffee/android/attachments/PollAttachment;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 394
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment$3;->this$0:Lcom/vkcoffee/android/fragments/news/PollEditorFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 395
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment$3;->this$0:Lcom/vkcoffee/android/fragments/news/PollEditorFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 396
    return-void
.end method

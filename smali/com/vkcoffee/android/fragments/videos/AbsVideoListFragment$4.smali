.class Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$4;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "AbsVideoListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->addVideo(Lcom/vkcoffee/android/api/VideoFile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;

.field final synthetic val$video:Lcom/vkcoffee/android/api/VideoFile;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;Landroid/content/Context;Lcom/vkcoffee/android/api/VideoFile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$4;->this$0:Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$4;->val$video:Lcom/vkcoffee/android/api/VideoFile;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public success(Ljava/lang/Integer;)V
    .locals 6
    .param p1, "vid"    # Ljava/lang/Integer;

    .prologue
    const/4 v5, 0x0

    .line 291
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$4;->this$0:Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$4;->this$0:Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080587

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$4;->val$video:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v4, v4, Lcom/vkcoffee/android/api/VideoFile;->title:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 292
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$4;->this$0:Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$4;->val$video:Lcom/vkcoffee/android/api/VideoFile;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/videos/Videos;->notifyVideoAdded(Landroid/content/Context;Lcom/vkcoffee/android/api/VideoFile;)V

    .line 293
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 288
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$4;->success(Ljava/lang/Integer;)V

    return-void
.end method

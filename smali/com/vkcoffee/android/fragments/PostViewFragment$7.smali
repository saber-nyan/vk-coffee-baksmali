.class Lcom/vkcoffee/android/fragments/PostViewFragment$7;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "PostViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/PostViewFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/PostViewFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$7;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    .line 1038
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public success(Ljava/lang/Integer;)V
    .locals 7
    .param p1, "vid"    # Ljava/lang/Integer;

    .prologue
    const/4 v6, 0x0

    .line 1040
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$7;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v1

    iget-object v1, v1, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/VideoAttachment;

    .line 1041
    .local v0, "va":Lcom/vkcoffee/android/attachments/VideoAttachment;
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$7;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$7;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080587

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;->title:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1042
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/PostViewFragment$7;->success(Ljava/lang/Integer;)V

    return-void
.end method

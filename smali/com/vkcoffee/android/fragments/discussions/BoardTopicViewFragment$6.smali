.class Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$6;
.super Ljava/lang/Object;
.source "BoardTopicViewFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->showCommentActions(Lcom/vkcoffee/android/api/board/BoardComment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

.field private final synthetic val$acts:Ljava/util/ArrayList;

.field private final synthetic val$comment:Lcom/vkcoffee/android/api/board/BoardComment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;Lcom/vkcoffee/android/api/board/BoardComment;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$6;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$6;->val$comment:Lcom/vkcoffee/android/api/board/BoardComment;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$6;->val$acts:Ljava/util/ArrayList;

    .line 833
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 835
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$6;->val$comment:Lcom/vkcoffee/android/api/board/BoardComment;

    iget-object v2, v2, Lcom/vkcoffee/android/api/board/BoardComment;->linkUrls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_1

    .line 836
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$6;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$6;->val$comment:Lcom/vkcoffee/android/api/board/BoardComment;

    iget-object v2, v2, Lcom/vkcoffee/android/api/board/BoardComment;->linkUrls:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v4, v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->startActivity(Landroid/content/Intent;)V

    .line 866
    :cond_0
    :goto_0
    return-void

    .line 839
    :cond_1
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$6;->val$acts:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$6;->val$comment:Lcom/vkcoffee/android/api/board/BoardComment;

    iget-object v3, v3, Lcom/vkcoffee/android/api/board/BoardComment;->linkUrls:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int v3, p2, v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 840
    .local v0, "act":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "delete"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 846
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$6;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$6;->val$comment:Lcom/vkcoffee/android/api/board/BoardComment;

    invoke-static {v2, v3}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->access$8(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;Lcom/vkcoffee/android/api/board/BoardComment;)V

    goto :goto_0

    .line 840
    :sswitch_1
    const-string v2, "ban"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 853
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$6;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$6;->val$comment:Lcom/vkcoffee/android/api/board/BoardComment;

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->banUser(Lcom/vkcoffee/android/api/board/BoardComment;)V

    goto :goto_0

    .line 840
    :sswitch_2
    const-string v2, "copy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 842
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$6;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/ClipboardManager;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$6;->val$comment:Lcom/vkcoffee/android/api/board/BoardComment;

    iget-object v3, v3, Lcom/vkcoffee/android/api/board/BoardComment;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 843
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$6;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f08053f

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 840
    :sswitch_3
    const-string v2, "edit"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 849
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$6;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$6;->val$comment:Lcom/vkcoffee/android/api/board/BoardComment;

    invoke-static {v2, v3}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->access$9(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;Lcom/vkcoffee/android/api/board/BoardComment;)V

    goto :goto_0

    .line 840
    :sswitch_4
    const-string v2, "liked"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 857
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 858
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "title"

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$6;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    const v4, 0x7f08028e

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 859
    const-string v2, "ltype"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 860
    const-string v2, "lptype"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 861
    const-string v2, "oid"

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$6;->val$comment:Lcom/vkcoffee/android/api/board/BoardComment;

    iget v3, v3, Lcom/vkcoffee/android/api/board/BoardComment;->ownerId:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 862
    const-string v2, "item_id"

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$6;->val$comment:Lcom/vkcoffee/android/api/board/BoardComment;

    iget v3, v3, Lcom/vkcoffee/android/api/board/BoardComment;->id:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 863
    const-class v2, Lcom/vkcoffee/android/fragments/LikesListFragment;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$6;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 840
    :sswitch_data_0
    .sparse-switch
        -0x4f997a55 -> :sswitch_0
        0x17c0f -> :sswitch_1
        0x2eaf75 -> :sswitch_2
        0x2f6e0a -> :sswitch_3
        0x62343ad -> :sswitch_4
    .end sparse-switch
.end method

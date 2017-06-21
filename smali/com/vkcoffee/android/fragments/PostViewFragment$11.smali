.class Lcom/vkcoffee/android/fragments/PostViewFragment$11;
.super Ljava/lang/Object;
.source "PostViewFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/PostViewFragment;->showCommentActions(Lcom/vkcoffee/android/NewsComment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

.field private final synthetic val$acts:Ljava/util/ArrayList;

.field private final synthetic val$comm:Lcom/vkcoffee/android/NewsComment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/PostViewFragment;Ljava/util/ArrayList;Lcom/vkcoffee/android/NewsComment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$11;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$11;->val$acts:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$11;->val$comm:Lcom/vkcoffee/android/NewsComment;

    .line 1196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x0

    .line 1198
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$11;->val$acts:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1200
    .local v0, "act":Ljava/lang/String;
    const-string v2, "profile"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1201
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1202
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "id"

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$11;->val$comm:Lcom/vkcoffee/android/NewsComment;

    iget v3, v3, Lcom/vkcoffee/android/NewsComment;->uid:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1203
    const-class v2, Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$11;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 1254
    .end local v1    # "args":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 1204
    :cond_1
    const-string v2, "reply"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "reply_group"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1205
    :cond_2
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$11;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$11;->val$comm:Lcom/vkcoffee/android/NewsComment;

    const-string v4, "reply_group"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$22(Lcom/vkcoffee/android/fragments/PostViewFragment;Lcom/vkcoffee/android/NewsComment;Z)V

    goto :goto_0

    .line 1206
    :cond_3
    const-string v2, "copy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1207
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$11;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/ClipboardManager;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$11;->val$comm:Lcom/vkcoffee/android/NewsComment;

    iget-object v3, v3, Lcom/vkcoffee/android/NewsComment;->text:Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/vkcoffee/android/DecrEncr;->autoDecryptionView(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/Global;->replaceHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "<br/>"

    const-string v5, "\n"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 1208
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$11;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f08053f

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1209
    :cond_4
    const-string v2, "like"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1210
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$11;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$11;->val$comm:Lcom/vkcoffee/android/NewsComment;

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/fragments/PostViewFragment;->likeComment(Lcom/vkcoffee/android/NewsComment;)V

    goto :goto_0

    .line 1211
    :cond_5
    const-string v2, "liked"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1212
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1213
    .restart local v1    # "args":Landroid/os/Bundle;
    const-string v2, "title"

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$11;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    const v4, 0x7f08028e

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1214
    const-string v2, "ltype"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1215
    const-string v2, "lptype"

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$11;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v3

    iget v3, v3, Lcom/vkcoffee/android/NewsEntry;->type:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1216
    const-string v2, "oid"

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$11;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v3

    iget v3, v3, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1217
    const-string v2, "item_id"

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$11;->val$comm:Lcom/vkcoffee/android/NewsComment;

    iget v3, v3, Lcom/vkcoffee/android/NewsComment;->cid:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1218
    const-class v2, Lcom/vkcoffee/android/fragments/LikesListFragment;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$11;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1219
    .end local v1    # "args":Landroid/os/Bundle;
    :cond_6
    const-string v2, "delete"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1220
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$11;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$11;->val$comm:Lcom/vkcoffee/android/NewsComment;

    iget v3, v3, Lcom/vkcoffee/android/NewsComment;->cid:I

    invoke-static {v2, v3}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$23(Lcom/vkcoffee/android/fragments/PostViewFragment;I)V

    goto/16 :goto_0

    .line 1221
    :cond_7
    const-string v2, "edit"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1222
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$11;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$11;->val$comm:Lcom/vkcoffee/android/NewsComment;

    invoke-static {v2, v3}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$24(Lcom/vkcoffee/android/fragments/PostViewFragment;Lcom/vkcoffee/android/NewsComment;)V

    goto/16 :goto_0

    .line 1223
    :cond_8
    const-string v2, "report"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1224
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$11;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$11;->val$comm:Lcom/vkcoffee/android/NewsComment;

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/fragments/PostViewFragment;->reportComment(Lcom/vkcoffee/android/NewsComment;)V

    goto/16 :goto_0

    .line 1225
    :cond_9
    const-string v2, "repost"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1226
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$11;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$11;->val$comm:Lcom/vkcoffee/android/NewsComment;

    invoke-static {v2, v3}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$25(Lcom/vkcoffee/android/fragments/PostViewFragment;Lcom/vkcoffee/android/NewsComment;)V

    goto/16 :goto_0

    .line 1251
    :cond_a
    const-string v2, "ban"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1252
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$11;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$11;->val$comm:Lcom/vkcoffee/android/NewsComment;

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/fragments/PostViewFragment;->banUser(Lcom/vkcoffee/android/NewsComment;)V

    goto/16 :goto_0
.end method

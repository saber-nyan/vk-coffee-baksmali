.class Lcom/vkcoffee/android/fragments/messages/ChatFragment$26;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/messages/ChatFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$26;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    .line 3423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "paramAnonymousMenuItem"    # Landroid/view/MenuItem;

    .prologue
    const/16 v4, -0x37

    const/4 v3, 0x0

    .line 3425
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$26;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$7(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)I

    move-result v0

    invoke-static {v0}, Lcom/vkcoffee/android/DecrEncr;->checkCachedKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3426
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$26;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$7(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)I

    move-result v0

    invoke-static {v0}, Lcom/vkcoffee/android/DecrEncr;->cleanCachedKey(I)V

    .line 3427
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$26;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-virtual {v0, v4, v3}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->updSub(II)V

    .line 3428
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$26;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u041a\u043b\u044e\u0447 \u043e\u0447\u0438\u0449\u0435\u043d"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3434
    :goto_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$26;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->updateList()V

    .line 3435
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$26;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->invalidateOptionsMenu()V

    .line 3436
    const/4 v0, 0x1

    return v0

    .line 3430
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$26;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "not"

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$26;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$7(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/DecrEncr;->pinCodeMessage(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 3432
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$26;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-virtual {v0, v4, v3}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->updSub(II)V

    goto :goto_0
.end method

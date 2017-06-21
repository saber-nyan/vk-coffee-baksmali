.class Lcom/vkcoffee/android/fragments/messages/ChatFragment$25;
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
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$25;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    .line 3392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "paramAnonymousMenuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    const/16 v1, -0x37

    const/4 v2, 0x0

    .line 3394
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$25;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$59(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3395
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$25;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$7(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)I

    move-result v0

    invoke-static {v0, v3}, Lcom/vkcoffee/android/DecrEncr;->setValueCheckBox(IZ)V

    .line 3396
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$25;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->updSub(II)V

    .line 3397
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$25;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->invalidateOptionsMenu()V

    .line 3398
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$25;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u0420\u0435\u0436\u0438\u043c \u0448\u0438\u0444\u0440\u043e\u0432\u0430\u043d\u0438\u044f \u0432\u044b\u043a\u043b\u044e\u0447\u0435\u043d"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3406
    :goto_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$25;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->updateList()V

    .line 3407
    return v3

    .line 3400
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$25;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$7(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)I

    move-result v0

    invoke-static {v0, v2}, Lcom/vkcoffee/android/DecrEncr;->setValueCheckBox(IZ)V

    .line 3401
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$25;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->updSub(II)V

    .line 3402
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$25;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->invalidateOptionsMenu()V

    .line 3403
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$25;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u0420\u0435\u0436\u0438\u043c \u0448\u0438\u0444\u0440\u043e\u0432\u0430\u043d\u0438\u044f \u0432\u043a\u043b\u044e\u0447\u0435\u043d"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

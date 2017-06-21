.class Lcom/vkcoffee/android/fragments/messages/ChatFragment$1;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/messages/ChatFragment;
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
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$1;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "var1"    # Landroid/view/ActionMode;
    .param p2, "var2"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    .line 198
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 215
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 216
    const/4 v0, 0x1

    return v0

    .line 200
    :pswitch_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$1;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$0(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Lcom/vkcoffee/android/ui/WriteBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$1;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$0(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Lcom/vkcoffee/android/ui/WriteBar;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$1;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$1(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/WriteBar;->addFwdMessages(Ljava/util/List;)V

    goto :goto_0

    .line 205
    :pswitch_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$1;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$1;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$1(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$2(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 208
    :pswitch_2
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$1;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$1;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$1(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/Message;

    iget-object v1, v1, Lcom/vkcoffee/android/Message;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$1;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08053f

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 212
    :pswitch_3
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$1;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$1;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$1(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$3(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x7f100443
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "var1"    # Landroid/view/ActionMode;
    .param p2, "var2"    # Landroid/view/Menu;

    .prologue
    .line 219
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110003

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "var1"    # Landroid/view/ActionMode;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$1;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->actionMode:Landroid/view/ActionMode;

    .line 224
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$1;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$1(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 225
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$1;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$4(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->notifyDataSetChanged()V

    .line 226
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "var1"    # Landroid/view/ActionMode;
    .param p2, "var2"    # Landroid/view/Menu;

    .prologue
    .line 228
    const/4 v0, 0x1

    return v0
.end method

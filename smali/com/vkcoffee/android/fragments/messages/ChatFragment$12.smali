.class Lcom/vkcoffee/android/fragments/messages/ChatFragment$12;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "ChatFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/messages/ChatFragment;->lambda$showMessageOptions$431(Ljava/util/ArrayList;Lcom/vkcoffee/android/Message;Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

.field private final synthetic val$message:Lcom/vkcoffee/android/Message;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Lcom/vkcoffee/android/Message;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$12;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$12;->val$message:Lcom/vkcoffee/android/Message;

    .line 2607
    invoke-direct {p0}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 3

    .prologue
    .line 2609
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$12;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u041e\u0442\u043c\u0435\u0442\u043a\u0430 \u0441\u043d\u044f\u0442\u0430"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2628
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$12;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$5(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$12;->val$message:Lcom/vkcoffee/android/Message;

    iget v1, v1, Lcom/vkcoffee/android/Message;->id:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2630
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$12;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$6(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$12;->val$message:Lcom/vkcoffee/android/Message;

    iget v1, v1, Lcom/vkcoffee/android/Message;->id:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2631
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$12;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->updateList()V

    .line 2634
    return-void
.end method

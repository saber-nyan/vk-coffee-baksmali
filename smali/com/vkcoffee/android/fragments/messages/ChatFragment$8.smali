.class Lcom/vkcoffee/android/fragments/messages/ChatFragment$8;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "ChatFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/messages/ChatFragment;->loadGroupInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Lcom/vkcoffee/android/api/Group;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$8;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    .line 1538
    invoke-direct {p0}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 2

    .prologue
    .line 1546
    .local p1, "error":Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;, "Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;"
    invoke-super {p0, p1}, Lcom/vkcoffee/android/api/SimpleCallback;->fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    .line 1547
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$8;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$37(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Z)V

    .line 1548
    return-void
.end method

.method public success(Lcom/vkcoffee/android/api/Group;)V
    .locals 2
    .param p1, "result"    # Lcom/vkcoffee/android/api/Group;

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$8;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v0, p1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$35(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Lcom/vkcoffee/android/api/Group;)V

    .line 1541
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$8;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    iget-boolean v1, p1, Lcom/vkcoffee/android/api/Group;->canMessage:Z

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$36(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Z)V

    .line 1542
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$8;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$37(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Z)V

    .line 1543
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/api/Group;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$8;->success(Lcom/vkcoffee/android/api/Group;)V

    return-void
.end method

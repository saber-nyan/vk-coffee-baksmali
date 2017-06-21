.class Lcom/vkcoffee/android/fragments/messages/ChatFragment$27;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "ChatFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/messages/ChatFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Ljava/lang/Boolean;",
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
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$27;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    .line 3804
    invoke-direct {p0}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 3806
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$27;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$10(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Z)V

    .line 3807
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$27;->success(Ljava/lang/Boolean;)V

    return-void
.end method

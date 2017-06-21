.class Lcom/vkcoffee/android/fragments/messages/DialogsFragment$6;
.super Ljava/lang/Object;
.source "DialogsFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/data/Messages$SearchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->loadData(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

.field private final synthetic val$var1:Z


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$6;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    iput-boolean p2, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$6;->val$var1:Z

    .line 848
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogsLoaded(Ljava/util/ArrayList;I)V
    .locals 3
    .param p1, "var1x"    # Ljava/util/ArrayList;
    .param p2, "var2"    # I

    .prologue
    .line 851
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$6;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$6;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$6;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    iget-boolean v2, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$6;->val$var1:Z

    invoke-static {v1, v2, p1, p2}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$5$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;ZLjava/util/ArrayList;I)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 857
    :goto_0
    return-void

    .line 854
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$6;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->access$5(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;Z)V

    goto :goto_0
.end method

.method public onError(ILjava/lang/String;)V
    .locals 2
    .param p1, "var1x"    # I
    .param p2, "var2"    # Ljava/lang/String;

    .prologue
    .line 859
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$6;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 860
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$6;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->access$5(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;Z)V

    .line 865
    :goto_0
    return-void

    .line 862
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$6;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$6;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-static {v1, p1, p2}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$5$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;ILjava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

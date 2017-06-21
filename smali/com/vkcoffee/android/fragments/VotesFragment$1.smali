.class Lcom/vkcoffee/android/fragments/VotesFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "VotesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/VotesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/VotesFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/VotesFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/VotesFragment;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/VotesFragment$1;->this$0:Lcom/vkcoffee/android/fragments/VotesFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment$1;->this$0:Lcom/vkcoffee/android/fragments/VotesFragment;

    const-string/jumbo v1, "balance"

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/VotesFragment$1;->this$0:Lcom/vkcoffee/android/fragments/VotesFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/VotesFragment;->access$000(Lcom/vkcoffee/android/fragments/VotesFragment;)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/VotesFragment;->access$002(Lcom/vkcoffee/android/fragments/VotesFragment;I)I

    .line 47
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment$1;->this$0:Lcom/vkcoffee/android/fragments/VotesFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/VotesFragment;->access$100(Lcom/vkcoffee/android/fragments/VotesFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment$1;->this$0:Lcom/vkcoffee/android/fragments/VotesFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/VotesFragment;->access$200(Lcom/vkcoffee/android/fragments/VotesFragment;)Lcom/vkcoffee/android/fragments/VotesFragment$VotesAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment$1;->this$0:Lcom/vkcoffee/android/fragments/VotesFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/VotesFragment;->access$200(Lcom/vkcoffee/android/fragments/VotesFragment;)Lcom/vkcoffee/android/fragments/VotesFragment$VotesAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/VotesFragment$VotesAdapter;->notifyDataSetChanged()V

    .line 50
    :cond_0
    const-string/jumbo v0, "payment_required"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment$1;->this$0:Lcom/vkcoffee/android/fragments/VotesFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/VotesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 52
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment$1;->this$0:Lcom/vkcoffee/android/fragments/VotesFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/VotesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 54
    :cond_1
    return-void
.end method

.class Lcom/vkcoffee/android/PollAttachView$3;
.super Ljava/lang/Object;
.source "PollAttachView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/PollAttachView;->onLoaded(Ljava/lang/String;I[Lcom/vkcoffee/android/api/PollOption;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/PollAttachView;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/PollAttachView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/PollAttachView$3;->this$0:Lcom/vkcoffee/android/PollAttachView;

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "var1"    # Landroid/view/View;

    .prologue
    .line 337
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/api/PollOption;

    .line 338
    .local v1, "var3":Lcom/vkcoffee/android/api/PollOption;
    iget-object v2, p0, Lcom/vkcoffee/android/PollAttachView$3;->this$0:Lcom/vkcoffee/android/PollAttachView;

    invoke-static {v2}, Lcom/vkcoffee/android/PollAttachView;->access$1(Lcom/vkcoffee/android/PollAttachView;)I

    move-result v2

    if-nez v2, :cond_1

    .line 339
    iget-object v2, p0, Lcom/vkcoffee/android/PollAttachView$3;->this$0:Lcom/vkcoffee/android/PollAttachView;

    invoke-static {v2, v1}, Lcom/vkcoffee/android/PollAttachView;->access$5(Lcom/vkcoffee/android/PollAttachView;Lcom/vkcoffee/android/api/PollOption;)V

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    iget-object v2, p0, Lcom/vkcoffee/android/PollAttachView$3;->this$0:Lcom/vkcoffee/android/PollAttachView;

    iget-boolean v2, v2, Lcom/vkcoffee/android/PollAttachView;->isPublic:Z

    if-eqz v2, :cond_0

    .line 341
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 342
    .local v0, "var2":Landroid/os/Bundle;
    const-string v2, "title"

    iget-object v3, v1, Lcom/vkcoffee/android/api/PollOption;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string v2, "oid"

    iget-object v3, p0, Lcom/vkcoffee/android/PollAttachView$3;->this$0:Lcom/vkcoffee/android/PollAttachView;

    invoke-static {v3}, Lcom/vkcoffee/android/PollAttachView;->access$6(Lcom/vkcoffee/android/PollAttachView;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 344
    const-string v2, "poll_id"

    iget-object v3, p0, Lcom/vkcoffee/android/PollAttachView$3;->this$0:Lcom/vkcoffee/android/PollAttachView;

    invoke-static {v3}, Lcom/vkcoffee/android/PollAttachView;->access$7(Lcom/vkcoffee/android/PollAttachView;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 345
    const-string v2, "answer_id"

    iget v3, v1, Lcom/vkcoffee/android/api/PollOption;->id:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 346
    const-class v3, Lcom/vkcoffee/android/fragments/userlist/PollVotersListFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/PollAttachView$3;->this$0:Lcom/vkcoffee/android/PollAttachView;

    invoke-virtual {v2}, Lcom/vkcoffee/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v3, v0, v2}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    goto :goto_0
.end method

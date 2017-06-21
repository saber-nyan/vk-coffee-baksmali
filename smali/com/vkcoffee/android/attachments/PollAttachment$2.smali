.class Lcom/vkcoffee/android/attachments/PollAttachment$2;
.super Ljava/lang/Object;
.source "PollAttachment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/attachments/PollAttachment;->bindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/attachments/PollAttachment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/attachments/PollAttachment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/attachments/PollAttachment$2;->this$0:Lcom/vkcoffee/android/attachments/PollAttachment;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "var1"    # Landroid/view/View;

    .prologue
    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;

    .line 141
    .local v1, "var3":Lcom/vkcoffee/android/attachments/PollAttachment$Answer;
    iget-object v2, p0, Lcom/vkcoffee/android/attachments/PollAttachment$2;->this$0:Lcom/vkcoffee/android/attachments/PollAttachment;

    iget v2, v2, Lcom/vkcoffee/android/attachments/PollAttachment;->userAnswer:I

    if-nez v2, :cond_1

    .line 142
    iget-object v3, p0, Lcom/vkcoffee/android/attachments/PollAttachment$2;->this$0:Lcom/vkcoffee/android/attachments/PollAttachment;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v3, v1, v2}, Lcom/vkcoffee/android/attachments/PollAttachment;->access$0(Lcom/vkcoffee/android/attachments/PollAttachment;Lcom/vkcoffee/android/attachments/PollAttachment$Answer;Landroid/view/ViewGroup;)V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-object v2, p0, Lcom/vkcoffee/android/attachments/PollAttachment$2;->this$0:Lcom/vkcoffee/android/attachments/PollAttachment;

    iget-boolean v2, v2, Lcom/vkcoffee/android/attachments/PollAttachment;->isAnonymous:Z

    if-nez v2, :cond_0

    .line 144
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 145
    .local v0, "var2":Landroid/os/Bundle;
    const-string v2, "title"

    iget-object v3, v1, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;->text:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v2, "oid"

    iget-object v3, p0, Lcom/vkcoffee/android/attachments/PollAttachment$2;->this$0:Lcom/vkcoffee/android/attachments/PollAttachment;

    iget v3, v3, Lcom/vkcoffee/android/attachments/PollAttachment;->oid:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 147
    const-string v2, "poll_id"

    iget-object v3, p0, Lcom/vkcoffee/android/attachments/PollAttachment$2;->this$0:Lcom/vkcoffee/android/attachments/PollAttachment;

    iget v3, v3, Lcom/vkcoffee/android/attachments/PollAttachment;->pid:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 148
    const-string v2, "answer_id"

    iget v3, v1, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;->id:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 149
    const-class v3, Lcom/vkcoffee/android/fragments/userlist/PollVotersListFragment;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v3, v0, v2}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    goto :goto_0
.end method

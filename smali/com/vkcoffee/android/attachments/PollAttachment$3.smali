.class Lcom/vkcoffee/android/attachments/PollAttachment$3;
.super Ljava/lang/Object;
.source "PollAttachment.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    iput-object p1, p0, Lcom/vkcoffee/android/attachments/PollAttachment$3;->this$0:Lcom/vkcoffee/android/attachments/PollAttachment;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "var1"    # Landroid/view/View;

    .prologue
    .line 157
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/PollAttachment$3;->this$0:Lcom/vkcoffee/android/attachments/PollAttachment;

    iget v1, v1, Lcom/vkcoffee/android/attachments/PollAttachment;->userAnswer:I

    if-eqz v1, :cond_0

    .line 158
    iget-object v2, p0, Lcom/vkcoffee/android/attachments/PollAttachment$3;->this$0:Lcom/vkcoffee/android/attachments/PollAttachment;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v2, v1}, Lcom/vkcoffee/android/attachments/PollAttachment;->access$1(Lcom/vkcoffee/android/attachments/PollAttachment;Landroid/view/ViewGroup;)V

    .line 159
    const/4 v0, 0x1

    .line 164
    .local v0, "var2":Z
    :goto_0
    return v0

    .line 161
    .end local v0    # "var2":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "var2":Z
    goto :goto_0
.end method

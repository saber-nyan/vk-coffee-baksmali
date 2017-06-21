.class Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$3;
.super Ljava/lang/Object;
.source "BoardTopicViewFragment.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->lambda$onCreateContentView$322(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$3;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 523
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    move v0, v1

    .line 563
    :cond_0
    return v0

    .line 538
    :pswitch_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$3;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v2}, Lcom/vkcoffee/android/ui/WriteBar;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$3;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/vkcoffee/android/DecrEncr;->canTransform(Ljava/lang/String;Landroid/app/Activity;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 539
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$3;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$3;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    iget-object v3, v3, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v3}, Lcom/vkcoffee/android/ui/WriteBar;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0, v0}, Lcom/vkcoffee/android/DecrEncr;->transformText(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/vkcoffee/android/ui/WriteBar;->setText(Ljava/lang/CharSequence;)V

    .line 544
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$3;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/WriteBar;->isUploading()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 546
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$3;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->access$4(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;)V

    goto :goto_0

    .line 549
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$3;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->access$5(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;)V

    goto :goto_0

    .line 554
    :pswitch_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$3;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    iput-boolean v1, v0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->replyFromGroup:Z

    .line 555
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$3;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/WriteBar;->isUploading()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 556
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$3;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->access$4(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;)V

    goto :goto_0

    .line 558
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$3;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->access$5(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;)V

    goto :goto_0

    .line 523
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

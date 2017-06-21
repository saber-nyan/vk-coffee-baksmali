.class Lcom/vkcoffee/android/fragments/PostViewFragment$4$1;
.super Ljava/lang/Object;
.source "PostViewFragment.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/PostViewFragment$4;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/PostViewFragment$4;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/PostViewFragment$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$4$1;->this$1:Lcom/vkcoffee/android/fragments/PostViewFragment$4;

    .line 696
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

    .line 698
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    move v0, v1

    .line 724
    :cond_0
    return v0

    .line 701
    :pswitch_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$4$1;->this$1:Lcom/vkcoffee/android/fragments/PostViewFragment$4;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/PostViewFragment$4;->access$0(Lcom/vkcoffee/android/fragments/PostViewFragment$4;)Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$15(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/ui/WriteBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkcoffee/android/ui/WriteBar;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$4$1;->this$1:Lcom/vkcoffee/android/fragments/PostViewFragment$4;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/PostViewFragment$4;->access$0(Lcom/vkcoffee/android/fragments/PostViewFragment$4;)Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/vkcoffee/android/DecrEncr;->canTransform(Ljava/lang/String;Landroid/app/Activity;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 702
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$4$1;->this$1:Lcom/vkcoffee/android/fragments/PostViewFragment$4;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/PostViewFragment$4;->access$0(Lcom/vkcoffee/android/fragments/PostViewFragment$4;)Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$15(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/ui/WriteBar;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$4$1;->this$1:Lcom/vkcoffee/android/fragments/PostViewFragment$4;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/PostViewFragment$4;->access$0(Lcom/vkcoffee/android/fragments/PostViewFragment$4;)Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$15(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/ui/WriteBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkcoffee/android/ui/WriteBar;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0, v0}, Lcom/vkcoffee/android/DecrEncr;->transformText(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/vkcoffee/android/ui/WriteBar;->setText(Ljava/lang/CharSequence;)V

    .line 707
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$4$1;->this$1:Lcom/vkcoffee/android/fragments/PostViewFragment$4;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment$4;->access$0(Lcom/vkcoffee/android/fragments/PostViewFragment$4;)Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$15(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/ui/WriteBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/WriteBar;->isUploading()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 708
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$4$1;->this$1:Lcom/vkcoffee/android/fragments/PostViewFragment$4;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment$4;->access$0(Lcom/vkcoffee/android/fragments/PostViewFragment$4;)Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$16(Lcom/vkcoffee/android/fragments/PostViewFragment;)V

    goto :goto_0

    .line 711
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$4$1;->this$1:Lcom/vkcoffee/android/fragments/PostViewFragment$4;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment$4;->access$0(Lcom/vkcoffee/android/fragments/PostViewFragment$4;)Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$17(Lcom/vkcoffee/android/fragments/PostViewFragment;)V

    goto :goto_0

    .line 716
    :pswitch_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$4$1;->this$1:Lcom/vkcoffee/android/fragments/PostViewFragment$4;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment$4;->access$0(Lcom/vkcoffee/android/fragments/PostViewFragment$4;)Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$18(Lcom/vkcoffee/android/fragments/PostViewFragment;Z)V

    .line 717
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$4$1;->this$1:Lcom/vkcoffee/android/fragments/PostViewFragment$4;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment$4;->access$0(Lcom/vkcoffee/android/fragments/PostViewFragment$4;)Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$15(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/ui/WriteBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/WriteBar;->isUploading()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 718
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$4$1;->this$1:Lcom/vkcoffee/android/fragments/PostViewFragment$4;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment$4;->access$0(Lcom/vkcoffee/android/fragments/PostViewFragment$4;)Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$16(Lcom/vkcoffee/android/fragments/PostViewFragment;)V

    goto/16 :goto_0

    .line 720
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$4$1;->this$1:Lcom/vkcoffee/android/fragments/PostViewFragment$4;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment$4;->access$0(Lcom/vkcoffee/android/fragments/PostViewFragment$4;)Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$17(Lcom/vkcoffee/android/fragments/PostViewFragment;)V

    goto/16 :goto_0

    .line 698
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

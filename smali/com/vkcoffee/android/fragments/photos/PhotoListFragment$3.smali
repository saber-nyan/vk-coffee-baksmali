.class Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$3;
.super Ljava/lang/Object;
.source "PhotoListFragment.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$3;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 330
    sub-int v1, p4, p2

    .line 331
    .local v1, "w":I
    sub-int v0, p8, p6

    .line 332
    .local v0, "prevW":I
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$3;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    invoke-static {v2, v1}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->access$2(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;I)V

    .line 333
    if-eq v1, v0, :cond_0

    .line 334
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$3;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->access$1(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;)V

    .line 335
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$3;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->adapter:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    invoke-virtual {v2}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->notifyDataSetChanged()V

    .line 337
    :cond_0
    return-void
.end method

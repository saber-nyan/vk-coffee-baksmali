.class Lcom/vkcoffee/android/fragments/market/GoodFragment$5;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "GoodFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/market/GoodFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/market/GoodFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/market/GoodFragment;

    .prologue
    .line 626
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$5;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    .line 629
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 633
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$5;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v0, p1}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$2000(Lcom/vkcoffee/android/fragments/market/GoodFragment;Landroid/support/v7/widget/RecyclerView;)V

    .line 634
    return-void
.end method

.class Lcom/vkcoffee/android/ui/widget/SubPagerOfList$3;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "SubPagerOfList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/widget/SubPagerOfList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/widget/SubPagerOfList;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/widget/SubPagerOfList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/widget/SubPagerOfList;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$3;->this$0:Lcom/vkcoffee/android/ui/widget/SubPagerOfList;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    .line 227
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$3;->this$0:Lcom/vkcoffee/android/ui/widget/SubPagerOfList;

    invoke-virtual {v0, p1, p2}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 228
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 232
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$3;->this$0:Lcom/vkcoffee/android/ui/widget/SubPagerOfList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 233
    return-void
.end method

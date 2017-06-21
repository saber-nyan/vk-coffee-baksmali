.class Lcom/vkcoffee/android/MenuListView$PaddingViewHolder;
.super Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
.source "MenuListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/MenuListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PaddingViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/MenuListView;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/MenuListView;)V
    .locals 4

    .prologue
    .line 938
    iput-object p1, p0, Lcom/vkcoffee/android/MenuListView$PaddingViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    .line 939
    new-instance v0, Landroid/view/View;

    invoke-virtual {p1}, Lcom/vkcoffee/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 940
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$PaddingViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 941
    return-void
.end method

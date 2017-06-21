.class Lcom/vkcoffee/android/ui/MultiColumnListView$3;
.super Ljava/lang/Object;
.source "MultiColumnListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/MultiColumnListView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/MultiColumnListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/MultiColumnListView;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$3;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 6
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 150
    iget-object v3, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$3;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/MultiColumnListView;->access$600(Lcom/vkcoffee/android/ui/MultiColumnListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 151
    iget-object v3, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$3;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-virtual {v3}, Lcom/vkcoffee/android/ui/MultiColumnListView;->getHeaderViewsCount()I

    move-result v3

    sub-int v3, p2, v3

    if-ltz v3, :cond_2

    iget-object v3, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$3;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-virtual {v3}, Lcom/vkcoffee/android/ui/MultiColumnListView;->getHeaderViewsCount()I

    move-result v3

    sub-int v3, p2, v3

    iget-object v4, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$3;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-static {v4}, Lcom/vkcoffee/android/ui/MultiColumnListView;->access$800(Lcom/vkcoffee/android/ui/MultiColumnListView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v3, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$3;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/MultiColumnListView;->access$800(Lcom/vkcoffee/android/ui/MultiColumnListView;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$3;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-virtual {v4}, Lcom/vkcoffee/android/ui/MultiColumnListView;->getHeaderViewsCount()I

    move-result v4

    sub-int v4, p2, v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;

    iget v1, v3, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;->start:I

    .line 153
    .local v1, "first":I
    :goto_0
    const/4 v0, 0x0

    .line 154
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, p3, :cond_0

    .line 155
    add-int v3, v2, p2

    iget-object v4, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$3;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-virtual {v4}, Lcom/vkcoffee/android/ui/MultiColumnListView;->getHeaderViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$3;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-static {v4}, Lcom/vkcoffee/android/ui/MultiColumnListView;->access$800(Lcom/vkcoffee/android/ui/MultiColumnListView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_3

    .line 156
    sub-int v3, p3, v2

    add-int/2addr v0, v3

    .line 163
    :cond_0
    iget-object v3, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$3;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-virtual {v3}, Lcom/vkcoffee/android/ui/MultiColumnListView;->getHeaderViewsCount()I

    move-result v3

    if-ge p2, v3, :cond_5

    .line 164
    move v1, p2

    .line 165
    iget-object v3, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$3;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-virtual {v3}, Lcom/vkcoffee/android/ui/MultiColumnListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr v3, v1

    add-int/2addr v0, v3

    .line 170
    :goto_2
    iget-object v3, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$3;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/MultiColumnListView;->access$600(Lcom/vkcoffee/android/ui/MultiColumnListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v3

    iget-object v4, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$3;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-virtual {v4}, Lcom/vkcoffee/android/ui/MultiColumnListView;->getCount()I

    move-result v4

    iget-object v5, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$3;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-virtual {v5}, Lcom/vkcoffee/android/ui/MultiColumnListView;->getHeaderViewsCount()I

    move-result v5

    add-int/2addr v4, v5

    invoke-interface {v3, p1, v1, v0, v4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 172
    .end local v0    # "count":I
    .end local v1    # "first":I
    .end local v2    # "i":I
    :cond_1
    return-void

    .line 151
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 159
    .restart local v0    # "count":I
    .restart local v1    # "first":I
    .restart local v2    # "i":I
    :cond_3
    add-int v3, v2, p2

    iget-object v4, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$3;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-virtual {v4}, Lcom/vkcoffee/android/ui/MultiColumnListView;->getHeaderViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    if-ltz v3, :cond_4

    .line 160
    iget-object v3, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$3;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/MultiColumnListView;->access$800(Lcom/vkcoffee/android/ui/MultiColumnListView;)Ljava/util/ArrayList;

    move-result-object v3

    add-int v4, v2, p2

    iget-object v5, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$3;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-virtual {v5}, Lcom/vkcoffee/android/ui/MultiColumnListView;->getHeaderViewsCount()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;

    iget v3, v3, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;->count:I

    add-int/2addr v0, v3

    .line 154
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 167
    :cond_5
    iget-object v3, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$3;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-virtual {v3}, Lcom/vkcoffee/android/ui/MultiColumnListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr v1, v3

    goto :goto_2
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    const/4 v1, -0x1

    .line 134
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$3;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/MultiColumnListView;->access$600(Lcom/vkcoffee/android/ui/MultiColumnListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$3;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/MultiColumnListView;->access$600(Lcom/vkcoffee/android/ui/MultiColumnListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$3;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-static {v0, p2}, Lcom/vkcoffee/android/ui/MultiColumnListView;->access$702(Lcom/vkcoffee/android/ui/MultiColumnListView;I)I

    .line 138
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$3;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/MultiColumnListView;->access$400(Lcom/vkcoffee/android/ui/MultiColumnListView;)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 139
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$3;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/MultiColumnListView;->access$500(Lcom/vkcoffee/android/ui/MultiColumnListView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$3;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/MultiColumnListView;->access$500(Lcom/vkcoffee/android/ui/MultiColumnListView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$3;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/MultiColumnListView;->access$500(Lcom/vkcoffee/android/ui/MultiColumnListView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 144
    :goto_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$3;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/MultiColumnListView;->invalidate()V

    .line 146
    :cond_1
    return-void

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$3;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/MultiColumnListView;->access$402(Lcom/vkcoffee/android/ui/MultiColumnListView;I)I

    goto :goto_0
.end method

.class Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$UsersAdapter;
.super Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;
.source "QuickSearchFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsersAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/base/SegmenterFragment",
        "<",
        "Lcom/vkcoffee/android/UserProfile;",
        ">.GridAdapter<",
        "Lcom/vkcoffee/android/UserProfile;",
        "Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$SearchHolder;",
        ">;",
        "Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration$Provider;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$UsersAdapter;->this$0:Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;

    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;-><init>(Lcom/vkcoffee/android/fragments/base/SegmenterFragment;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;
    .param p2, "x1"    # Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$1;

    .prologue
    .line 260
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$UsersAdapter;-><init>(Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;)V

    return-void
.end method


# virtual methods
.method public createHeaderHolder(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 6
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/high16 v5, 0x41800000    # 16.0f

    .line 269
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;->createHeaderHolder(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 270
    .local v0, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$UsersAdapter;->this$0:Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->access$900(Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;)I

    move-result v2

    const/16 v3, 0x258

    if-lt v2, v3, :cond_0

    .line 271
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 273
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-static {v5}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    .line 274
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 275
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-static {v5}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    .line 276
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    .line 272
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 279
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    return-object v0
.end method

.method public createViewHolder(Landroid/view/ViewGroup;)Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$SearchHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 264
    new-instance v0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$SearchHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$UsersAdapter;->this$0:Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;

    invoke-direct {v0, v1, p1}, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$SearchHolder;-><init>(Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public bridge synthetic createViewHolder(Landroid/view/ViewGroup;)Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
    .locals 1

    .prologue
    .line 260
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$UsersAdapter;->createViewHolder(Landroid/view/ViewGroup;)Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$SearchHolder;

    move-result-object v0

    return-object v0
.end method

.method public drawAfter(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$UsersAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$UsersAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageUrl(II)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I
    .param p2, "image"    # I

    .prologue
    .line 289
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$UsersAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    return-object v0
.end method

.method public getImagesCountForItem(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 284
    const/4 v0, 0x1

    return v0
.end method

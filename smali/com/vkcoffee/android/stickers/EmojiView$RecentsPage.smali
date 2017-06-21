.class Lcom/vkcoffee/android/stickers/EmojiView$RecentsPage;
.super Lcom/vkcoffee/android/stickers/EmojiView$Page;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/stickers/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecentsPage"
.end annotation


# instance fields
.field private mAdapter:Lcom/vkcoffee/android/stickers/EmojiView$EmojiGridAdapter;

.field private mEmptyView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/vkcoffee/android/stickers/EmojiView;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/stickers/EmojiView;I)V
    .locals 1
    .param p1    # Lcom/vkcoffee/android/stickers/EmojiView;
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "icon"    # I

    .prologue
    .line 199
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/EmojiView$RecentsPage;->this$0:Lcom/vkcoffee/android/stickers/EmojiView;

    .line 200
    invoke-static {p1}, Lcom/vkcoffee/android/stickers/EmojiView;->access$400(Lcom/vkcoffee/android/stickers/EmojiView;)Lcom/vkcoffee/android/data/RecentItemStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/data/RecentItemStore;->load()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/vkcoffee/android/stickers/EmojiView$Page;-><init>(Lcom/vkcoffee/android/stickers/EmojiView;I[Ljava/lang/String;)V

    .line 201
    return-void
.end method


# virtual methods
.method getView(Landroid/content/Context;)Landroid/view/View;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, -0x1

    const/4 v7, -0x2

    const/4 v4, 0x0

    .line 205
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/EmojiView$RecentsPage;->mView:Landroid/view/View;

    if-nez v3, :cond_0

    .line 206
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 208
    .local v1, "layout":Landroid/widget/FrameLayout;
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkcoffee/android/stickers/EmojiView$RecentsPage;->mEmptyView:Landroid/widget/TextView;

    .line 209
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/EmojiView$RecentsPage;->mEmptyView:Landroid/widget/TextView;

    const v5, 0x7f080157

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 210
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/EmojiView$RecentsPage;->mEmptyView:Landroid/widget/TextView;

    const/4 v5, 0x1

    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v3, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 211
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/EmojiView$RecentsPage;->mEmptyView:Landroid/widget/TextView;

    const v5, -0x777778

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 212
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 213
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v3, 0x11

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 215
    invoke-super {p0, p1}, Lcom/vkcoffee/android/stickers/EmojiView$Page;->getView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 216
    .local v0, "grid":Landroid/support/v7/widget/RecyclerView;
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/stickers/EmojiView$EmojiGridAdapter;

    iput-object v3, p0, Lcom/vkcoffee/android/stickers/EmojiView$RecentsPage;->mAdapter:Lcom/vkcoffee/android/stickers/EmojiView$EmojiGridAdapter;

    .line 217
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/EmojiView$RecentsPage;->mAdapter:Lcom/vkcoffee/android/stickers/EmojiView$EmojiGridAdapter;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 218
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 219
    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setClipToPadding(Z)V

    .line 222
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/EmojiView$RecentsPage;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    iput-object v1, p0, Lcom/vkcoffee/android/stickers/EmojiView$RecentsPage;->mView:Landroid/view/View;

    .line 226
    .end local v0    # "grid":Landroid/support/v7/widget/RecyclerView;
    .end local v1    # "layout":Landroid/widget/FrameLayout;
    .end local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v5, p0, Lcom/vkcoffee/android/stickers/EmojiView$RecentsPage;->mEmptyView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/vkcoffee/android/stickers/EmojiView$RecentsPage;->mCodes:[Lcom/vkcoffee/android/Emoji$KeyboardKey;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/vkcoffee/android/stickers/EmojiView$RecentsPage;->mCodes:[Lcom/vkcoffee/android/Emoji$KeyboardKey;

    array-length v3, v3

    if-nez v3, :cond_2

    :cond_1
    move v3, v4

    :goto_0
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/EmojiView$RecentsPage;->mView:Landroid/view/View;

    return-object v3

    .line 226
    :cond_2
    const/16 v3, 0x8

    goto :goto_0
.end method

.method onPageChanged()V
    .locals 2

    .prologue
    .line 232
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/EmojiView$RecentsPage;->mEmptyView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vkcoffee/android/stickers/EmojiView$RecentsPage;->mCodes:[Lcom/vkcoffee/android/Emoji$KeyboardKey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/stickers/EmojiView$RecentsPage;->mCodes:[Lcom/vkcoffee/android/Emoji$KeyboardKey;

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/EmojiView$RecentsPage;->this$0:Lcom/vkcoffee/android/stickers/EmojiView;

    invoke-static {v0}, Lcom/vkcoffee/android/stickers/EmojiView;->access$400(Lcom/vkcoffee/android/stickers/EmojiView;)Lcom/vkcoffee/android/data/RecentItemStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/data/RecentItemStore;->load()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/stickers/EmojiView$RecentsPage;->setKeysFromCodes([Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/EmojiView$RecentsPage;->mAdapter:Lcom/vkcoffee/android/stickers/EmojiView$EmojiGridAdapter;

    invoke-virtual {v0}, Lcom/vkcoffee/android/stickers/EmojiView$EmojiGridAdapter;->notifyDataSetChanged()V

    .line 235
    return-void

    .line 232
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

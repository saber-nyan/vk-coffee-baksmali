.class Lcom/vkcoffee/android/stickers/EmojiView$EmojiPagesAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "EmojiView.java"

# interfaces
.implements Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$DrawableTabProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/stickers/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmojiPagesAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/stickers/EmojiView;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/stickers/EmojiView;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/EmojiView$EmojiPagesAdapter;->this$0:Lcom/vkcoffee/android/stickers/EmojiView;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/stickers/EmojiView;Lcom/vkcoffee/android/stickers/EmojiView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/stickers/EmojiView;
    .param p2, "x1"    # Lcom/vkcoffee/android/stickers/EmojiView$1;

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/stickers/EmojiView$EmojiPagesAdapter;-><init>(Lcom/vkcoffee/android/stickers/EmojiView;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/EmojiView$EmojiPagesAdapter;->this$0:Lcom/vkcoffee/android/stickers/EmojiView;

    invoke-static {v0}, Lcom/vkcoffee/android/stickers/EmojiView;->access$100(Lcom/vkcoffee/android/stickers/EmojiView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/stickers/EmojiView$Page;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/stickers/EmojiView$Page;->getView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 257
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/EmojiView$EmojiPagesAdapter;->this$0:Lcom/vkcoffee/android/stickers/EmojiView;

    invoke-static {v0}, Lcom/vkcoffee/android/stickers/EmojiView;->access$100(Lcom/vkcoffee/android/stickers/EmojiView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPageTitleDrawable(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 261
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/EmojiView$EmojiPagesAdapter;->this$0:Lcom/vkcoffee/android/stickers/EmojiView;

    invoke-static {v0}, Lcom/vkcoffee/android/stickers/EmojiView;->access$100(Lcom/vkcoffee/android/stickers/EmojiView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/stickers/EmojiView$Page;

    iget-object v0, v0, Lcom/vkcoffee/android/stickers/EmojiView$Page;->titleIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 250
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/EmojiView$EmojiPagesAdapter;->this$0:Lcom/vkcoffee/android/stickers/EmojiView;

    invoke-static {v1}, Lcom/vkcoffee/android/stickers/EmojiView;->access$100(Lcom/vkcoffee/android/stickers/EmojiView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/stickers/EmojiView$Page;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/stickers/EmojiView$Page;->getView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 251
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 252
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 246
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

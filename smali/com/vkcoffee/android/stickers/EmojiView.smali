.class public Lcom/vkcoffee/android/stickers/EmojiView;
.super Landroid/widget/LinearLayout;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/stickers/EmojiView$EmojiHolder;,
        Lcom/vkcoffee/android/stickers/EmojiView$Listener;,
        Lcom/vkcoffee/android/stickers/EmojiView$EmojiGridAdapter;,
        Lcom/vkcoffee/android/stickers/EmojiView$EmojiPagesAdapter;,
        Lcom/vkcoffee/android/stickers/EmojiView$RecentsPage;,
        Lcom/vkcoffee/android/stickers/EmojiView$Page;
    }
.end annotation


# static fields
.field public static final BACKGROUND_COLOR:I = -0x1e1b18

.field static final mColors:Landroid/content/res/ColorStateList;


# instance fields
.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/stickers/EmojiView$Page;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/vkcoffee/android/stickers/EmojiView$Listener;

.field private mRecentStore:Lcom/vkcoffee/android/data/RecentItemStore;

.field private mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f00b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/stickers/EmojiView;->mColors:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vkcoffee/android/stickers/EmojiView$Listener;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/vkcoffee/android/stickers/EmojiView$Listener;

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 63
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v2, Lcom/vkcoffee/android/data/RecentItemStore;

    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v4, "recents_v2"

    const/16 v5, 0x32

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/vkcoffee/android/data/RecentItemStore;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    iput-object v2, p0, Lcom/vkcoffee/android/stickers/EmojiView;->mRecentStore:Lcom/vkcoffee/android/data/RecentItemStore;

    .line 47
    new-instance v2, Lcom/vkcoffee/android/stickers/EmojiView$1;

    const/4 v3, 0x6

    invoke-direct {v2, p0, v3}, Lcom/vkcoffee/android/stickers/EmojiView$1;-><init>(Lcom/vkcoffee/android/stickers/EmojiView;I)V

    iput-object v2, p0, Lcom/vkcoffee/android/stickers/EmojiView;->mData:Ljava/util/ArrayList;

    .line 64
    iput-object p2, p0, Lcom/vkcoffee/android/stickers/EmojiView;->mListener:Lcom/vkcoffee/android/stickers/EmojiView$Listener;

    .line 65
    invoke-virtual {p0, v7}, Lcom/vkcoffee/android/stickers/EmojiView;->setOrientation(I)V

    .line 66
    const v2, -0x1e1b18

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/stickers/EmojiView;->setBackgroundColor(I)V

    .line 69
    invoke-virtual {p0}, Lcom/vkcoffee/android/stickers/EmojiView;->createViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v0

    .line 70
    .local v0, "pager":Landroid/support/v4/view/ViewPager;
    invoke-virtual {p0}, Lcom/vkcoffee/android/stickers/EmojiView;->createTabs()Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    move-result-object v1

    .line 71
    .local v1, "tabs":Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;
    invoke-virtual {v1, v0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 73
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42340000    # 45.0f

    invoke-static {v3}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v3

    invoke-direct {v2, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/vkcoffee/android/stickers/EmojiView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v6, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v0, v2}, Lcom/vkcoffee/android/stickers/EmojiView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    return-void
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/stickers/EmojiView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/stickers/EmojiView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/EmojiView;->mData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/stickers/EmojiView;)Landroid/support/v7/widget/RecyclerView$OnScrollListener;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/stickers/EmojiView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/EmojiView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/stickers/EmojiView;)Lcom/vkcoffee/android/data/RecentItemStore;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/stickers/EmojiView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/EmojiView;->mRecentStore:Lcom/vkcoffee/android/data/RecentItemStore;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/stickers/EmojiView;)Lcom/vkcoffee/android/stickers/EmojiView$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/stickers/EmojiView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/EmojiView;->mListener:Lcom/vkcoffee/android/stickers/EmojiView$Listener;

    return-object v0
.end method


# virtual methods
.method public createTabs()Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 84
    new-instance v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-virtual {p0}, Lcom/vkcoffee/android/stickers/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;-><init>(Landroid/content/Context;)V

    .line 86
    .local v0, "tabs":Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;
    invoke-virtual {v0, v3}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setShouldExpand(Z)V

    .line 87
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setUnderlineColor(I)V

    .line 88
    invoke-virtual {v0, v2}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setIndicatorHeight(I)V

    .line 89
    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v1}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setUnderlineHeight(I)V

    .line 90
    invoke-virtual {v0, v2}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setDividerColor(I)V

    .line 91
    invoke-virtual {v0, v2}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setTabBackground(I)V

    .line 92
    const v1, -0x231e1a

    invoke-virtual {v0, v1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setBackgroundColor(I)V

    .line 93
    const v1, 0x7f020101

    invoke-virtual {v0, v1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setTabBackground(I)V

    .line 94
    new-instance v1, Lcom/vkcoffee/android/stickers/EmojiView$2;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/stickers/EmojiView$2;-><init>(Lcom/vkcoffee/android/stickers/EmojiView;)V

    invoke-virtual {v0, v1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 111
    return-object v0
.end method

.method public createViewPager()Landroid/support/v4/view/ViewPager;
    .locals 3

    .prologue
    .line 78
    new-instance v0, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lcom/vkcoffee/android/stickers/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 79
    .local v0, "pager":Landroid/support/v4/view/ViewPager;
    new-instance v1, Lcom/vkcoffee/android/stickers/EmojiView$EmojiPagesAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vkcoffee/android/stickers/EmojiView$EmojiPagesAdapter;-><init>(Lcom/vkcoffee/android/stickers/EmojiView;Lcom/vkcoffee/android/stickers/EmojiView$1;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 80
    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 329
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 330
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/vkcoffee/android/stickers/EmojiView;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 331
    iget-object v2, p0, Lcom/vkcoffee/android/stickers/EmojiView;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/stickers/EmojiView$Page;

    .line 332
    .local v1, "page":Lcom/vkcoffee/android/stickers/EmojiView$Page;
    invoke-virtual {v1}, Lcom/vkcoffee/android/stickers/EmojiView$Page;->invalidate()V

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 334
    .end local v1    # "page":Lcom/vkcoffee/android/stickers/EmojiView$Page;
    :cond_0
    return-void
.end method

.method public setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/EmojiView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 116
    return-void
.end method

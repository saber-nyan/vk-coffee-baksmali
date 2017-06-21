.class Lcom/vkcoffee/android/AudioPlayerActivity$18$2;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/AudioPlayerActivity$18;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/AudioPlayerActivity$18;

.field final synthetic val$pager:Landroid/support/v4/view/ViewPager;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/AudioPlayerActivity$18;Landroid/support/v4/view/ViewPager;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/AudioPlayerActivity$18;

    .prologue
    .line 817
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$18$2;->this$1:Lcom/vkcoffee/android/AudioPlayerActivity$18;

    iput-object p2, p0, Lcom/vkcoffee/android/AudioPlayerActivity$18$2;->val$pager:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 819
    sget-object v1, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkcoffee/android/AudioPlayerService;->getPlaylistPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerActivity$18$2;->val$pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 820
    .local v0, "d":I
    if-gt v0, v3, :cond_0

    .line 821
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$18$2;->val$pager:Landroid/support/v4/view/ViewPager;

    sget-object v2, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v2}, Lcom/vkcoffee/android/AudioPlayerService;->getPlaylistPosition()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 831
    :goto_0
    return-void

    .line 823
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$18$2;->val$pager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerActivity$18$2;->val$pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 824
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$18$2;->val$pager:Landroid/support/v4/view/ViewPager;

    sget-object v2, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v2}, Lcom/vkcoffee/android/AudioPlayerService;->getPlaylistPosition()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 825
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$18$2;->val$pager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/vkcoffee/android/AudioPlayerActivity$18$2$1;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/AudioPlayerActivity$18$2$1;-><init>(Lcom/vkcoffee/android/AudioPlayerActivity$18$2;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/support/v4/view/ViewPager;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

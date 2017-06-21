.class Lcom/vkcoffee/android/AudioPlayerActivity$20$2;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/AudioPlayerActivity$20;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/AudioPlayerActivity$20;

.field private final synthetic val$pager:Landroid/support/v4/view/ViewPager;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/AudioPlayerActivity$20;Landroid/support/v4/view/ViewPager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$20$2;->this$1:Lcom/vkcoffee/android/AudioPlayerActivity$20;

    iput-object p2, p0, Lcom/vkcoffee/android/AudioPlayerActivity$20$2;->val$pager:Landroid/support/v4/view/ViewPager;

    .line 835
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/AudioPlayerActivity$20$2;)Lcom/vkcoffee/android/AudioPlayerActivity$20;
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$20$2;->this$1:Lcom/vkcoffee/android/AudioPlayerActivity$20;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 837
    sget-object v0, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v0}, Lcom/vkcoffee/android/AudioPlayerService;->getPlaylistPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$20$2;->val$pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v2, :cond_0

    .line 838
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$20$2;->val$pager:Landroid/support/v4/view/ViewPager;

    sget-object v1, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkcoffee/android/AudioPlayerService;->getPlaylistPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 848
    :goto_0
    return-void

    .line 841
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$20$2;->val$pager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$20$2;->val$pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 842
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$20$2;->val$pager:Landroid/support/v4/view/ViewPager;

    sget-object v1, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkcoffee/android/AudioPlayerService;->getPlaylistPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 843
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$20$2;->val$pager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/vkcoffee/android/AudioPlayerActivity$20$2$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/AudioPlayerActivity$20$2$1;-><init>(Lcom/vkcoffee/android/AudioPlayerActivity$20$2;)V

    .line 847
    const-wide/16 v2, 0x64

    .line 843
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/view/ViewPager;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

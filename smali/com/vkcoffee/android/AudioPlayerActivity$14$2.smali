.class Lcom/vkcoffee/android/AudioPlayerActivity$14$2;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/AudioPlayerActivity$14;->onPageScrollStateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/AudioPlayerActivity$14;

.field private final synthetic val$pager:Landroid/support/v4/view/ViewPager;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/AudioPlayerActivity$14;Landroid/support/v4/view/ViewPager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$14$2;->this$1:Lcom/vkcoffee/android/AudioPlayerActivity$14;

    iput-object p2, p0, Lcom/vkcoffee/android/AudioPlayerActivity$14$2;->val$pager:Landroid/support/v4/view/ViewPager;

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 429
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$14$2;->val$pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->postInvalidate()V

    .line 430
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$14$2;->this$1:Lcom/vkcoffee/android/AudioPlayerActivity$14;

    invoke-virtual {v0, v2}, Lcom/vkcoffee/android/AudioPlayerActivity$14;->onPageScrollStateChanged(I)V

    .line 431
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$14$2;->val$pager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$14$2;->val$pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 432
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$14$2;->val$pager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 433
    return-void
.end method

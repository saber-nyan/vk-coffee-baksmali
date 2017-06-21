.class Lcom/vkcoffee/android/AudioPlayerActivity$14;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/AudioPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field curPage:I

.field lastState:I

.field final synthetic this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

.field private final synthetic val$pager:Landroid/support/v4/view/ViewPager;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/AudioPlayerActivity;Landroid/support/v4/view/ViewPager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$14;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    iput-object p2, p0, Lcom/vkcoffee/android/AudioPlayerActivity$14;->val$pager:Landroid/support/v4/view/ViewPager;

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 10
    .param p1, "state"    # I

    .prologue
    const-wide/16 v8, 0xa

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 409
    const-string v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "state changed "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerActivity$14;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    invoke-static {v3, p1}, Lcom/vkcoffee/android/AudioPlayerActivity;->access$8(Lcom/vkcoffee/android/AudioPlayerActivity;I)V

    .line 411
    iput p1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$14;->lastState:I

    .line 412
    if-nez p1, :cond_2

    .line 413
    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerActivity$14;->val$pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 414
    .local v0, "pos":I
    if-gtz v0, :cond_4

    sget-object v3, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v3}, Lcom/vkcoffee/android/AudioPlayerService;->getPlaylistLength()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 415
    .local v1, "realPos":I
    :goto_0
    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerActivity$14;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    iput-boolean v2, v3, Lcom/vkcoffee/android/AudioPlayerActivity;->wasTouching:Z

    .line 416
    if-nez v0, :cond_0

    .line 417
    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerActivity$14;->val$pager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lcom/vkcoffee/android/AudioPlayerActivity$14$1;

    iget-object v4, p0, Lcom/vkcoffee/android/AudioPlayerActivity$14;->val$pager:Landroid/support/v4/view/ViewPager;

    invoke-direct {v3, p0, v4}, Lcom/vkcoffee/android/AudioPlayerActivity$14$1;-><init>(Lcom/vkcoffee/android/AudioPlayerActivity$14;Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {v2, v3, v8, v9}, Landroid/support/v4/view/ViewPager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 426
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerActivity$14;->val$pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_1

    .line 427
    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerActivity$14;->val$pager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lcom/vkcoffee/android/AudioPlayerActivity$14$2;

    iget-object v4, p0, Lcom/vkcoffee/android/AudioPlayerActivity$14;->val$pager:Landroid/support/v4/view/ViewPager;

    invoke-direct {v3, p0, v4}, Lcom/vkcoffee/android/AudioPlayerActivity$14$2;-><init>(Lcom/vkcoffee/android/AudioPlayerActivity$14;Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {v2, v3, v8, v9}, Landroid/support/v4/view/ViewPager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 436
    :cond_1
    sget-object v2, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v2}, Lcom/vkcoffee/android/AudioPlayerService;->getPlaylistPosition()I

    move-result v2

    if-eq v2, v1, :cond_2

    add-int/lit8 v2, v0, -0x1

    if-ne v2, v1, :cond_2

    .line 437
    sget-object v2, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v2, v1}, Lcom/vkcoffee/android/AudioPlayerService;->jumpToTrack(I)V

    .line 440
    .end local v0    # "pos":I
    .end local v1    # "realPos":I
    :cond_2
    if-ne p1, v6, :cond_3

    .line 441
    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerActivity$14;->val$pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    iput v2, p0, Lcom/vkcoffee/android/AudioPlayerActivity$14;->curPage:I

    .line 442
    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerActivity$14;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    iput-boolean v6, v2, Lcom/vkcoffee/android/AudioPlayerActivity;->wasTouching:Z

    .line 444
    :cond_3
    return-void

    .line 414
    .restart local v0    # "pos":I
    :cond_4
    sget-object v3, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v3}, Lcom/vkcoffee/android/AudioPlayerService;->getPlaylistLength()I

    move-result v3

    if-le v0, v3, :cond_5

    move v1, v2

    goto :goto_0

    :cond_5
    add-int/lit8 v1, v0, -0x1

    goto :goto_0
.end method

.method public onPageScrolled(IFI)V
    .locals 4
    .param p1, "page"    # I
    .param p2, "offset"    # F
    .param p3, "offsetPx"    # I

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 398
    iget v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$14;->lastState:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$14;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    iget-boolean v0, v0, Lcom/vkcoffee/android/AudioPlayerActivity;->wasTouching:Z

    if-eqz v0, :cond_2

    .line 399
    iget v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$14;->curPage:I

    if-ge p1, v0, :cond_0

    .line 400
    sub-float p2, v3, p2

    .line 402
    :cond_0
    cmpl-float v0, p2, v2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$14;->curPage:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$14;->lastState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    :cond_1
    cmpl-float v0, p2, v2

    if-ltz v0, :cond_2

    .line 403
    sget-object v0, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    sub-float v1, v3, p2

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/AudioPlayerService;->setVolume(F)V

    .line 406
    :cond_2
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 395
    return-void
.end method

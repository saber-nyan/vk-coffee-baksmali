.class public Lcom/vk/attachpicker/AttachActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "AttachActivity.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/ResulterProvider;
.implements Lcom/vk/attachpicker/SelectionContext$SelectionContextProvider;
.implements Lcom/vk/attachpicker/AttachResulter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/attachpicker/AttachActivity$FragmentAdapter;
    }
.end annotation


# instance fields
.field private attachCounterView:Lcom/vk/attachpicker/widget/AttachCounterView;

.field private bottomButton:Landroid/view/View;

.field private bottomSheetBehavior:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

.field private cancelView:Landroid/view/View;

.field private clickHandler:Landroid/view/View;

.field private enableGiftAttachment:Z

.field private enableGraffitiAttachment:Z

.field private enableMapAttachment:Z

.field private giftUser:Landroid/os/Parcelable;

.field private final giftsReceiver:Landroid/content/BroadcastReceiver;

.field private graffitiAvatar:Ljava/lang/String;

.field private graffitiTitle:Ljava/lang/String;

.field private final handler:Landroid/os/Handler;

.field private mainContent:Landroid/support/design/widget/CoordinatorLayout;

.field private final onSelectionUpdate:Lcom/vk/attachpicker/events/NotificationListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vk/attachpicker/events/NotificationListener",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private pager:Lcom/vk/attachpicker/widget/ContentViewPager;

.field private pagerAdapter:Lcom/vk/attachpicker/AttachActivity$FragmentAdapter;

.field private requestCode:I

.field private final selectionContext:Lcom/vk/attachpicker/SelectionContext;

.field private semiTransparentBgColor:I

.field private tabPosition:I

.field private tabPositionOffset:F

.field private tabs:Landroid/support/v7/widget/RecyclerView;

.field private tabsAdapter:Lcom/vk/attachpicker/adapter/TabsAdapter;

.field private tabsContainer:Landroid/widget/FrameLayout;

.field private tabsOverlay:Landroid/view/View;

.field private toolbarContainer:Lcom/vk/attachpicker/widget/ToolbarContainer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->handler:Landroid/os/Handler;

    .line 72
    new-instance v0, Lcom/vk/attachpicker/SelectionContext;

    invoke-direct {v0}, Lcom/vk/attachpicker/SelectionContext;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->selectionContext:Lcom/vk/attachpicker/SelectionContext;

    .line 103
    new-instance v0, Lcom/vk/attachpicker/AttachActivity$1;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/AttachActivity$1;-><init>(Lcom/vk/attachpicker/AttachActivity;)V

    iput-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->giftsReceiver:Landroid/content/BroadcastReceiver;

    .line 623
    new-instance v0, Lcom/vk/attachpicker/AttachActivity$8;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/AttachActivity$8;-><init>(Lcom/vk/attachpicker/AttachActivity;)V

    iput-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->onSelectionUpdate:Lcom/vk/attachpicker/events/NotificationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/vk/attachpicker/AttachActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/AttachActivity;

    .prologue
    .line 69
    iget v0, p0, Lcom/vk/attachpicker/AttachActivity;->tabPosition:I

    return v0
.end method

.method static synthetic access$002(Lcom/vk/attachpicker/AttachActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/AttachActivity;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/vk/attachpicker/AttachActivity;->tabPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/vk/attachpicker/AttachActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/AttachActivity;

    .prologue
    .line 69
    iget v0, p0, Lcom/vk/attachpicker/AttachActivity;->tabPositionOffset:F

    return v0
.end method

.method static synthetic access$1000(Lcom/vk/attachpicker/AttachActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/AttachActivity;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/vk/attachpicker/AttachActivity;->finishInternal()V

    return-void
.end method

.method static synthetic access$102(Lcom/vk/attachpicker/AttachActivity;F)F
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/AttachActivity;
    .param p1, "x1"    # F

    .prologue
    .line 69
    iput p1, p0, Lcom/vk/attachpicker/AttachActivity;->tabPositionOffset:F

    return p1
.end method

.method static synthetic access$1100(Lcom/vk/attachpicker/AttachActivity;)Lcom/vk/attachpicker/AttachActivity$FragmentAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/AttachActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->pagerAdapter:Lcom/vk/attachpicker/AttachActivity$FragmentAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/vk/attachpicker/AttachActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/AttachActivity;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/vk/attachpicker/AttachActivity;->updateAllowHorizontalScroll()V

    return-void
.end method

.method static synthetic access$1300(Lcom/vk/attachpicker/AttachActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/AttachActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->tabsContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/vk/attachpicker/AttachActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/AttachActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->bottomButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/vk/attachpicker/AttachActivity;)Lcom/vk/attachpicker/widget/ToolbarContainer;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/AttachActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->toolbarContainer:Lcom/vk/attachpicker/widget/ToolbarContainer;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/vk/attachpicker/AttachActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/AttachActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->tabsOverlay:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/vk/attachpicker/AttachActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/AttachActivity;

    .prologue
    .line 69
    iget v0, p0, Lcom/vk/attachpicker/AttachActivity;->semiTransparentBgColor:I

    return v0
.end method

.method static synthetic access$1800(Lcom/vk/attachpicker/AttachActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/AttachActivity;
    .param p1, "x1"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/AttachActivity;->setStatusBarColor(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/vk/attachpicker/AttachActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/AttachActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->cancelView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vk/attachpicker/AttachActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/AttachActivity;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/vk/attachpicker/AttachActivity;->updateSelection()V

    return-void
.end method

.method static synthetic access$2000(Lcom/vk/attachpicker/AttachActivity;)Lcom/vk/attachpicker/adapter/TabsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/AttachActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->tabsAdapter:Lcom/vk/attachpicker/adapter/TabsAdapter;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/vk/attachpicker/AttachActivity;)Lcom/vk/attachpicker/widget/AttachCounterView;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/AttachActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->attachCounterView:Lcom/vk/attachpicker/widget/AttachCounterView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vk/attachpicker/AttachActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/AttachActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->tabs:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vk/attachpicker/AttachActivity;)Lcom/vk/attachpicker/SelectionContext;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/AttachActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->selectionContext:Lcom/vk/attachpicker/SelectionContext;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vk/attachpicker/AttachActivity;)Lcom/vk/attachpicker/widget/ContentViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/AttachActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->pager:Lcom/vk/attachpicker/widget/ContentViewPager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vk/attachpicker/AttachActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/AttachActivity;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/vk/attachpicker/AttachActivity;->hideCancelButton()V

    return-void
.end method

.method static synthetic access$700(Lcom/vk/attachpicker/AttachActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/AttachActivity;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/vk/attachpicker/AttachActivity;->showCancelButton()V

    return-void
.end method

.method static synthetic access$800(Lcom/vk/attachpicker/AttachActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/AttachActivity;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/vk/attachpicker/AttachActivity;->onPageSelected()V

    return-void
.end method

.method static synthetic access$900(Lcom/vk/attachpicker/AttachActivity;)Landroid/support/design/widget/CoordinatorLayout;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/AttachActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->mainContent:Landroid/support/design/widget/CoordinatorLayout;

    return-object v0
.end method

.method private finishInternal()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 523
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->finish()V

    .line 524
    invoke-virtual {p0, v0, v0}, Lcom/vk/attachpicker/AttachActivity;->overridePendingTransition(II)V

    .line 525
    return-void
.end method

.method private handleOrientation(I)V
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    const/high16 v3, 0x40400000    # 3.0f

    .line 528
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->bottomSheetBehavior:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->height()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3fe66666    # 1.8f

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->setPeekHeight(I)V

    .line 533
    :goto_0
    return-void

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->bottomSheetBehavior:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    const/high16 v2, 0x40a00000    # 5.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->setPeekHeight(I)V

    goto :goto_0
.end method

.method private hideCancelButton()V
    .locals 4

    .prologue
    .line 545
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->cancelView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 546
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/vk/attachpicker/AttachActivity$7;

    invoke-direct {v1, p0}, Lcom/vk/attachpicker/AttachActivity$7;-><init>(Lcom/vk/attachpicker/AttachActivity;)V

    .line 547
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    .line 553
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 554
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 555
    return-void
.end method

.method private initTabs()V
    .locals 7

    .prologue
    const v6, 0x7f020293

    .line 406
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 407
    .local v0, "tabInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vk/attachpicker/adapter/TabsAdapter$TabInfo;>;"
    new-instance v1, Lcom/vk/attachpicker/adapter/TabsAdapter$TabInfo;

    const v2, 0x7f080388

    invoke-static {}, Lcom/vk/attachpicker/AttachActivity$$Lambda$10;->lambdaFactory$()Lcom/vkcoffee/android/functions/F0;

    move-result-object v3

    invoke-direct {v1, v6, v2, v3}, Lcom/vk/attachpicker/adapter/TabsAdapter$TabInfo;-><init>(IILcom/vkcoffee/android/functions/F0;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    iget-boolean v1, p0, Lcom/vk/attachpicker/AttachActivity;->enableGraffitiAttachment:Z

    if-eqz v1, :cond_0

    .line 416
    new-instance v1, Lcom/vk/attachpicker/adapter/TabsAdapter$TabInfo;

    const v2, 0x7f02029d

    const v3, 0x7f08036c

    invoke-static {p0}, Lcom/vk/attachpicker/AttachActivity$$Lambda$11;->lambdaFactory$(Lcom/vk/attachpicker/AttachActivity;)Lcom/vkcoffee/android/functions/F0;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/vk/attachpicker/adapter/TabsAdapter$TabInfo;-><init>(IILcom/vkcoffee/android/functions/F0;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    :cond_0
    iget-boolean v1, p0, Lcom/vk/attachpicker/AttachActivity;->enableMapAttachment:Z

    if-eqz v1, :cond_1

    .line 434
    new-instance v1, Lcom/vk/attachpicker/adapter/TabsAdapter$TabInfo;

    const v2, 0x7f0202a1

    const v3, 0x7f080387

    invoke-static {}, Lcom/vk/attachpicker/AttachActivity$$Lambda$12;->lambdaFactory$()Lcom/vkcoffee/android/functions/F0;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/vk/attachpicker/adapter/TabsAdapter$TabInfo;-><init>(IILcom/vkcoffee/android/functions/F0;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    :cond_1
    new-instance v1, Lcom/vk/attachpicker/adapter/TabsAdapter$TabInfo;

    const v2, 0x7f02029f

    const v3, 0x7f080384

    invoke-static {}, Lcom/vk/attachpicker/AttachActivity$$Lambda$13;->lambdaFactory$()Lcom/vkcoffee/android/functions/F0;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/vk/attachpicker/adapter/TabsAdapter$TabInfo;-><init>(IILcom/vkcoffee/android/functions/F0;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    iget-boolean v1, p0, Lcom/vk/attachpicker/AttachActivity;->enableGiftAttachment:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/vk/attachpicker/AttachActivity;->giftUser:Landroid/os/Parcelable;

    if-eqz v1, :cond_2

    .line 456
    new-instance v1, Lcom/vk/attachpicker/adapter/TabsAdapter$TabInfo;

    const/4 v2, 0x1

    const v3, 0x7f02029a

    const v4, 0x7f080386

    invoke-static {p0}, Lcom/vk/attachpicker/AttachActivity$$Lambda$14;->lambdaFactory$(Lcom/vk/attachpicker/AttachActivity;)Lcom/vkcoffee/android/functions/F0;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/vk/attachpicker/adapter/TabsAdapter$TabInfo;-><init>(ZIILcom/vkcoffee/android/functions/F0;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    :cond_2
    new-instance v1, Lcom/vk/attachpicker/adapter/TabsAdapter$TabInfo;

    const v2, 0x7f020290

    const v3, 0x7f080385

    invoke-static {}, Lcom/vk/attachpicker/AttachActivity$$Lambda$15;->lambdaFactory$()Lcom/vkcoffee/android/functions/F0;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/vk/attachpicker/adapter/TabsAdapter$TabInfo;-><init>(IILcom/vkcoffee/android/functions/F0;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    new-instance v1, Lcom/vk/attachpicker/adapter/TabsAdapter$TabInfo;

    const v2, 0x7f080389

    invoke-static {}, Lcom/vk/attachpicker/AttachActivity$$Lambda$16;->lambdaFactory$()Lcom/vkcoffee/android/functions/F0;

    move-result-object v3

    invoke-direct {v1, v6, v2, v3}, Lcom/vk/attachpicker/adapter/TabsAdapter$TabInfo;-><init>(IILcom/vkcoffee/android/functions/F0;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    new-instance v1, Lcom/vk/attachpicker/adapter/TabsAdapter$TabInfo;

    const v2, 0x7f0202af

    const v3, 0x7f08038a

    invoke-static {}, Lcom/vk/attachpicker/AttachActivity$$Lambda$17;->lambdaFactory$()Lcom/vkcoffee/android/functions/F0;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/vk/attachpicker/adapter/TabsAdapter$TabInfo;-><init>(IILcom/vkcoffee/android/functions/F0;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    iget-object v1, p0, Lcom/vk/attachpicker/AttachActivity;->tabsAdapter:Lcom/vk/attachpicker/adapter/TabsAdapter;

    invoke-virtual {v1, v0}, Lcom/vk/attachpicker/adapter/TabsAdapter;->setItems(Ljava/util/ArrayList;)V

    .line 508
    return-void
.end method

.method private initViews()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 199
    invoke-direct {p0, v2}, Lcom/vk/attachpicker/AttachActivity;->setStatusBarColor(I)V

    .line 200
    const v0, 0x7f03010e

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/AttachActivity;->setContentView(I)V

    .line 202
    const v0, 0x7f1002db

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/AttachActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->tabs:Landroid/support/v7/widget/RecyclerView;

    .line 203
    const v0, 0x7f1002da

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/AttachActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->tabsContainer:Landroid/widget/FrameLayout;

    .line 204
    const v0, 0x7f1002dc

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/AttachActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->tabsOverlay:Landroid/view/View;

    .line 205
    const v0, 0x7f1002dd

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/AttachActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vk/attachpicker/widget/ToolbarContainer;

    iput-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->toolbarContainer:Lcom/vk/attachpicker/widget/ToolbarContainer;

    .line 206
    const v0, 0x7f10010e

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/AttachActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout;

    iput-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->mainContent:Landroid/support/design/widget/CoordinatorLayout;

    .line 207
    const v0, 0x7f1002d9

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/AttachActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->clickHandler:Landroid/view/View;

    .line 208
    const v0, 0x7f100117

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/AttachActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vk/attachpicker/widget/ContentViewPager;

    iput-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->pager:Lcom/vk/attachpicker/widget/ContentViewPager;

    .line 209
    const v0, 0x7f1002de

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/AttachActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->bottomButton:Landroid/view/View;

    .line 210
    const v0, 0x7f1002df

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/AttachActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vk/attachpicker/widget/AttachCounterView;

    iput-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->attachCounterView:Lcom/vk/attachpicker/widget/AttachCounterView;

    .line 211
    const v0, 0x7f1002e0

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/AttachActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->cancelView:Landroid/view/View;

    .line 213
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->toolbarContainer:Lcom/vk/attachpicker/widget/ToolbarContainer;

    invoke-static {}, Lcom/vk/attachpicker/AttachActivity$$Lambda$2;->lambdaFactory$()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/widget/ToolbarContainer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->attachCounterView:Lcom/vk/attachpicker/widget/AttachCounterView;

    invoke-static {p0}, Lcom/vk/attachpicker/AttachActivity$$Lambda$3;->lambdaFactory$(Lcom/vk/attachpicker/AttachActivity;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/widget/AttachCounterView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->cancelView:Landroid/view/View;

    invoke-static {p0}, Lcom/vk/attachpicker/AttachActivity$$Lambda$4;->lambdaFactory$(Lcom/vk/attachpicker/AttachActivity;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->tabsContainer:Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/vk/attachpicker/AttachActivity$$Lambda$5;->lambdaFactory$()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->tabs:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/vk/attachpicker/widget/TabsLayoutManager;

    invoke-direct {v1, p0, v2, v2}, Lcom/vk/attachpicker/widget/TabsLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 222
    new-instance v0, Lcom/vk/attachpicker/adapter/TabsAdapter;

    new-instance v1, Lcom/vk/attachpicker/AttachActivity$3;

    invoke-direct {v1, p0}, Lcom/vk/attachpicker/AttachActivity$3;-><init>(Lcom/vk/attachpicker/AttachActivity;)V

    invoke-direct {v0, v1}, Lcom/vk/attachpicker/adapter/TabsAdapter;-><init>(Lcom/vk/attachpicker/adapter/TabsAdapter$CurrentSelectionProvider;)V

    iput-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->tabsAdapter:Lcom/vk/attachpicker/adapter/TabsAdapter;

    .line 233
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->tabsAdapter:Lcom/vk/attachpicker/adapter/TabsAdapter;

    invoke-static {p0}, Lcom/vk/attachpicker/AttachActivity$$Lambda$6;->lambdaFactory$(Lcom/vk/attachpicker/AttachActivity;)Lcom/vk/attachpicker/widget/OnItemClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/adapter/TabsAdapter;->setItemClickListener(Lcom/vk/attachpicker/widget/OnItemClickListener;)V

    .line 240
    invoke-direct {p0}, Lcom/vk/attachpicker/AttachActivity;->initTabs()V

    .line 241
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->tabs:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/vk/attachpicker/AttachActivity;->tabsAdapter:Lcom/vk/attachpicker/adapter/TabsAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 242
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->tabs:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/vk/attachpicker/AttachActivity$4;

    invoke-direct {v1, p0}, Lcom/vk/attachpicker/AttachActivity$4;-><init>(Lcom/vk/attachpicker/AttachActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 249
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->mainContent:Landroid/support/design/widget/CoordinatorLayout;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/CoordinatorLayout;->setStatusBarBackgroundColor(I)V

    .line 250
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->clickHandler:Landroid/view/View;

    invoke-static {p0}, Lcom/vk/attachpicker/AttachActivity$$Lambda$7;->lambdaFactory$(Lcom/vk/attachpicker/AttachActivity;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    new-instance v0, Lcom/vk/attachpicker/AttachActivity$FragmentAdapter;

    invoke-virtual {p0}, Lcom/vk/attachpicker/AttachActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vk/attachpicker/AttachActivity$FragmentAdapter;-><init>(Lcom/vk/attachpicker/AttachActivity;Landroid/app/FragmentManager;)V

    iput-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->pagerAdapter:Lcom/vk/attachpicker/AttachActivity$FragmentAdapter;

    .line 253
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->pager:Lcom/vk/attachpicker/widget/ContentViewPager;

    iget-object v1, p0, Lcom/vk/attachpicker/AttachActivity;->pagerAdapter:Lcom/vk/attachpicker/AttachActivity$FragmentAdapter;

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/widget/ContentViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 255
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->pager:Lcom/vk/attachpicker/widget/ContentViewPager;

    new-instance v1, Lcom/vk/attachpicker/AttachActivity$5;

    invoke-direct {v1, p0}, Lcom/vk/attachpicker/AttachActivity$5;-><init>(Lcom/vk/attachpicker/AttachActivity;)V

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/widget/ContentViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 284
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->pager:Lcom/vk/attachpicker/widget/ContentViewPager;

    invoke-static {v0}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->from(Landroid/view/View;)Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->bottomSheetBehavior:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    .line 285
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->bottomSheetBehavior:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->setHideable(Z)V

    .line 286
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->bottomSheetBehavior:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->setState(I)V

    .line 287
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->bottomSheetBehavior:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    new-instance v1, Lcom/vk/attachpicker/AttachActivity$6;

    invoke-direct {v1, p0}, Lcom/vk/attachpicker/AttachActivity$6;-><init>(Lcom/vk/attachpicker/AttachActivity;)V

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->setBottomSheetCallback(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$BottomSheetCallback;)V

    .line 354
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->pager:Lcom/vk/attachpicker/widget/ContentViewPager;

    invoke-virtual {v0}, Lcom/vk/attachpicker/widget/ContentViewPager;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-static {p0}, Lcom/vk/attachpicker/AttachActivity$$Lambda$8;->lambdaFactory$(Lcom/vk/attachpicker/AttachActivity;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 356
    invoke-virtual {p0}, Lcom/vk/attachpicker/AttachActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/vk/attachpicker/AttachActivity;->handleOrientation(I)V

    .line 358
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->pager:Lcom/vk/attachpicker/widget/ContentViewPager;

    invoke-static {p0}, Lcom/vk/attachpicker/AttachActivity$$Lambda$9;->lambdaFactory$(Lcom/vk/attachpicker/AttachActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vk/attachpicker/util/Utils;->runOnPreDraw(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 361
    return-void
.end method

.method static synthetic lambda$initTabs$14()Landroid/app/Fragment;
    .locals 4

    .prologue
    .line 408
    new-instance v1, Lcom/vk/attachpicker/fragment/GalleryFragment;

    invoke-direct {v1}, Lcom/vk/attachpicker/fragment/GalleryFragment;-><init>()V

    .line 409
    .local v1, "fragment":Lcom/vk/attachpicker/fragment/GalleryFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 410
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v2, "media_type"

    const/16 v3, 0x6f

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 411
    invoke-virtual {v1, v0}, Lcom/vk/attachpicker/fragment/GalleryFragment;->setArguments(Landroid/os/Bundle;)V

    .line 412
    return-object v1
.end method

.method static synthetic lambda$initTabs$16()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 435
    new-instance v0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    invoke-direct {v0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;-><init>()V

    .line 436
    .local v0, "checkInFragment":Lcom/vkcoffee/android/fragments/location/CheckInFragment;
    return-object v0
.end method

.method static synthetic lambda$initTabs$17()Landroid/app/Fragment;
    .locals 4

    .prologue
    .line 446
    new-instance v0, Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-direct {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment;-><init>()V

    .line 448
    .local v0, "audioListFragment":Lcom/vkcoffee/android/fragments/AudioListFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 449
    .local v1, "b":Landroid/os/Bundle;
    const-string/jumbo v2, "select"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 450
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 452
    return-object v0
.end method

.method static synthetic lambda$initTabs$19()Landroid/app/Fragment;
    .locals 4

    .prologue
    .line 473
    new-instance v1, Lcom/vkcoffee/android/fragments/documents/DocumentsChooserFragment;

    invoke-direct {v1}, Lcom/vkcoffee/android/fragments/documents/DocumentsChooserFragment;-><init>()V

    .line 474
    .local v1, "documentsChooserFragment":Lcom/vkcoffee/android/fragments/documents/DocumentsChooserFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 475
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v2, "select"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 476
    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/fragments/documents/DocumentsChooserFragment;->setArguments(Landroid/os/Bundle;)V

    .line 478
    return-object v1
.end method

.method static synthetic lambda$initTabs$20()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 490
    new-instance v0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKPhotoFragment;

    invoke-direct {v0}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKPhotoFragment;-><init>()V

    .line 491
    .local v0, "pickVKPhotoFragment":Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKPhotoFragment;
    return-object v0
.end method

.method static synthetic lambda$initTabs$21()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 502
    new-instance v0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;

    invoke-direct {v0}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;-><init>()V

    .line 504
    .local v0, "videoFragment":Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;
    return-object v0
.end method

.method static synthetic lambda$initViews$6(Landroid/view/View;)V
    .locals 0
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 213
    return-void
.end method

.method static synthetic lambda$initViews$9(Landroid/view/View;)V
    .locals 0
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 220
    return-void
.end method

.method private onPageSelected()V
    .locals 4

    .prologue
    .line 373
    invoke-direct {p0}, Lcom/vk/attachpicker/AttachActivity;->updateAllowHorizontalScroll()V

    .line 375
    iget-object v2, p0, Lcom/vk/attachpicker/AttachActivity;->toolbarContainer:Lcom/vk/attachpicker/widget/ToolbarContainer;

    invoke-virtual {v2}, Lcom/vk/attachpicker/widget/ToolbarContainer;->removeAllViews()V

    .line 376
    iget-object v2, p0, Lcom/vk/attachpicker/AttachActivity;->pagerAdapter:Lcom/vk/attachpicker/AttachActivity$FragmentAdapter;

    iget-object v3, p0, Lcom/vk/attachpicker/AttachActivity;->pager:Lcom/vk/attachpicker/widget/ContentViewPager;

    invoke-virtual {v3}, Lcom/vk/attachpicker/widget/ContentViewPager;->getCurrentItem()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/vk/attachpicker/AttachActivity$FragmentAdapter;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    .line 377
    .local v0, "fragment":Landroid/app/Fragment;
    instance-of v2, v0, Lcom/vk/attachpicker/SupportExternalToolbarContainer;

    if-eqz v2, :cond_1

    .line 379
    check-cast v0, Lcom/vk/attachpicker/SupportExternalToolbarContainer;

    .end local v0    # "fragment":Landroid/app/Fragment;
    invoke-interface {v0, p0}, Lcom/vk/attachpicker/SupportExternalToolbarContainer;->provideToolbar(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 381
    .local v1, "toolbar":Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    .line 382
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 383
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 385
    :cond_0
    iget-object v2, p0, Lcom/vk/attachpicker/AttachActivity;->toolbarContainer:Lcom/vk/attachpicker/widget/ToolbarContainer;

    invoke-virtual {v2}, Lcom/vk/attachpicker/widget/ToolbarContainer;->removeAllViews()V

    .line 386
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 387
    iget-object v2, p0, Lcom/vk/attachpicker/AttachActivity;->toolbarContainer:Lcom/vk/attachpicker/widget/ToolbarContainer;

    invoke-virtual {v2, v1}, Lcom/vk/attachpicker/widget/ToolbarContainer;->addView(Landroid/view/View;)V

    .line 390
    .end local v1    # "toolbar":Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method private setStatusBarColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 517
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 518
    invoke-virtual {p0}, Lcom/vk/attachpicker/AttachActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 520
    :cond_0
    return-void
.end method

.method private showCancelButton()V
    .locals 4

    .prologue
    .line 536
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->cancelView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 537
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->cancelView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 538
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 539
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    .line 540
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 541
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 542
    return-void
.end method

.method private updateAllowHorizontalScroll()V
    .locals 3

    .prologue
    .line 395
    iget-object v1, p0, Lcom/vk/attachpicker/AttachActivity;->bottomSheetBehavior:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    invoke-virtual {v1}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/vk/attachpicker/AttachActivity;->tabsAdapter:Lcom/vk/attachpicker/adapter/TabsAdapter;

    invoke-virtual {v1}, Lcom/vk/attachpicker/adapter/TabsAdapter;->getItems()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/vk/attachpicker/AttachActivity;->pager:Lcom/vk/attachpicker/widget/ContentViewPager;

    invoke-virtual {v2}, Lcom/vk/attachpicker/widget/ContentViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vk/attachpicker/adapter/TabsAdapter$TabInfo;

    iget-boolean v1, v1, Lcom/vk/attachpicker/adapter/TabsAdapter$TabInfo;->allowHorizontalScroll:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 396
    .local v0, "allowNestedHorizontalScroll":Z
    :goto_0
    iget-object v1, p0, Lcom/vk/attachpicker/AttachActivity;->pager:Lcom/vk/attachpicker/widget/ContentViewPager;

    invoke-virtual {v1, v0}, Lcom/vk/attachpicker/widget/ContentViewPager;->setAllowNestedViewHorizontalScroll(Z)V

    .line 397
    return-void

    .line 395
    .end local v0    # "allowNestedHorizontalScroll":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSelection()V
    .locals 5

    .prologue
    .line 364
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/vk/attachpicker/AttachActivity;->tabs:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 365
    iget-object v3, p0, Lcom/vk/attachpicker/AttachActivity;->tabs:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 366
    .local v2, "v":Landroid/view/View;
    iget-object v3, p0, Lcom/vk/attachpicker/AttachActivity;->tabs:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 367
    .local v0, "adapterPosition":I
    check-cast v2, Lcom/vk/attachpicker/widget/TabView;

    .end local v2    # "v":Landroid/view/View;
    iget v3, p0, Lcom/vk/attachpicker/AttachActivity;->tabPosition:I

    iget v4, p0, Lcom/vk/attachpicker/AttachActivity;->tabPositionOffset:F

    invoke-virtual {v2, v0, v3, v4}, Lcom/vk/attachpicker/widget/TabView;->setSelection(IIF)V

    .line 364
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 369
    .end local v0    # "adapterPosition":I
    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->bottomSheetBehavior:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->setState(I)V

    .line 192
    return-void
.end method

.method public getSelectionContext()Lcom/vk/attachpicker/SelectionContext;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->selectionContext:Lcom/vk/attachpicker/SelectionContext;

    return-object v0
.end method

.method synthetic lambda$initTabs$15()Landroid/app/Fragment;
    .locals 4

    .prologue
    .line 417
    new-instance v1, Lcom/vk/attachpicker/fragment/GraffitiFragment;

    invoke-direct {v1}, Lcom/vk/attachpicker/fragment/GraffitiFragment;-><init>()V

    .line 419
    .local v1, "graffitiFragment":Lcom/vk/attachpicker/fragment/GraffitiFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 420
    .local v0, "b":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/vk/attachpicker/AttachActivity;->graffitiAvatar:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 421
    const-string/jumbo v2, "graffiti_avatar"

    iget-object v3, p0, Lcom/vk/attachpicker/AttachActivity;->graffitiAvatar:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :cond_0
    iget-object v2, p0, Lcom/vk/attachpicker/AttachActivity;->graffitiTitle:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 424
    const-string/jumbo v2, "graffiti_title"

    iget-object v3, p0, Lcom/vk/attachpicker/AttachActivity;->graffitiTitle:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :cond_1
    invoke-virtual {v1, v0}, Lcom/vk/attachpicker/fragment/GraffitiFragment;->setArguments(Landroid/os/Bundle;)V

    .line 428
    return-object v1
.end method

.method synthetic lambda$initTabs$18()Landroid/app/Fragment;
    .locals 4

    .prologue
    .line 459
    new-instance v1, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;

    invoke-direct {v1}, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;-><init>()V

    .line 461
    .local v1, "giftFragment":Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 463
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v2, "user"

    iget-object v3, p0, Lcom/vk/attachpicker/AttachActivity;->giftUser:Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 465
    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 467
    return-object v1
.end method

.method synthetic lambda$initViews$10(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    .line 234
    iget-object v1, p0, Lcom/vk/attachpicker/AttachActivity;->bottomSheetBehavior:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vk/attachpicker/AttachActivity;->bottomSheetBehavior:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    invoke-virtual {v1}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 236
    iget-object v1, p0, Lcom/vk/attachpicker/AttachActivity;->pager:Lcom/vk/attachpicker/widget/ContentViewPager;

    iget-object v2, p0, Lcom/vk/attachpicker/AttachActivity;->pager:Lcom/vk/attachpicker/widget/ContentViewPager;

    invoke-virtual {v2}, Lcom/vk/attachpicker/widget/ContentViewPager;->getCurrentItem()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v0, :cond_1

    :goto_0
    invoke-virtual {v1, p1, v0}, Lcom/vk/attachpicker/widget/ContentViewPager;->setCurrentItem(IZ)V

    .line 237
    invoke-direct {p0}, Lcom/vk/attachpicker/AttachActivity;->updateSelection()V

    .line 239
    :cond_0
    return-void

    .line 236
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic lambda$initViews$11(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/vk/attachpicker/AttachActivity;->finish()V

    return-void
.end method

.method synthetic lambda$initViews$12()V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->bottomSheetBehavior:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    iget-object v1, p0, Lcom/vk/attachpicker/AttachActivity;->pager:Lcom/vk/attachpicker/widget/ContentViewPager;

    invoke-virtual {v1}, Lcom/vk/attachpicker/widget/ContentViewPager;->getTop()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->dispatchOnSlide(I)V

    return-void
.end method

.method synthetic lambda$initViews$13()V
    .locals 0

    .prologue
    .line 359
    invoke-direct {p0}, Lcom/vk/attachpicker/AttachActivity;->onPageSelected()V

    .line 360
    return-void
.end method

.method synthetic lambda$initViews$7(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->selectionContext:Lcom/vk/attachpicker/SelectionContext;

    invoke-virtual {v0}, Lcom/vk/attachpicker/SelectionContext;->getPackedSelection()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/AttachActivity;->setResultAndFinish(Landroid/content/Intent;)V

    .line 217
    return-void
.end method

.method synthetic lambda$initViews$8(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/vk/attachpicker/AttachActivity;->finish()V

    return-void
.end method

.method synthetic lambda$onCreate$5()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->tabsContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->bottomSheetBehavior:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->setState(I)V

    .line 143
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->pager:Lcom/vk/attachpicker/widget/ContentViewPager;

    invoke-virtual {v0}, Lcom/vk/attachpicker/widget/ContentViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->selectionContext:Lcom/vk/attachpicker/SelectionContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->selectionContext:Lcom/vk/attachpicker/SelectionContext;

    invoke-virtual {v0}, Lcom/vk/attachpicker/SelectionContext;->selectionCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->selectionContext:Lcom/vk/attachpicker/SelectionContext;

    invoke-virtual {v0}, Lcom/vk/attachpicker/SelectionContext;->clear()V

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 512
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 513
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/vk/attachpicker/AttachActivity;->handleOrientation(I)V

    .line 514
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 112
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {p0, v4, v4}, Lcom/vk/attachpicker/AttachActivity;->overridePendingTransition(II)V

    .line 114
    invoke-static {p0}, Lcom/vk/attachpicker/util/KeyboardUtils;->setSoftInputModeNothing(Landroid/app/Activity;)V

    .line 116
    invoke-static {p0}, Lcom/vk/attachpicker/Picker;->init(Landroid/app/Activity;)V

    .line 117
    invoke-static {}, Lcom/vkcoffee/android/stickers/Stickers;->get()Lcom/vkcoffee/android/stickers/Stickers;

    .line 118
    const v0, 0x7f0f0078

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/AttachActivity;->semiTransparentBgColor:I

    .line 120
    invoke-virtual {p0}, Lcom/vk/attachpicker/AttachActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "request_code"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/AttachActivity;->requestCode:I

    .line 121
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->selectionContext:Lcom/vk/attachpicker/SelectionContext;

    invoke-virtual {p0}, Lcom/vk/attachpicker/AttachActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "selection_limit"

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/SelectionContext;->setLimit(I)V

    .line 122
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->selectionContext:Lcom/vk/attachpicker/SelectionContext;

    iget v1, p0, Lcom/vk/attachpicker/AttachActivity;->requestCode:I

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/SelectionContext;->setRequestCode(I)V

    .line 124
    invoke-virtual {p0}, Lcom/vk/attachpicker/AttachActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "enable_map_attachment"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vk/attachpicker/AttachActivity;->enableMapAttachment:Z

    .line 125
    invoke-virtual {p0}, Lcom/vk/attachpicker/AttachActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "enable_gift_attachment"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vk/attachpicker/AttachActivity;->enableGiftAttachment:Z

    .line 126
    invoke-virtual {p0}, Lcom/vk/attachpicker/AttachActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "enable_graffiti_att"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vk/attachpicker/AttachActivity;->enableGraffitiAttachment:Z

    .line 128
    invoke-virtual {p0}, Lcom/vk/attachpicker/AttachActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "gift_user"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/vk/attachpicker/AttachActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "gift_user"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->giftUser:Landroid/os/Parcelable;

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/vk/attachpicker/AttachActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "graffiti_avatar"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->graffitiAvatar:Ljava/lang/String;

    .line 132
    invoke-virtual {p0}, Lcom/vk/attachpicker/AttachActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "graffiti_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->graffitiTitle:Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->giftsReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.vkcoffee.android.ACTION_GIFT_SENT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/vk/attachpicker/AttachActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 136
    invoke-direct {p0}, Lcom/vk/attachpicker/AttachActivity;->initViews()V

    .line 137
    invoke-static {}, Lcom/vk/attachpicker/events/NotificationCenter;->getInstance()Lcom/vk/attachpicker/events/NotificationCenter;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/vk/attachpicker/AttachActivity;->onSelectionUpdate:Lcom/vk/attachpicker/events/NotificationListener;

    invoke-virtual {v0, v1, v2}, Lcom/vk/attachpicker/events/NotificationCenter;->addListener(ILcom/vk/attachpicker/events/NotificationListener;)V

    .line 139
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->handler:Landroid/os/Handler;

    invoke-static {p0}, Lcom/vk/attachpicker/AttachActivity$$Lambda$1;->lambdaFactory$(Lcom/vk/attachpicker/AttachActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 146
    new-instance v0, Lcom/vk/attachpicker/util/PickerStickers;

    invoke-direct {v0}, Lcom/vk/attachpicker/util/PickerStickers;-><init>()V

    new-instance v1, Lcom/vk/attachpicker/AttachActivity$2;

    invoke-direct {v1, p0}, Lcom/vk/attachpicker/AttachActivity$2;-><init>(Lcom/vk/attachpicker/AttachActivity;)V

    .line 147
    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/util/PickerStickers;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 165
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 175
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 176
    invoke-static {}, Lcom/vk/attachpicker/events/NotificationCenter;->getInstance()Lcom/vk/attachpicker/events/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/vk/attachpicker/AttachActivity;->onSelectionUpdate:Lcom/vk/attachpicker/events/NotificationListener;

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/events/NotificationCenter;->removeListener(Lcom/vk/attachpicker/events/NotificationListener;)V

    .line 177
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity;->giftsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/AttachActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 178
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 169
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 170
    invoke-direct {p0}, Lcom/vk/attachpicker/AttachActivity;->onPageSelected()V

    .line 171
    return-void
.end method

.method public registerActivityResult(Lcom/vkcoffee/android/ui/ActivityResulter;)V
    .locals 0
    .param p1, "result"    # Lcom/vkcoffee/android/ui/ActivityResulter;

    .prologue
    .line 560
    return-void
.end method

.method public setResultAndFinish(Landroid/content/Intent;)V
    .locals 1
    .param p1, "result"    # Landroid/content/Intent;

    .prologue
    .line 569
    if-nez p1, :cond_0

    .line 570
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/AttachActivity;->setResult(I)V

    .line 571
    invoke-virtual {p0}, Lcom/vk/attachpicker/AttachActivity;->finish()V

    .line 576
    :goto_0
    return-void

    .line 573
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/vk/attachpicker/AttachActivity;->setResult(ILandroid/content/Intent;)V

    .line 574
    invoke-virtual {p0}, Lcom/vk/attachpicker/AttachActivity;->finish()V

    goto :goto_0
.end method

.method public superFinish()V
    .locals 0

    .prologue
    .line 195
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->finish()V

    .line 196
    return-void
.end method

.method public unregisterActivityResult(Lcom/vkcoffee/android/ui/ActivityResulter;)V
    .locals 0
    .param p1, "result"    # Lcom/vkcoffee/android/ui/ActivityResulter;

    .prologue
    .line 565
    return-void
.end method

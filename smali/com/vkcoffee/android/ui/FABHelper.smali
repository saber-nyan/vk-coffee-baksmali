.class public Lcom/vkcoffee/android/ui/FABHelper;
.super Ljava/lang/Object;
.source "FABHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;,
        Lcom/vkcoffee/android/ui/FABHelper$OnMenuClickListenerDelegate;,
        Lcom/vkcoffee/android/ui/FABHelper$OnClickListenerDelegate;,
        Lcom/vkcoffee/android/ui/FABHelper$OnOptionItemSelectedListener;
    }
.end annotation


# static fields
.field static final mInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mFloatingActionButton:Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/ui/FABHelper;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/ui/FABHelper;)Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/FABHelper;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkcoffee/android/ui/FABHelper;->mFloatingActionButton:Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;

    return-object v0
.end method

.method public static newInstance()Lcom/vkcoffee/android/ui/FABHelper;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 60
    sget-boolean v0, Lcom/vkcoffee/android/VKApplication;->hasLollipop:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/vkcoffee/android/ui/FABHelper;

    invoke-direct {v0}, Lcom/vkcoffee/android/ui/FABHelper;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public attach(Landroid/widget/FrameLayout;)V
    .locals 5
    .param p1, "host"    # Landroid/widget/FrameLayout;

    .prologue
    const/4 v4, -0x2

    const/high16 v3, 0x41800000    # 16.0f

    .line 69
    iget-object v1, p0, Lcom/vkcoffee/android/ui/FABHelper;->mFloatingActionButton:Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;

    if-nez v1, :cond_0

    .line 70
    new-instance v1, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkcoffee/android/ui/FABHelper;->mFloatingActionButton:Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;

    .line 72
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 73
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x55

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 74
    invoke-static {v3}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 75
    invoke-static {v3}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 77
    iget-object v1, p0, Lcom/vkcoffee/android/ui/FABHelper;->mFloatingActionButton:Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;

    invoke-virtual {p1, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public attach(Landroid/widget/RelativeLayout;)V
    .locals 5
    .param p1, "host"    # Landroid/widget/RelativeLayout;

    .prologue
    const/4 v4, -0x2

    const/high16 v3, 0x41800000    # 16.0f

    .line 105
    iget-object v1, p0, Lcom/vkcoffee/android/ui/FABHelper;->mFloatingActionButton:Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;

    if-nez v1, :cond_0

    .line 106
    new-instance v1, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkcoffee/android/ui/FABHelper;->mFloatingActionButton:Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;

    .line 108
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 109
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 110
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 111
    invoke-static {v3}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 112
    invoke-static {v3}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 114
    iget-object v1, p0, Lcom/vkcoffee/android/ui/FABHelper;->mFloatingActionButton:Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;

    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public attachNew(Landroid/widget/FrameLayout;)V
    .locals 4
    .param p1, "host"    # Landroid/widget/FrameLayout;

    .prologue
    const/4 v3, -0x2

    .line 87
    iget-object v1, p0, Lcom/vkcoffee/android/ui/FABHelper;->mFloatingActionButton:Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;

    if-nez v1, :cond_0

    .line 88
    new-instance v1, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkcoffee/android/ui/FABHelper;->mFloatingActionButton:Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;

    .line 90
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 91
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x55

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 92
    const/high16 v1, 0x423c0000    # 47.0f

    invoke-static {v1}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 93
    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 95
    iget-object v1, p0, Lcom/vkcoffee/android/ui/FABHelper;->mFloatingActionButton:Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;

    invoke-virtual {p1, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public attachToScroll()Landroid/widget/AbsListView$OnScrollListener;
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/vkcoffee/android/ui/FABHelper;->mFloatingActionButton:Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "FloatingActionButton is not attached to the host. Call attach() first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/FABHelper;->mFloatingActionButton:Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;->access$400(Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;)Lcom/vkcoffee/android/ui/ListDirectionDetector;

    move-result-object v0

    return-object v0
.end method

.method public attachToScroll(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2
    .param p1, "list"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/vkcoffee/android/ui/FABHelper;->mFloatingActionButton:Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "FloatingActionButton is not attached to the host. Call attach() first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/FABHelper;->mFloatingActionButton:Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;->access$400(Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;)Lcom/vkcoffee/android/ui/ListDirectionDetector;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 168
    return-void
.end method

.method public isAttached()Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/vkcoffee/android/ui/FABHelper;->mFloatingActionButton:Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setData(Landroid/view/MenuItem;Lcom/vkcoffee/android/ui/FABHelper$OnOptionItemSelectedListener;)V
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "handler"    # Lcom/vkcoffee/android/ui/FABHelper$OnOptionItemSelectedListener;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/vkcoffee/android/ui/FABHelper;->mFloatingActionButton:Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "FloatingActionButton is not attached to the host. Call attach() first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    new-instance v0, Lcom/vkcoffee/android/ui/FABHelper$OnMenuClickListenerDelegate;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/vkcoffee/android/ui/FABHelper$OnMenuClickListenerDelegate;-><init>(Landroid/view/MenuItem;Lcom/vkcoffee/android/ui/FABHelper$OnOptionItemSelectedListener;Lcom/vkcoffee/android/ui/FABHelper$1;)V

    iget-object v1, p0, Lcom/vkcoffee/android/ui/FABHelper;->mFloatingActionButton:Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/FABHelper$OnMenuClickListenerDelegate;->access$300(Lcom/vkcoffee/android/ui/FABHelper$OnMenuClickListenerDelegate;Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;)V

    .line 149
    return-void
.end method

.method public setData(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "handler"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/vkcoffee/android/ui/FABHelper;->mFloatingActionButton:Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "FloatingActionButton is not attached to the host. Call attach() first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    new-instance v0, Lcom/vkcoffee/android/ui/FABHelper$OnClickListenerDelegate;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/vkcoffee/android/ui/FABHelper$OnClickListenerDelegate;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Lcom/vkcoffee/android/ui/FABHelper$1;)V

    iget-object v1, p0, Lcom/vkcoffee/android/ui/FABHelper;->mFloatingActionButton:Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/FABHelper$OnClickListenerDelegate;->access$100(Lcom/vkcoffee/android/ui/FABHelper$OnClickListenerDelegate;Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;)V

    .line 135
    return-void
.end method

.method public setVisible(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    .line 171
    iget-object v0, p0, Lcom/vkcoffee/android/ui/FABHelper;->mFloatingActionButton:Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "FloatingActionButton is not attached to the host. Call attach() first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    if-eqz p1, :cond_1

    .line 175
    iget-object v0, p0, Lcom/vkcoffee/android/ui/FABHelper;->mFloatingActionButton:Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;

    new-instance v1, Lcom/vkcoffee/android/ui/FABHelper$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/ui/FABHelper$1;-><init>(Lcom/vkcoffee/android/ui/FABHelper;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/FABHelper;->mFloatingActionButton:Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;->setVisibility(I)V

    goto :goto_0
.end method

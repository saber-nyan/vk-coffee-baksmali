.class public Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;
.super Landroid/widget/FrameLayout;
.source "PullToRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "PullToRefreshLayout"


# instance fields
.field private isInverse:Z

.field private mPullToRefreshAttacher:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

.field private preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    new-instance v0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout$1;

    invoke-direct {v0, p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout$1;-><init>(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;)V

    iput-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->isInverse:Z

    .line 93
    return-void
.end method

.method static synthetic access$000(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;)Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;
    .locals 1
    .param p0, "x0"    # Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    .prologue
    .line 43
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->mPullToRefreshAttacher:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    return-object v0
.end method

.method private ensureAttacher()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->mPullToRefreshAttacher:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    if-nez v0, :cond_0

    .line 278
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "You need to setup the PullToRefreshLayout before using it"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_0
    return-void
.end method


# virtual methods
.method addAllChildrenAsPullable()V
    .locals 3

    .prologue
    .line 223
    invoke-direct {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->ensureAttacher()V

    .line 224
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->getChildCount()I

    move-result v1

    .local v1, "z":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 225
    invoke-virtual {p0, v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->addRefreshableView(Landroid/view/View;)V

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    :cond_0
    return-void
.end method

.method addChildrenAsPullable([I)V
    .locals 4
    .param p1, "viewIds"    # [I

    .prologue
    .line 230
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v2, p1

    .local v2, "z":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 231
    aget v3, p1, v0

    invoke-virtual {p0, v3}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 232
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 233
    aget v3, p1, v0

    invoke-virtual {p0, v3}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->addRefreshableView(Landroid/view/View;)V

    .line 230
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method addChildrenAsPullable([Landroid/view/View;)V
    .locals 3
    .param p1, "views"    # [Landroid/view/View;

    .prologue
    .line 239
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p1

    .local v1, "z":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 240
    aget-object v2, p1, v0

    if-eqz v2, :cond_0

    .line 241
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->addRefreshableView(Landroid/view/View;)V

    .line 239
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 244
    :cond_1
    return-void
.end method

.method addRefreshableView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 247
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->mPullToRefreshAttacher:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->mPullToRefreshAttacher:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    invoke-virtual {p0, p1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->getViewDelegateFromLayoutParams(Landroid/view/View;)Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/ViewDelegate;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->addRefreshableView(Landroid/view/View;Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/ViewDelegate;)V

    .line 250
    :cond_0
    return-void
.end method

.method protected createPullToRefreshAttacher(Landroid/app/Activity;Luk/co/senab/actionbarpulltorefresh/library/Options;)Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "options"    # Luk/co/senab/actionbarpulltorefresh/library/Options;

    .prologue
    .line 273
    new-instance v0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    if-eqz p2, :cond_0

    .end local p2    # "options":Luk/co/senab/actionbarpulltorefresh/library/Options;
    :goto_0
    invoke-direct {v0, p1, p2}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;-><init>(Landroid/app/Activity;Luk/co/senab/actionbarpulltorefresh/library/Options;)V

    return-object v0

    .restart local p2    # "options":Luk/co/senab/actionbarpulltorefresh/library/Options;
    :cond_0
    new-instance p2, Luk/co/senab/actionbarpulltorefresh/library/Options;

    .end local p2    # "options":Luk/co/senab/actionbarpulltorefresh/library/Options;
    invoke-direct {p2}, Luk/co/senab/actionbarpulltorefresh/library/Options;-><init>()V

    goto :goto_0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 188
    new-instance v0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout$LayoutParams;

    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getHeaderTransformer()Luk/co/senab/actionbarpulltorefresh/library/HeaderTransformer;
    .locals 1

    .prologue
    .line 159
    invoke-direct {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->ensureAttacher()V

    .line 160
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->mPullToRefreshAttacher:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    invoke-virtual {v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->getHeaderTransformer()Luk/co/senab/actionbarpulltorefresh/library/HeaderTransformer;

    move-result-object v0

    return-object v0
.end method

.method public final getHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 151
    invoke-direct {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->ensureAttacher()V

    .line 152
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->mPullToRefreshAttacher:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    invoke-virtual {v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->getHeaderView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getViewDelegateFromLayoutParams(Landroid/view/View;)Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/ViewDelegate;
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 253
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v3, v3, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout$LayoutParams;

    if-eqz v3, :cond_2

    .line 254
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout$LayoutParams;

    .line 255
    .local v2, "lp":Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout$LayoutParams;
    invoke-virtual {v2}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout$LayoutParams;->getViewDelegateClassName()Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "clazzName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 259
    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 260
    .local v1, "firstDot":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 261
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    :cond_0
    :goto_0
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Luk/co/senab/actionbarpulltorefresh/library/InstanceCreationUtils;->instantiateViewDelegate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/ViewDelegate;

    .line 268
    .end local v0    # "clazzName":Ljava/lang/String;
    .end local v1    # "firstDot":I
    .end local v2    # "lp":Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout$LayoutParams;
    :goto_1
    return-object v3

    .line 262
    .restart local v0    # "clazzName":Ljava/lang/String;
    .restart local v1    # "firstDot":I
    .restart local v2    # "lp":Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout$LayoutParams;
    :cond_1
    if-nez v1, :cond_0

    .line 263
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 268
    .end local v0    # "clazzName":Ljava/lang/String;
    .end local v1    # "firstDot":I
    .end local v2    # "lp":Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout$LayoutParams;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public isInverse()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->isInverse:Z

    return v0
.end method

.method public final isRefreshing()Z
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->ensureAttacher()V

    .line 121
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->mPullToRefreshAttacher:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    invoke-virtual {v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->isRefreshing()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 193
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 194
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 195
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 209
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->mPullToRefreshAttacher:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->mPullToRefreshAttacher:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    invoke-virtual {v0, p1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 212
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 213
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 199
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 201
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->mPullToRefreshAttacher:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->mPullToRefreshAttacher:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    invoke-virtual {v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->destroy()V

    .line 204
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 205
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 169
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->mPullToRefreshAttacher:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 170
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->mPullToRefreshAttacher:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    invoke-virtual {v0, p1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 172
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 180
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->mPullToRefreshAttacher:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->mPullToRefreshAttacher:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    invoke-virtual {v0, p1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 183
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final setHeaderViewListener(Luk/co/senab/actionbarpulltorefresh/library/listeners/HeaderViewListener;)V
    .locals 1
    .param p1, "listener"    # Luk/co/senab/actionbarpulltorefresh/library/listeners/HeaderViewListener;

    .prologue
    .line 142
    invoke-direct {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->ensureAttacher()V

    .line 143
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->mPullToRefreshAttacher:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    invoke-virtual {v0, p1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->setHeaderViewListener(Luk/co/senab/actionbarpulltorefresh/library/listeners/HeaderViewListener;)V

    .line 144
    return-void
.end method

.method public setInverse(Z)V
    .locals 2
    .param p1, "inv"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->isInverse:Z

    .line 101
    invoke-direct {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->ensureAttacher()V

    .line 102
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->mPullToRefreshAttacher:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    iget-boolean v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->isInverse:Z

    invoke-virtual {v0, v1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->setInverse(Z)V

    .line 103
    return-void
.end method

.method setPullToRefreshAttacher(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;)V
    .locals 1
    .param p1, "attacher"    # Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    .prologue
    .line 216
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->mPullToRefreshAttacher:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->mPullToRefreshAttacher:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    invoke-virtual {v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->destroy()V

    .line 219
    :cond_0
    iput-object p1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->mPullToRefreshAttacher:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    .line 220
    return-void
.end method

.method public final setRefreshComplete()V
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->ensureAttacher()V

    .line 132
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->mPullToRefreshAttacher:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    invoke-virtual {v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->setRefreshComplete()V

    .line 133
    return-void
.end method

.method public final setRefreshing(Z)V
    .locals 1
    .param p1, "refreshing"    # Z

    .prologue
    .line 112
    invoke-direct {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->ensureAttacher()V

    .line 113
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->mPullToRefreshAttacher:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    invoke-virtual {v0, p1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->setRefreshing(Z)V

    .line 114
    return-void
.end method

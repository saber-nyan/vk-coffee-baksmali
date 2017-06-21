.class Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout$LayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "PullToRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayoutParams"
.end annotation


# instance fields
.field private final mViewDelegateClassName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 286
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 288
    sget-object v1, Lcom/vkcoffee/android/R$styleable;->PullToRefreshView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 289
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .line 290
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout$LayoutParams;->mViewDelegateClassName:Ljava/lang/String;

    .line 291
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 292
    return-void
.end method


# virtual methods
.method getViewDelegateClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout$LayoutParams;->mViewDelegateClassName:Ljava/lang/String;

    return-object v0
.end method

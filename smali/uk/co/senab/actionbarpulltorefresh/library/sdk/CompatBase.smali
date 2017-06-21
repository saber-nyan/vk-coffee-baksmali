.class Luk/co/senab/actionbarpulltorefresh/library/sdk/CompatBase;
.super Ljava/lang/Object;
.source "CompatBase.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 12
    const-wide/16 v0, 0xa

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 13
    return-void
.end method

.method static setAlpha(Landroid/view/View;F)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "alpha"    # F

    .prologue
    .line 9
    return-void
.end method

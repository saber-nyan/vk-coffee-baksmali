.class public Luk/co/senab/actionbarpulltorefresh/library/sdk/Compat;
.super Ljava/lang/Object;
.source "Compat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 18
    invoke-static {p0, p1}, Luk/co/senab/actionbarpulltorefresh/library/sdk/CompatV16;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 24
    :goto_0
    return-void

    .line 19
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 20
    invoke-static {p0, p1}, Luk/co/senab/actionbarpulltorefresh/library/sdk/CompatV11;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 22
    :cond_1
    invoke-static {p0, p1}, Luk/co/senab/actionbarpulltorefresh/library/sdk/CompatBase;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static setAlpha(Landroid/view/View;F)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "alpha"    # F

    .prologue
    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 10
    invoke-static {p0, p1}, Luk/co/senab/actionbarpulltorefresh/library/sdk/CompatV11;->setAlpha(Landroid/view/View;F)V

    .line 14
    :goto_0
    return-void

    .line 12
    :cond_0
    invoke-static {p0, p1}, Luk/co/senab/actionbarpulltorefresh/library/sdk/CompatBase;->setAlpha(Landroid/view/View;F)V

    goto :goto_0
.end method

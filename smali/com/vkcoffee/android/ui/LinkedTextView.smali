.class public Lcom/vkcoffee/android/ui/LinkedTextView;
.super Landroid/widget/TextView;
.source "LinkedTextView.java"


# instance fields
.field private delegate:Lcom/vkcoffee/android/ui/ClickableLinksDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 11
    new-instance v0, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/LinkedTextView;->delegate:Lcom/vkcoffee/android/ui/ClickableLinksDelegate;

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    new-instance v0, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/LinkedTextView;->delegate:Lcom/vkcoffee/android/ui/ClickableLinksDelegate;

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 11
    new-instance v0, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/LinkedTextView;->delegate:Lcom/vkcoffee/android/ui/ClickableLinksDelegate;

    .line 23
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 35
    iget-object v0, p0, Lcom/vkcoffee/android/ui/LinkedTextView;->delegate:Lcom/vkcoffee/android/ui/ClickableLinksDelegate;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;->onDraw(Landroid/graphics/Canvas;)V

    .line 36
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/vkcoffee/android/ui/LinkedTextView;->delegate:Lcom/vkcoffee/android/ui/ClickableLinksDelegate;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCanShowMessageOptions(Z)V
    .locals 1
    .param p1, "canShowMessageOptions"    # Z

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vkcoffee/android/ui/LinkedTextView;->delegate:Lcom/vkcoffee/android/ui/ClickableLinksDelegate;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;->setCanShowMessageOptions(Z)V

    .line 27
    return-void
.end method

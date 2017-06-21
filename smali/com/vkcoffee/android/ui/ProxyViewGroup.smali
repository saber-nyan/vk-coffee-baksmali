.class public Lcom/vkcoffee/android/ui/ProxyViewGroup;
.super Landroid/view/ViewGroup;
.source "ProxyViewGroup.java"


# instance fields
.field private delegate:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "d"    # Landroid/view/ViewGroup;

    .prologue
    .line 32
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 33
    iput-object p1, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    .line 34
    return-void
.end method

.method public static getChildMeasureSpec(III)I
    .locals 1
    .param p0, "spec"    # I
    .param p1, "padding"    # I
    .param p2, "childDimension"    # I

    .prologue
    .line 488
    invoke-static {p0, p1, p2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    return v0
.end method


# virtual methods
.method public addChildrenForAccessibility(Ljava/util/ArrayList;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, "childrenForAccessibility":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    .line 217
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    .line 135
    return-void
.end method

.method public addStatesFromChildren()Z
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->addStatesFromChildren()Z

    move-result v0

    return v0
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addTouchables(Ljava/util/ArrayList;)V

    .line 150
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 295
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 299
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 300
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 304
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 305
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 315
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 309
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    return-void
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 175
    return-void
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 538
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->childDrawableStateChanged(Landroid/view/View;)V

    .line 539
    return-void
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 105
    return-void
.end method

.method public clearDisappearingChildren()V
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearDisappearingChildren()V

    .line 494
    return-void
.end method

.method public clearFocus()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearFocus()V

    .line 110
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 165
    return-void
.end method

.method public dispatchDisplayHint(I)V
    .locals 1
    .param p1, "hint"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->dispatchDisplayHint(I)V

    .line 155
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchSetActivated(Z)V
    .locals 1
    .param p1, "activated"    # Z

    .prologue
    .line 289
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->dispatchSetActivated(Z)V

    .line 290
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 1
    .param p1, "selected"    # Z

    .prologue
    .line 284
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->dispatchSetSelected(Z)V

    .line 285
    return-void
.end method

.method public dispatchSystemUiVisibilityChanged(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 190
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->dispatchSystemUiVisibilityChanged(I)V

    .line 191
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 144
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->dispatchWindowFocusChanged(Z)V

    .line 145
    return-void
.end method

.method public dispatchWindowSystemUiVisiblityChanged(I)V
    .locals 1
    .param p1, "visible"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->dispatchWindowSystemUiVisiblityChanged(I)V

    .line 186
    return-void
.end method

.method public dispatchWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 159
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->dispatchWindowVisibilityChanged(I)V

    .line 160
    return-void
.end method

.method public endViewTransition(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 503
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 504
    return-void
.end method

.method public findFocus()Landroid/view/View;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V
    .locals 1
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "outViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewGroup;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 140
    return-void
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 55
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 1
    .param p1, "region"    # Landroid/graphics/Region;

    .prologue
    .line 508
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    return v0
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 484
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "r"    # Landroid/graphics/Rect;
    .param p3, "offset"    # Landroid/graphics/Point;

    .prologue
    .line 394
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewGroup;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v0

    return v0
.end method

.method public getClipChildren()Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v0

    return v0
.end method

.method public getDescendantFocusability()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x20000
                to = "FOCUS_BEFORE_DESCENDANTS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x40000
                to = "FOCUS_AFTER_DESCENDANTS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x60000
                to = "FOCUS_BLOCK_DESCENDANTS"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    return v0
.end method

.method public getFocusedChild()Landroid/view/View;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutAnimation()Landroid/view/animation/LayoutAnimationController;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutAnimation()Landroid/view/animation/LayoutAnimationController;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutAnimationListener()Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutAnimationListener()Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutMode()I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 458
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutMode()I

    move-result v0

    return v0
.end method

.method public getLayoutTransition()Landroid/animation/LayoutTransition;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    return-object v0
.end method

.method public getOverlay()Landroid/view/ViewGroupOverlay;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 263
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOverlay()Landroid/view/ViewOverlay;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ProxyViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    return-object v0
.end method

.method public getPersistentDrawingCache()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "ANIMATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "SCROLLING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "ALL"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 447
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPersistentDrawingCache()I

    move-result v0

    return v0
.end method

.method public hasFocus()Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    return v0
.end method

.method public hasFocusable()Z
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasFocusable()Z

    move-result v0

    return v0
.end method

.method public indexOfChild(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 474
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 1
    .param p1, "location"    # [I
    .param p2, "dirty"    # Landroid/graphics/Rect;

    .prologue
    .line 379
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public isAlwaysDrawnWithCacheEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 436
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAlwaysDrawnWithCacheEnabled()Z

    move-result v0

    return v0
.end method

.method public isAnimationCacheEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 425
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAnimationCacheEnabled()Z

    move-result v0

    return v0
.end method

.method public isMotionEventSplittingEnabled()Z
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isMotionEventSplittingEnabled()Z

    move-result v0

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->jumpDrawablesToCurrentState()V

    .line 524
    return-void
.end method

.method public notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "source"    # Landroid/view/View;
    .param p3, "changeType"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewGroup;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V

    .line 258
    return-void
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 400
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public recomputeViewAttributes(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->recomputeViewAttributes(Landroid/view/View;)V

    .line 170
    return-void
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 365
    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 370
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 329
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 330
    return-void
.end method

.method public removeViewAt(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 344
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 345
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 334
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 335
    return-void
.end method

.method public removeViews(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 349
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->removeViews(II)V

    .line 350
    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 339
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInLayout(II)V

    .line 340
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 50
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 74
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 241
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 242
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public requestTransparentRegion(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 513
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->requestTransparentRegion(Landroid/view/View;)V

    .line 514
    return-void
.end method

.method public scheduleLayoutAnimation()V
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->scheduleLayoutAnimation()V

    .line 410
    return-void
.end method

.method public setAddStatesFromChildren(Z)V
    .locals 1
    .param p1, "addsStates"    # Z

    .prologue
    .line 528
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setAddStatesFromChildren(Z)V

    .line 529
    return-void
.end method

.method public setAlwaysDrawnWithCacheEnabled(Z)V
    .locals 1
    .param p1, "always"    # Z

    .prologue
    .line 441
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 442
    return-void
.end method

.method public setAnimationCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 430
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setAnimationCacheEnabled(Z)V

    .line 431
    return-void
.end method

.method public setClipChildren(Z)V
    .locals 1
    .param p1, "clipChildren"    # Z

    .prologue
    .line 274
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 275
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 1
    .param p1, "clipToPadding"    # Z

    .prologue
    .line 279
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 280
    return-void
.end method

.method public setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V
    .locals 1
    .param p1, "controller"    # Landroid/view/animation/LayoutAnimationController;

    .prologue
    .line 414
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 415
    return-void
.end method

.method public setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 1
    .param p1, "animationListener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 543
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 544
    return-void
.end method

.method public setLayoutMode(I)V
    .locals 1
    .param p1, "layoutMode"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 464
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutMode(I)V

    .line 465
    return-void
.end method

.method public setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .locals 1
    .param p1, "transition"    # Landroid/animation/LayoutTransition;

    .prologue
    .line 354
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 355
    return-void
.end method

.method public setMotionEventSplittingEnabled(Z)V
    .locals 1
    .param p1, "split"    # Z

    .prologue
    .line 231
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 232
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .prologue
    .line 324
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 325
    return-void
.end method

.method public setPersistentDrawingCache(I)V
    .locals 1
    .param p1, "drawingCacheToKeep"    # I

    .prologue
    .line 452
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setPersistentDrawingCache(I)V

    .line 453
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result v0

    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public startLayoutAnimation()V
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->startLayoutAnimation()V

    .line 405
    return-void
.end method

.method public startViewTransition(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 498
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 499
    return-void
.end method

.method public updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 319
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProxyViewGroup;->delegate:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    return-void
.end method

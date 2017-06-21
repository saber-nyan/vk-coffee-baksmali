.class public abstract Lcom/vkcoffee/android/gifs/VKWindow;
.super Ljava/lang/Object;
.source "VKWindow.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field final mActivity:Landroid/app/Activity;

.field mAttached:Z

.field mFinished:Z

.field final mRootView:Landroid/view/View;

.field final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "layout"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v0, p0, Lcom/vkcoffee/android/gifs/VKWindow;->mAttached:Z

    .line 25
    iput-boolean v0, p0, Lcom/vkcoffee/android/gifs/VKWindow;->mFinished:Z

    .line 28
    iput-object p1, p0, Lcom/vkcoffee/android/gifs/VKWindow;->mActivity:Landroid/app/Activity;

    .line 29
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/gifs/VKWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 30
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/gifs/VKWindow;->mRootView:Landroid/view/View;

    .line 31
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/VKWindow;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 32
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/VKWindow;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 33
    return-void
.end method


# virtual methods
.method public final $(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/VKWindow;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public finish()V
    .locals 4
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 50
    iget-boolean v2, p0, Lcom/vkcoffee/android/gifs/VKWindow;->mAttached:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/vkcoffee/android/gifs/VKWindow;->mFinished:Z

    if-eqz v2, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/vkcoffee/android/gifs/VKWindow;->mFinished:Z

    .line 54
    invoke-virtual {p0}, Lcom/vkcoffee/android/gifs/VKWindow;->onViewDestroyed()V

    .line 56
    :try_start_0
    iget-object v2, p0, Lcom/vkcoffee/android/gifs/VKWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/vkcoffee/android/gifs/VKWindow;->mRootView:Landroid/view/View;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "VKWindow"

    const-string/jumbo v3, "finish()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    :try_start_1
    iget-object v2, p0, Lcom/vkcoffee/android/gifs/VKWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/vkcoffee/android/gifs/VKWindow;->mRootView:Landroid/view/View;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 61
    :catch_1
    move-exception v1

    .line 62
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/VKWindow;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public onCreateWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 78
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    return-object v0
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 91
    invoke-virtual {p0, p2, p3}, Lcom/vkcoffee/android/gifs/VKWindow;->onKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    .line 93
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/vkcoffee/android/gifs/VKWindow;->finish()V

    .line 100
    :cond_0
    :goto_0
    return v0

    .line 98
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/gifs/VKWindow;->mAttached:Z

    .line 110
    return-void
.end method

.method public onViewCreated(Landroid/view/View;)V
    .locals 0
    .param p1, "root"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 70
    return-void
.end method

.method public onViewDestroyed()V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 75
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/gifs/VKWindow;->mAttached:Z

    .line 115
    return-void
.end method

.method public show()V
    .locals 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/VKWindow;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/gifs/VKWindow;->onViewCreated(Landroid/view/View;)V

    .line 38
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/VKWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/vkcoffee/android/gifs/VKWindow;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/vkcoffee/android/gifs/VKWindow;->onCreateWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    return-void
.end method

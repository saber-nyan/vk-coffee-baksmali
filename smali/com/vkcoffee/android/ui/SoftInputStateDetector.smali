.class public abstract Lcom/vkcoffee/android/ui/SoftInputStateDetector;
.super Ljava/lang/Object;
.source "SoftInputStateDetector.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field private activity:Landroid/app/Activity;

.field private lastHeight:I

.field private lastState:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput v0, p0, Lcom/vkcoffee/android/ui/SoftInputStateDetector;->lastHeight:I

    .line 20
    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/SoftInputStateDetector;->lastState:Z

    .line 23
    iput-object p1, p0, Lcom/vkcoffee/android/ui/SoftInputStateDetector;->activity:Landroid/app/Activity;

    .line 24
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/vkcoffee/android/ui/SoftInputStateDetector;->lastHeight:I

    return v0
.end method

.method public getSoftInputHeight()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 68
    iget v0, p0, Lcom/vkcoffee/android/ui/SoftInputStateDetector;->lastHeight:I

    if-lez v0, :cond_0

    .line 69
    iget v0, p0, Lcom/vkcoffee/android/ui/SoftInputStateDetector;->lastHeight:I

    .line 71
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SoftInputStateDetector;->activity:Landroid/app/Activity;

    const-string/jumbo v1, "emoji"

    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "kbd_height"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/SoftInputStateDetector;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/SoftInputStateDetector;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/SoftInputStateDetector;->lastState:Z

    return v0
.end method

.method public onContentViewResize(IIII)V
    .locals 10
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v9, 0x42c80000    # 100.0f

    .line 35
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 36
    .local v1, "rect":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/vkcoffee/android/ui/SoftInputStateDetector;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 37
    const-string/jumbo v4, "vk"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Visible rect="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 40
    .local v2, "sbH":I
    iget-object v4, p0, Lcom/vkcoffee/android/ui/SoftInputStateDetector;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 41
    .local v3, "scrH":I
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x14

    if-lt v4, v7, :cond_0

    .line 42
    iget-object v4, p0, Lcom/vkcoffee/android/ui/SoftInputStateDetector;->activity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/vkcoffee/android/ViewUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v4

    sub-int/2addr v3, v4

    .line 47
    :cond_0
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v3, v4

    .line 49
    .local v0, "diff":I
    iput v0, p0, Lcom/vkcoffee/android/ui/SoftInputStateDetector;->lastHeight:I

    .line 50
    invoke-static {v9}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v4

    if-le v0, v4, :cond_2

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/vkcoffee/android/ui/SoftInputStateDetector;->lastState:Z

    .line 51
    invoke-static {v9}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v4

    if-le v0, v4, :cond_1

    .line 52
    iget-object v4, p0, Lcom/vkcoffee/android/ui/SoftInputStateDetector;->activity:Landroid/app/Activity;

    const-string/jumbo v7, "emoji"

    invoke-virtual {v4, v7, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "kbd_height"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vkcoffee/android/ui/SoftInputStateDetector;->activity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vkcoffee/android/ui/SoftInputStateDetector;->activity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 55
    :cond_1
    invoke-static {v9}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v4

    if-le v0, v4, :cond_3

    :goto_1
    invoke-virtual {p0, v5, v0}, Lcom/vkcoffee/android/ui/SoftInputStateDetector;->onKeyboardStateChanged(ZI)V

    .line 56
    return-void

    :cond_2
    move v4, v6

    .line 50
    goto :goto_0

    :cond_3
    move v5, v6

    .line 55
    goto :goto_1
.end method

.method public abstract onKeyboardStateChanged(ZI)V
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 76
    sub-int v0, p4, p2

    sub-int v1, p5, p3

    sub-int v2, p8, p6

    sub-int v3, p9, p7

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/vkcoffee/android/ui/SoftInputStateDetector;->onContentViewResize(IIII)V

    .line 77
    return-void
.end method

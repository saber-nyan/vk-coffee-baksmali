.class public Lcom/fourmob/datetimepicker/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDaysInMonth(II)I
    .locals 2
    .param p0, "month"    # I
    .param p1, "year"    # I

    .prologue
    .line 14
    packed-switch p0, :pswitch_data_0

    .line 16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid Month"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :pswitch_0
    const/16 v0, 0x1f

    .line 33
    :goto_0
    return v0

    .line 29
    :pswitch_1
    const/16 v0, 0x1e

    goto :goto_0

    .line 31
    :pswitch_2
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    .line 32
    const/16 v0, 0x1d

    goto :goto_0

    .line 33
    :cond_0
    const/16 v0, 0x1c

    goto :goto_0

    .line 14
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getPulseAnimator(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;
    .locals 12
    .param p0, "view"    # Landroid/view/View;
    .param p1, "animVal1"    # F
    .param p2, "animVal2"    # F

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 38
    const/4 v5, 0x0

    invoke-static {v5, v6}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    .line 39
    .local v1, "keyframe1":Landroid/animation/Keyframe;
    const v5, 0x3e8ccccd    # 0.275f

    invoke-static {v5, p1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    .line 40
    .local v2, "keyframe2":Landroid/animation/Keyframe;
    const v5, 0x3f30a3d7    # 0.69f

    invoke-static {v5, p2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    .line 41
    .local v3, "keyframe3":Landroid/animation/Keyframe;
    invoke-static {v6, v6}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    .line 42
    .local v4, "keyframe4":Landroid/animation/Keyframe;
    new-array v5, v10, [Landroid/animation/PropertyValuesHolder;

    const-string/jumbo v6, "scaleX"

    const/4 v7, 0x4

    new-array v7, v7, [Landroid/animation/Keyframe;

    aput-object v1, v7, v8

    aput-object v2, v7, v9

    aput-object v3, v7, v10

    aput-object v4, v7, v11

    .line 43
    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v5, v8

    const-string/jumbo v6, "scaleY"

    const/4 v7, 0x4

    new-array v7, v7, [Landroid/animation/Keyframe;

    aput-object v1, v7, v8

    aput-object v2, v7, v9

    aput-object v3, v7, v10

    aput-object v4, v7, v11

    .line 44
    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v5, v9

    .line 42
    invoke-static {p0, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 45
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v6, 0x220

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 46
    return-object v0
.end method

.method public static isJellybeanOrLater()Z
    .locals 2

    .prologue
    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z
    .locals 2
    .param p0, "accessibilityManager"    # Landroid/view/accessibility/AccessibilityManager;

    .prologue
    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 59
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    .line 61
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static tryAccessibilityAnnounce(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "announcement"    # Ljava/lang/Object;

    .prologue
    .line 55
    return-void
.end method
